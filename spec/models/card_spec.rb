require 'rails_helper'

RSpec.describe Card, type: :model do

  before(:each) do
    group = Group.new(description: 'teste', card_qtd: 0)
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

  context "Card next status" do
    it 'Must change todo to doing status when #nextStatus is called' do
      card = Card.new({name: 'card name', status: 'todo',group_id: 1})
      card.nextStatus()
      expect(card.status).to eql('doing')
    end
    it 'Must change doing to done status when #nextStatus is called' do
      card = Card.new({name: 'card name', status: 'doing',group_id: 1})
      card.nextStatus()
      expect(card.status).to eql('done')
    end
    it 'Must change done to todo when #nextStatus is called' do
      card = Card.new({name: 'card name', status: 'done',group_id: 1})
      card.nextStatus()
      expect(card.status).to eql('todo')
    end
  end

  context "Card previous status" do
    it 'Must change todo to done status when #previousStatus is called' do
      card = Card.new({name: 'card name', status: 'todo',group_id: 1})
      card.previousStatus()
      expect(card.status).to eql('done')
    end
    it 'Must change doing to done status when #previousStatus is called' do
      card = Card.new({name: 'card name', status: 'doing',group_id: 1})
      card.previousStatus()
      expect(card.status).to eql('todo')
    end
    it 'Must change done to todo when #previousStatus is called' do
      card = Card.new({name: 'card name', status: 'done',group_id: 1})
      card.previousStatus()
      expect(card.status).to eql('doing')
    end
  end
end
