require 'rails_helper'

RSpec.describe MazesController, type: :controller do
    describe "mazes#index" do
      it "should give the logged in user their maze information" do
        maze = FactoryBot.create(:maze)
        get :index
        expect(response).to have_http_status :success
        response_value = ActiveSupport::JSON.decode(@response.body)
        expect(response_value.count).to eq(1)
      end
    end

end
