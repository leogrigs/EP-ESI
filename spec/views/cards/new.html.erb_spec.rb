require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      name: "MyString",
      description: "MyString",
      status: "MyString",
      group_id: 1
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[name]"

      assert_select "input[name=?]", "card[description]"

      assert_select "input[name=?]", "card[status]"

      assert_select "input[name=?]", "card[group_id]"
    end
  end
end
