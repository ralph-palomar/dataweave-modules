%dw 2.0
fun mapBatters(p) = p map (item) -> {
	Batter: {
		Id: item.id,
		Type: item.'type'
	}
}