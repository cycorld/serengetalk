# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@data_hash = Hash.new
file = File.read(Rails.root.to_s+'/db/user.json')
@data_hash = JSON.parse(file)

for x in 0..537
   u = User.new(
              :email => @data_hash["user_list"][x]["email"].to_s,
              :name => @data_hash["user_list"][x]["name"].to_s,
              :encrypted_password => @data_hash["user_list"][x]["password"].to_s,
              :univ => @data_hash["user_list"][x]["school"].to_s       
               )
    u.save!(:validate => false)
end
