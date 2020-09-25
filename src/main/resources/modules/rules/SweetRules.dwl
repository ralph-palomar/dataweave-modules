%dw 2.0
fun filterBatters(p) = p filter (item) -> ['1001', '1003', '1004'] contains item.id

fun filterToppings(p) = p filter (item) -> ['Glazed', 'Chocolate', 'Maple'] contains item.'type'