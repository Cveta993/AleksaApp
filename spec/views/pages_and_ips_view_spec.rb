describe "GET pages_and_ips#index" do
    let(:pages_and_ip) do
        stub_model PagesAndIp, :id => 1, page: '/home', ip: '162.192.0.1'
    end

    #it "should show @unique_pages /home" do
        #expect(assigns(:unique_pages).to eq('/home')   
    #end

    it "should render pages_and_ips#index template" do
    end
end
  