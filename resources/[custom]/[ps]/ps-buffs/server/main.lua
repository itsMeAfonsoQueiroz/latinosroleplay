local QBCore = exports['qb-core']:GetCoreObject()
local playerBuffs = {}
local next = next

--- Adds a buff to Player
--- @param citizenID string - Player identifier
--- @param buffName string - Name of the buff
--- @param time number | nil - Optional time to add or how long you want buff to be
--- @return bool
local function AddBuff(sourceID, citizenID, buffName, time)
    local buffData = Config.Buffs[buffName]
    -- Check if we were given a correct buff name
    if buffData == nil then
        return false
    end

    -- If the Player had no buffs at all then add them to the table
    if not playerBuffs[citizenID] then
        playerBuffs[citizenID] = {}
    end

    local maxTime = buffData.maxTime

    -- If the Player didnt already have the buff requested set it to time or maxTime
    if not playerBuffs[citizenID][buffName] then
        local buffTime = maxTime
        if time then
            buffTime = time
        end
        
        playerBuffs[citizenID][buffName] = buffTime
        
        -- Since the Player didnt already have this buff tell the front end to show it
        if buffData.type == 'buff' then
            -- Call client event to send nui to front end to start showing buff
            TriggerClientEvent('hud:client:BuffEffect', sourceID, {
                buffName = buffName,
                display = true,
                iconName = buffData.iconName,
                iconColor = buffData.iconColor,
                progressColor = buffData.progressColor,
                progressValue = (buffTime * 100) / buffData.maxTime,
            })
        else
            -- Call client event to send nui to front end to start showing enhancement
            TriggerClientEvent('hud:client:EnhancementEffect', sourceID, {
                display = true,    
                enhancementName = buffName,
                iconColor = buffData.iconColor
            })
        end

    else
        -- Since the Player already had a buff increase the buff time, but not higher than max buff time
        local newTime = playerBuffs[citizenID][buffName] + time
        
        if newTime > maxTime then
            newTime = maxTime
        end
        
        playerBuffs[citizenID][buffName] = newTime
    end

    return true
end exports('AddBuff', AddBuff)

--- Removes a buff from provided Player
--- @param citizenID string - Player identifier
--- @param buffName string - Name of the buff
--- @return bool - Success of removing the Player buff
local function RemoveBuff(citizenID, buffName)
    local buffData = Config.Buffs[buffName]
    if playerBuffs[citizenID] and playerBuffs[citizenID][buffName] then
        
        playerBuffs[citizenID][buffName] = nil

        local Player = QBCore.Functions.GetPlayerByCitizenId(citizenID)
        local sourceID = nil

        if Player then
            sourceID = Player.PlayerData.source
        end

        -- Check if Player is online
        if sourceID then
            -- Send a nui call to front end to stop showing icon
            if buffData.type == 'buff' then
                -- Call client event to send nui to front end to stop showing buff
                TriggerClientEvent('hud:client:BuffEffect', sourceID, {
                    display = false,
                    buffName = buffName,
                })
            else
                -- Call client event to send nui to front end to stop showing enhancement
                TriggerClientEvent('hud:client:EnhancementEffect', sourceID, {
                    display = false,    
                    enhancementName = buffName,
                })
            end
        end

        -- Check to see if that was the Player's last buff
        -- If so, then remove the Player from the table to ensure we dont loop them
        if next(playerBuffs[citizenID]) == nil then
            playerBuffs[citizenID] = nil
        end

        return true
    end

    return false
end exports('RemoveBuff', RemoveBuff)

--- Method to fetch if Player has buff with name and is not nil
--- @param citizenID string - Player identifier
--- @param buffName string - Name of the buff
--- @return bool
local function HasBuff(citizenID, buffName)
    if playerBuffs[citizenID] then
        return playerBuffs[citizenID][buffName] ~= nil
    end

    return false
end exports('HasBuff', HasBuff)

QBCore.Functions.CreateCallback('buffs:server:fetchBuffs', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player == nil then print("Player not found for source " .. tostring(src)) return end
    local citizenID = Player.PlayerData.citizenid
    cb(playerBuffs[citizenID])
end)

QBCore.Functions.CreateCallback('buffs:server:addBuff', function(source, cb, buffName, time)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player == nil then print("Player not found for source " .. tostring(src)) return end
    local citizenID = Player.PlayerData.citizenid
    cb(AddBuff(source, citizenID, buffName, time))
end)

CreateThread(function()
    local function DecrementBuff(sourceID, citizenID, buffName, currentTime)
        local buffData = Config.Buffs[buffName]
        local updatedTime = currentTime - Config.TickTime

        -- Buff ran out of time we need to remove it from the Player
        if updatedTime <= 0 then
            -- Only need to update buffs since they show progress on client
            if buffData.type == 'buff' then
                -- Check if Player is online
                if sourceID then
                    -- Call client event to send nui to front end, progress at 0
                    TriggerClientEvent('hud:client:BuffEffect', sourceID, {
                        buffName = buffName,
                        progressValue = 0,
                    })
                end
            end
            RemoveBuff(citizenID, buffName)
        else
            playerBuffs[citizenID][buffName] = updatedTime
            -- Only need to update buffs since they show progress on client
            if buffData.type == 'buff' then
                -- Check if Player is online
                if sourceID then
                    -- Call client event to send nui to front end
                    TriggerClientEvent('hud:client:BuffEffect', sourceID, {
                        buffName = buffName,
                        -- Progress value needs to be from 0 - 100
                        progressValue = (updatedTime * 100) / buffData.maxTime,
                    })
                end
            end
        end
    end

    -- Not proud but need to loop through all timers but decrement it
    -- Loop is good as long as we only loop players that have buffs
    -- We ensure that when removing any buff, we check to see if it was the Player's last buff
    -- Then we remove that Player from our table to ensure we dont loop them
    while true do
        for citizenID, buffTable in pairs(playerBuffs) do
            local Player = QBCore.Functions.GetPlayerByCitizenId(citizenID)
            if Player == nil then print("Player not found for source " .. tostring(src)) return end
            local sourceID = nil
            
            if Player then
                sourceID = Player.PlayerData.source
            end
            
            for buffName, currentTime in pairs(buffTable) do
                DecrementBuff(sourceID, citizenID, buffName, currentTime)
            end
        end

        Wait(Config.TickTime)
    end
end)
