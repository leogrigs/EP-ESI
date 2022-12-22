require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        name: "Name",
        description: "Description",
        status: "Status",
        group_id: 2
      ),
      Card.create!(
        name: "Name",
        description: "Description",
        status: "Status",
        group_id: 2
      )
    ])
    assign(:groups, [
      Groups.create!(
        description: "Description",
        card_qtd: 1
      ),
      Groups.create!(
        description: "Description",
        card_qtd: 1
      )
    ])
  end

  # it "renders a list of cards" do
  #   render
  #   assert_select "tr>td", text: "Name".to_s, count: 2
  #   assert_select "tr>td", text: "Description".to_s, count: 2
  #   assert_select "tr>td", text: "Status".to_s, count: 2
  #   assert_select "tr>td", text: 2.to_s, count: 2
  # end
end
