require "rails_helper"

RSpec.describe PagesAndIp, type: :model do
   #It can be done by just using let and changing one of values when needed
    # let (:log_entry) do
    #     PagesAndIp.new(   
    #         page: ('/home'),
    #        ip: ('192.169.0.1')
    #     )

    it 'has a valid page and ip' do
        log_entry = PagesAndIp.new(
            page: ('/home'),
            ip: ('192.169.0.1')
        )
        expect(log_entry).to be_valid
    end

    it 'invalid result due to ip' do
        log_entry = PagesAndIp.new(
            page: ('/home'),
            ip: ('1.1')
            #ip:('266.266.266.266')
        )
        expect(log_entry).to_not be_valid
    end

    it 'invalid result due to page' do
        log_entry = PagesAndIp.new(
            page: ('L'),
            ip: ('192.169.0.1')
        )
        expect(log_entry).to_not be_valid
    end

    it 'invalid result due to page and ip' do
        log_entry = PagesAndIp.new(
            page: ('L'),
            ip: ('1.1')
            #ip:('266.266.266.266')
        )
        expect(log_entry).to_not be_valid
    end
end
