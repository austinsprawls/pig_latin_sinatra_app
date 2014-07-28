require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/' do
  erb :index
end

post '/' do
  @word = params[:word]
  @conversion = PigLatin::convert(@word)
  erb :index
end
