%dw 2.0
fun mapToppings(p) = p map (item) -> {
	Topping: {
		Id: item.id,
		Type: item.'type'
	}
}