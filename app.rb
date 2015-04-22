require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/rps') do
  # @player = params.fetch("player")
  # @opponent = params.fetch("opponent")
  #@winner = @player.beats(@opponent)

  @winner = params.fetch("player").beats(params.fetch("opponent"))

  erb(:rps)
end
