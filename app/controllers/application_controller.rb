require './config/environment'
require '.app/models/tweet'
 
class ApplicationController < Sinatra::Base
 
 configure do 
     set :public_folder, 'public'
     set :views, 'app/views' 
 end 
 
 get '/' do 
     Tweet.new ("Danilu-Ramirez", "Im hungry.")
     @tweets = Tweets.all 
     erb :index
 end 
 
 end 