require 'rails_helper'

RSpec.describe "user_areas/edit", type: :view do
  before(:each) do
    @user_area = assign(:user_area, UserArea.create!())
  end

  it "renders the edit user_area form" do
    render

    assert_select "form[action=?][method=?]", user_area_path(@user_area), "post" do
    end
  end
end
