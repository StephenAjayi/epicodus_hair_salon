require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/client'
require './lib/stylist'
require 'pg'

DB = PG.connect(:dbname => "hair_salon")

get('/') do 
 @stylists = Stylist.all()
  erb(:index)
end

get('/stylists') do 
   @stylists = Stylist.all()
  erb(:stylists)
end

post('/stylists') do
	name = params.fetch("stylist")
  stylist = Stylist.new(:name => name, :id => nil)
	stylist.save
	@stylists = Stylist.all()
	erb(:stylists)
end

get('/stylist/:id') do
	@stylist = Stylist.find(params.fetch('id'))
  @clients = Client.all()
	erb(:stylist_info)
end

post('/stylist/:id') do
	@stylist = Stylist.find(params.fetch('id'))
  @clients = Client.all()
	erb(:stylist_info)
end