require 'rails_helper'

RSpec.describe CardsHelper, type: :helper do
    context "Card status format" do
        it 'should format todo status of a card' do
            status = 'todo'
            formattedStatus = format_status(status)
            expect(formattedStatus).to eql('To Do')
        end
        it 'should format todo status of a card' do
            status = 'doing'
            formattedStatus = format_status(status)
            expect(formattedStatus).to eql('Doing')
        end
        it 'should format todo status of a card' do
            status = 'done'
            formattedStatus = format_status(status)
            expect(formattedStatus).to eql('Done')
        end
      end
end
