require "rails_helper"

# Doesn't work
RSpec.describe PagesAndIpsController, :type => :controller do
  describe "GET index" do
    let (:log_entry) do
      PagesAndIp.create(   
          page: ('/home'),
          ip: ('192.169.0.1')
      )
    end

    it 'unique pages has value' do
      get :index
      expect(assigns(:pages_and_ips).to eq('/home')
    end
  end
end