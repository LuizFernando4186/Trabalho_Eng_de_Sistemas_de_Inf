require "rails_helper"

RSpec.describe ProfessoresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/professores").to route_to("professores#index")
    end

    it "routes to #new" do
      expect(get: "/professores/new").to route_to("professores#new")
    end

    it "routes to #show" do
      expect(get: "/professores/1").to route_to("professores#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/professores/1/edit").to route_to("professores#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/professores").to route_to("professores#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/professores/1").to route_to("professores#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/professores/1").to route_to("professores#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/professores/1").to route_to("professores#destroy", id: "1")
    end
  end
end
