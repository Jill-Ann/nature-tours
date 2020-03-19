require 'sequel'

DB = Sequel.connect('sqlite://db/sinatra.db')


# sequel gem allows you to treat database as if it were a hash.
