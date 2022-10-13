require 'rails_helper'

RSpec.describe Card, type: :model do

  before(:each) do
    group = Group.new(description: 'teste')
    group.save
  end

  context "Card validation" do
    it 'Card is valid?' do
      card = Card.new({name: 'card name', group_id: 1})
      expect(card.valid?).to be_truthy
    end
    it 'Card is invalid?' do
      card = Card.new({description: 'card name'})
      expect(card.valid?).to be_falsey
    end
  end
end
