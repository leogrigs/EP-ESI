require "rails_helper"

RSpec.describe UserAreasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/user_areas").to route_to("user_areas#index")
    end

    it "routes to #new" do
      expect(get: "/user_areas/new").to route_to("user_areas#new")
    end

    it "routes to #show" do
      expect(get: "/user_areas/1").to route_to("user_areas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/user_areas/1/edit").to route_to("user_areas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/user_areas").to route_to("user_areas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/user_areas/1").to route_to("user_areas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/user_areas/1").to route_to("user_areas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/user_areas/1").to route_to("user_areas#destroy", id: "1")
    end
  end
end
