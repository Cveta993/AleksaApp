# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#Make sure your App folder is on Desktops

unless PagesAndIp.any?
    lines = File.readlines(File.expand_path('~/Desktop/CapaProjekti/AleksaApp/public/aleksa.log')) 
    #you just need to remove /CapaProjekti from line above to make sure seed is working as intended
    lines.each_with_index do |line, idx|
        path    = line.scan(/[^\s]+/).first
        address    = line.scan(/\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/).first
        puts "#{path} #{address}"
        PagesAndIp.create(page: path, ip: address)
    end
end