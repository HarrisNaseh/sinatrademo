require 'sinatra'
require 'json'


get '/' do
  a = []
  File.foreach("cake.list") {|line| a.push(line.chomp)}
  a.join("<br>")#joins all the array objects into a single string with <br> in between each
end

get '/cakes.json' do
  a = []
  File.foreach("cake.list") {|line| a.push(line.chomp)}
  return a.to_json# returns a single json string with all the cakes
end