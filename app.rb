require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    converter = PigLatinizer.new
    @pig_latin = converter.to_pig_latin(params["user_phrase"])
    erb :pig_latin
  end

end
