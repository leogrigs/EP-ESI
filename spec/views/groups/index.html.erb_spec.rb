require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        description: "Description",
        card_qtd: "Card Qtd"
      ),
      Group.create!(
        description: "Description",
        card_qtd: "Card Qtd"
      )
    ])
  end

  # it "renders a list of groups" do
  #   render
  #   assert_select "tr>td", text: "Description".to_s, count: 2
  #   assert_select "tr>td", text: "Card Qtd".to_s, count: 2
  # end
end
