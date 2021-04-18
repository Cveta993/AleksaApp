class PagesAndIp < ApplicationRecord
    require 'resolv'

    validates :page, presence: true, length: { minimum: 2 }
    #validates :ip, presence: true, length: { in: 7...16 }

    #Checks for valid IP addresses currently there are none in log 
    validates :ip, presence: true, format: { with: Resolv::IPv4::Regex }

end
