require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :'/user_input'
  end

  post "/piglatinize" do
    @latin_text = PigLatinizer.new.piglatinize(params[:user_phrase])
    # @latin_text = params[:user_input]
    erb :'/piglatinize'
  end
end
