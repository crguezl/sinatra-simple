require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "hello get!"
  end

  post '/' do
    'hello post!'
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

  get '/:name/?:apelido1?' do |name, apellido|
    "hello #{apellido}, #{name}!"
  end
end
