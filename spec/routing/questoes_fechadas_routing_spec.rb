require "rails_helper"

RSpec.describe QuestoesFechadasController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(:get => "/questoes_fechadas").to route_to("questoes_fechadas#index")
    end

    it "routes to #new" do
      expect(:get => "/questoes_fechadas/new").to route_to("questoes_fechadas#new")
    end

    it "routes to #show" do
      expect(:get => "/questoes_fechadas/1").to route_to("questoes_fechadas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/questoes_fechadas/1/edit").to route_to("questoes_fechadas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/questoes_fechadas").to route_to("questoes_fechadas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/questoes_fechadas/1").to route_to("questoes_fechadas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/questoes_fechadas/1").to route_to("questoes_fechadas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/questoes_fechadas/1").to route_to("questoes_fechadas#destroy", :id => "1")
    end

  end

end
