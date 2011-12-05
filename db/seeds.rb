# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  account = Account.create(:name=>"Param")
  user =account.users.create(:email=>"iparamtech@gmail.com",:password=>"admin123":password_confirmation=>"admin123"
  client = account.clients.create(:name=>"First Client")
  project  = client.projects.create(:
