require 'rails_helper'

RSpec.describe "user_areas/index", type: :view do
  before(:each) do
    assign(:user_areas, [
      UserArea.create!(),
      UserArea.create!()
    ])
  end

  it "renders a list of user_areas" do
    render
  end
end
