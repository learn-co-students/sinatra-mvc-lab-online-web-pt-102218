require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base
  # include PigLatinizer

  get '/' do
    @app = PigLatinizer.new
    @user_phrase = @app.piglatinize("I love programming")
    erb :user_input
  end

  post '/piglatinize' do

  @user_phrase = PigLatinizer.new
  @output = @user_phrase.piglatinize(params["user_phrase"])

     erb :user_output
  end
end
