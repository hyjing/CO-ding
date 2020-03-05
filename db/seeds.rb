# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
more_codes = [
  {:name => 'hw1', :author => 'a', :code => 'java',
    :create_date => '25-Nov-2017'},
  {:name => 'hw2', :author => 'b', :code => 'python',
    :create_date => '21-Jul-2019'},
  {:name => 'hw3', :author => 'c', :code => 'c',
    :create_date => '25-Nov-2019'},
  {:name => 'hw4', :author => 'd', :code => 'java',
    :create_date => '25-Jan-2020'}
]

more_codes.each do |code|
  Code.create!(code)
end
