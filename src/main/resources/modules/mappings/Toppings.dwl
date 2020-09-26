%dw 2.0
fun mapToppings(p: Array) = p map (item) -> {
	Topping: {
		Id: item.id,
		Type: item.'type'
	}
}