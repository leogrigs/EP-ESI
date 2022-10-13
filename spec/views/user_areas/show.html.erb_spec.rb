require 'rails_helper'

RSpec.describe "user_areas/show", type: :view do
  before(:each) do
    @user_area = assign(:user_area, UserArea.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
