require 'sinatra'


get '/' do
  @page_title = "Home"
  erb :index
end
