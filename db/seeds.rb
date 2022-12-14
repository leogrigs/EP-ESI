# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
    # Create groups
    g = Group.new({description: "Group #{i}", card_qtd: 1})
    g.save
    
    # Create cards
    c = Card.new({name: "Card #{i}", description: "This is description for card #{i}", status: "todo", group_id: i+1})
    c.save
end