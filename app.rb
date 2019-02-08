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
    binding.pry
  end
end
