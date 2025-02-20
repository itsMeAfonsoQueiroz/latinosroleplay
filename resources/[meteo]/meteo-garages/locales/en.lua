local Translations = {
    error = {
        no_vehicles = 'Não há veículos nesta localização!',
        not_depot = 'O teu veículo não está no depósito',
        not_owned = 'Este veículo não pode ser armazenado',
        not_correct_type = 'Não podes armazenar este tipo de veículo aqui',
        not_enough = 'Dinheiro insuficiente',
        no_garage = 'Nenhum',
        vehicle_occupied = 'Não podes armazenar este veículo porque não está vazio',
        vehicle_not_tracked = 'Não foi possível localizar o veículo',
        no_spawn = 'Área demasiado lotada'
    },
    success = {
        vehicle_parked = 'Veículo armazenado',
        vehicle_tracked = 'Veículo localizado',
    },
    status = {
        out = 'Fora',
        garaged = 'Armazenado',
        impound = 'Apreendido pela polícia',
        house = 'Casa',
    },
    info = {
        car_e = 'Garagem',
        sea_e = 'Armazém de barcos',
        air_e = 'Hangar',
        rig_e = 'Parque de plataforma',
        depot_e = 'Apreendidos',
        house_garage = 'Garagem da casa',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

