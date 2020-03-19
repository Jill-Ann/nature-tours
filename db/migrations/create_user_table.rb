require 'sequel'

DB = Sequel.sqlite('../sinatra.db')


DB.create_table :users do
  primary_key :id
  String :name
  String :email
  String :text
end
