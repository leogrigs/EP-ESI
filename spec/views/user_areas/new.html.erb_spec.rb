require 'rails_helper'

RSpec.describe "user_areas/new", type: :view do
  before(:each) do
    assign(:user_area, UserArea.new())
  end

  it "renders new user_area form" do
    render

    assert_select "form[action=?][method=?]", user_areas_path, "post" do
    end
  end
end
