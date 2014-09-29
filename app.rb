require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "hello get!"
  end

  post '/' do
    'hello post!'
  end

  post '/chuchu' do
    puts params[:a]
    puts params[:b]
    'hello chuchu!'
  end

  put '/' do
    'hello put!'
  end

  delete '/' do
    'hello delete!'
  end

  get '/:name' do |name|
    "hello #{name}!"
  end

  get '/:name/?:apellido?' do |name, apellido|
    "hello #{apellido}, #{name}!"
  end
end
