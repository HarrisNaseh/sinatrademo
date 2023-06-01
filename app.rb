require 'sinatra'
require 'json'
require 'sinatra/json'
require 'sinatra/activerecord'


get '/' do
  a = []
  File.foreach("cake.list") {|line| a.push(line.chomp)}
  @cakes = a
  erb :index
end

get '/cakes.json' do
  a = []
  File.foreach("cake.list") {|line| a.push(line.chomp)}
  return a.to_json# returns a single json string with all the cakes
end

