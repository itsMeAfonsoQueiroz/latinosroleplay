local Translations = {
    categories = {
        custom = "Personalizado",
        openwheel = "Rodas Abertas",
        sedans = "Sedans",
        sportsclassics = "Clássicos Desportivos",
        commercial = "Comercial",
        offroad = "Todo-o-Terreno",
        cycles = "Bicicletas",
        boats = "Barcos",
        military = "Militar",
        motorcycles = "Motociclos",
        industrial = "Industrial",
        helicopters = "Helicópteros",
        vans = "Carrinhas",
        super = "Super Desportivos",
        sports = "Desportivos",
        coupes = "Cupês",
        emergency = "Emergência",
        muscle = "Muscle Cars",
        compacts = "Compactos",
        utility = "Utilitário",
        suvs = "SUVs",
        service = "Serviços",
        planes = "Aviões"
    },
    commands = {
        add_vehicle_stock = "Adicionar Stock ao Veículo"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

