require 'rails_helper'

RSpec.describe "MonitoringSchedules", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/monitoring_schedules/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/monitoring_schedules/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/monitoring_schedules/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/monitoring_schedules/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/monitoring_schedules/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/monitoring_schedules/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/monitoring_schedules/show"
      expect(response).to have_http_status(:success)
    end
  end

end
