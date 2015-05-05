def deal(card_array)
    poker_hand = []
    card_array = card_array.shuffle
    poker_hand = card_array.first(5)
    return poker_hand
end

card_array = ["K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2, "A"]

puts deal(card_array)