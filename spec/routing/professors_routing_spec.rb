require "rails_helper"

RSpec.describe ProfessorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/professors").to route_to("professors#index")
    end

    it "routes to #new" do
      expect(get: "/professors/new").to route_to("professors#new")
    end

    it "routes to #show" do
      expect(get: "/professors/1").to route_to("professors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/professors/1/edit").to route_to("professors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/professors").to route_to("professors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/professors/1").to route_to("professors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/professors/1").to route_to("professors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/professors/1").to route_to("professors#destroy", id: "1")
    end
  end
end
