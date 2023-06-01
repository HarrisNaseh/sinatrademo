require 'sinatra'
require 'json'


get '/' do
  a = []
  File.foreach("cake.list") {|line| a.push(line.chomp)}
  a.join("<br>")
  
end
