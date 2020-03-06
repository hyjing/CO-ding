# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

more_folds = [
  {:fold_name => 'fold1', :fold_author => 'fauthor1',
    :fold_create_date => '25-Nov-2017'},
  {:fold_name => 'fold2', :fold_author => 'fauthor2',
    :fold_create_date => '21-Jul-2019'}
]

more_folds.each do |fold|
  Fold.create!(fold)
end


more_codes = [
  {:name => 'hw1', :author => 'a', :code => 'java',
    :create_date => '25-Nov-2017', :parent => 1},
  {:name => 'hw2', :author => 'b', :code => 'python',
    :create_date => '21-Jul-2019', :parent => 1},
  {:name => 'hw3', :author => 'c', :code => 'c',
    :create_date => '25-Nov-2019', :parent => 2},
  {:name => 'hw4', :author => 'd', :code => 'java',
    :create_date => '25-Jan-2020', :parent => 2}
]

more_codes.each do |code|
  Code.create!(code)
end
