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

RSpec.describe "/user_areas", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # UserArea. As you add validations to UserArea, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      UserArea.create! valid_attributes
      get user_areas_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      user_area = UserArea.create! valid_attributes
      get user_area_url(user_area)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_user_area_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      user_area = UserArea.create! valid_attributes
      get edit_user_area_url(user_area)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UserArea" do
        expect {
          post user_areas_url, params: { user_area: valid_attributes }
        }.to change(UserArea, :count).by(1)
      end

      it "redirects to the created user_area" do
        post user_areas_url, params: { user_area: valid_attributes }
        expect(response).to redirect_to(user_area_url(UserArea.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UserArea" do
        expect {
          post user_areas_url, params: { user_area: invalid_attributes }
        }.to change(UserArea, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post user_areas_url, params: { user_area: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_area" do
        user_area = UserArea.create! valid_attributes
        patch user_area_url(user_area), params: { user_area: new_attributes }
        user_area.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the user_area" do
        user_area = UserArea.create! valid_attributes
        patch user_area_url(user_area), params: { user_area: new_attributes }
        user_area.reload
        expect(response).to redirect_to(user_area_url(user_area))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        user_area = UserArea.create! valid_attributes
        patch user_area_url(user_area), params: { user_area: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested user_area" do
      user_area = UserArea.create! valid_attributes
      expect {
        delete user_area_url(user_area)
      }.to change(UserArea, :count).by(-1)
    end

    it "redirects to the user_areas list" do
      user_area = UserArea.create! valid_attributes
      delete user_area_url(user_area)
      expect(response).to redirect_to(user_areas_url)
    end
  end
end