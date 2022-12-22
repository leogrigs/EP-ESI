require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      name: "Name",
      description: "Description",
      status: "todo",
      group_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/To Do/)
    expect(rendered).to match(/Edit this card/)
    expect(rendered).to match(/Back to cards/)
    expect(rendered).to match(/Destroy this card/)
  end
end
