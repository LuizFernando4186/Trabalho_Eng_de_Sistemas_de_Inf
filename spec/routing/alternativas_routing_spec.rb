require "rails_helper"

RSpec.describe AlternativasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alternativas").to route_to("alternativas#index")
    end

    it "routes to #new" do
      expect(get: "/alternativas/new").to route_to("alternativas#new")
    end

    it "routes to #show" do
      expect(get: "/alternativas/1").to route_to("alternativas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/alternativas/1/edit").to route_to("alternativas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alternativas").to route_to("alternativas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alternativas/1").to route_to("alternativas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alternativas/1").to route_to("alternativas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alternativas/1").to route_to("alternativas#destroy", id: "1")
    end
  end
end
