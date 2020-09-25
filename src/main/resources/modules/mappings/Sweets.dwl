%dw 2.0
import * from modules::mappings::Batters
import * from modules::mappings::Toppings
import * from modules::rules::SweetRules
import * from modules::translations::SweetTranslations
fun mapSweets(p) = p map (item) -> {
	Sweet: {
		Id: item.id,
		Name: sweetNames[item.name] default 'Unknown',
		PPU: item.ppu,
		Type: item.'type',
		Batters: {
			(mapBatters(filterBatters(item.batters.batter)))
		},
		Toppings: {
			(mapToppings(filterToppings(item.topping)))
		}
	}
}