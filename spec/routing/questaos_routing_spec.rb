require "rails_helper"

RSpec.describe QuestaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/questaos").to route_to("questaos#index")
    end

    it "routes to #new" do
      expect(get: "/questaos/new").to route_to("questaos#new")
    end

    it "routes to #show" do
      expect(get: "/questaos/1").to route_to("questaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/questaos/1/edit").to route_to("questaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/questaos").to route_to("questaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/questaos/1").to route_to("questaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/questaos/1").to route_to("questaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/questaos/1").to route_to("questaos#destroy", id: "1")
    end
  end
end
