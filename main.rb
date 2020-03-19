require 'sinatra'
require 'erb'


def store_name(filename, string)
  File.open(filename, "a+") do |file|
    file.puts(string)
  end
end


get '/' do
  @name =params["fname"]
  erb :index
end

post '/' do
  @name =params["fname"]
  store_name("names.txt", @name)
  #How do I get it to store the last name too?
  erb :thanks
end
