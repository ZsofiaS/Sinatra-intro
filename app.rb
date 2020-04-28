require "sinatra"

set :session_secret, 'super secret'

get "/" do
  "Hello world!"
end

get "/secret" do
  "This is a secret!"
end

get "/home" do
  "Welcome"
end

get "/contact" do
  "Contact me"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/cat-form" do
  p params
  erb(:cat_form)
end

post "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end
