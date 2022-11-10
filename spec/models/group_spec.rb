require 'rails_helper'

RSpec.describe Group, type: :model do
    context 'validation tests' do
        it 'ensures description presence' do
            group = Group.new(card_qtd: '0').save
            expect(group).to eql(false)
        end
    
        it 'ensures card_qtd presence' do
            group = Group.new(description:'description').save
            expect(group).to eql(false)
        end

        it 'should save successfuly' do
            group = Group.new(description:'description', card_qtd: '0').save
            expect(group).to eql(true)
        end
    end
end
