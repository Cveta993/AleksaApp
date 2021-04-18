require "rails_helper"

RSpec.describe PagesAndIp, type: :model do
    it 'has a valid page and ip' do
        post = PagesAndIp.new(
            page: ('/home'),
            ip: ('192.169.0.1')
        )

        expect(post).to be_valid
    end

    it 'invalid result due to ip' do
        post = PagesAndIp.new(
            page: ('/home'),
            ip: ('1.1')
        )
        expect(post).to_not be_valid
    end

    it 'invalid result due to page' do
        post = PagesAndIp.new(
            page: ('L'),
            ip: ('192.169')
        )
        expect(post).to_not be_valid
    end

    it 'invalid result due to page and ip' do
        post = PagesAndIp.new(
            page: ('L'),
            ip: ('1.1')
        )
        expect(post).to_not be_valid
    end
end
