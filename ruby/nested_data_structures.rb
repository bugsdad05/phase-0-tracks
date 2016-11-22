top_level_hash = {
	favorite_motorcycle: {
        make: 'BMW',
        models: {
            r_bike: 'R1200RT',
            k_bike: 'K1600GT'
        },
        dealers: [
            "Maxx BMW of NY", 
            "R. Falcone Powersports"
        ]
    },
    favorite_cars: {
        make: 'Audi',
        models: {
            sedan: 'S3',
            coupe: 'TT',
            suv: 'Q7'
        },
        dealers: [
            "Audi Indianapolis", 
            "Tom Wood Audi",
            "Fishers Imports"
        ]
    },
    favorite_boats: {
        make: 'Triton',
        models: {
            fish_and_ski: 'Escape 21',
            bass: '22 TRX',
            salt_water: '260 LTS Pro'
        },
        dealers: [
        	"Denny's Marina",
        	"Ted's Aqua Marine",
        	"Lakeview Marina"
        ]
    }
}

top_level_hash[:favorite_cars][:dealers].push("Audi Bethesda")
top_level_hash[:favorite_boats][:models][:bass].reverse!
top_level_hash[:favorite_motorcycle][:dealers].collect { |x| x + "!" }