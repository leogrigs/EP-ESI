require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/cards", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Card. As you add validations to Card, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {name: 'my card', description: 'this card descript.', status: 'doing', group_id: 1}
  }

  let(:invalid_attributes) {
    {descriptions: 'this card descript.', status: 'todo', group_ids: 1}
  }

  before(:each) do
    group = Group.new(description: 'teste', card_qtd: 0)
    group.save
  end

  describe "GET /index" do
    it "renders a successful response" do
      Card.create! valid_attributes
      get cards_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      card = Card.create! valid_attributes
      get card_url(card)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_card_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      card = Card.create! valid_attributes
      get edit_card_url(card)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Card" do
        expect {
          post cards_url, params: { card: valid_attributes }
        }.to change(Card, :count).by(1)
      end

      it "redirects to the created card" do
        post cards_url, params: { card: valid_attributes }
        expect(response).to redirect_to(card_url(Card.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Card" do
        expect {
          post cards_url, params: { card: invalid_attributes }
        }.to change(Card, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post cards_url, params: { card: invalid_attributes }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {name: 'my card2', description: 'this card descript. 2', status: 'todo', group_id: 1}
      }

      it "updates the requested card" do
        card = Card.create! valid_attributes
        patch card_url(card), params: { card: new_attributes }
        card.reload
        expect(response).to have_http_status(302)
      end

      it "redirects to the card" do
        card = Card.create! valid_attributes
        patch card_url(card), params: { card: new_attributes }
        card.reload
        expect(response).to redirect_to(card_url(card))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        card = Card.create! valid_attributes
        patch card_url(card), params: { card: invalid_attributes }
        expect(response).to have_http_status(302)
      end
    end

    scenario "should fail" do
      card = Card.create! valid_attributes
      visit edit_card_path(card)
      within('form') do
        fill_in 'Name', with: ''
      end
      click_button 'Update Card'
      expect(page).to have_content "Name can't be blank"
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested card" do
      card = Card.create! valid_attributes
      expect {
        delete card_url(card)
      }.to change(Card, :count).by(-1)
    end

    it "redirects to the cards list" do
      card = Card.create! valid_attributes
      delete card_url(card)
      expect(response).to redirect_to(cards_url)
    end
  end

  describe "change card status" do
    it "change card status to next status" do
      card = Card.create! valid_attributes
      put next_status_path(card.id)
      card.reload
      expect(card.status).to eql('done')
    end
    it "change card status to previous status" do
      card = Card.create! valid_attributes
      put previous_status_path(card.id)
      card.reload
      expect(card.status).to eql('todo')
    end
  end

  describe "filter by card status" do
    it "filter by todo status cards" do
      card = Card.create(name: 'card name', group_id: 1, status: 'todo')
      get "/cards/status/#{card.status}"
      expect(response).to have_http_status(200)
    end
    it "filter by doing status cards" do
      card = Card.create! valid_attributes
      get "/cards/status/#{card.status}"
      expect(response).to have_http_status(200)
    end
    it "filter by done status cards" do
      card = Card.create(name: 'card name', group_id: 1, status: 'done')
      get "/cards/status/#{card.status}"
      expect(response).to have_http_status(200)
    end
  end
end
