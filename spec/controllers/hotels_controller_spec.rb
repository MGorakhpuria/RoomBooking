require 'rails_helper'

RSpec.describe HotelsController do
  let!(:company) { FactoryBot.create(:company) }
  let(:user) { FactoryBot.create(:user, email: 'mayank@gmail.com') }
  #let!(:hotel) { FactoryBot.create(:hotel, company: company) }
  
  describe 'GET #index' do
    it 'returns all hotels' do
      hotels = FactoryBot.create_list(:hotel, 5, company: company)
      get :index
      expect(response.status).to eq(200)
    end

    it 'filter all hotel' do
      hotels = FactoryBot.create_list(:hotel, 5, company: company)
      get :index, params: { state: hotels.first.state }

      expect(response.status).to eq(200)
    end
  end

  describe 'GET #show' do
    it 'returns all hotels' do
      hotels = FactoryBot.create_list(:hotel, 5, company: company)
      get :show, params: { id: hotels.first.id }

      expect(response.status).to eq(200)
    end
  end
end
