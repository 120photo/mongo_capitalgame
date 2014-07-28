require 'sinatra'
require 'mongo'

# set :bind, '0.0.0.0'

# setup MongoDB Connections
mongo = Mongo::MongoClient.new
db = mongo['capital_game']
coll = db['states']

get '/' do
	@state = coll.find()
	erb :home
end

# get '/make_guess' do
# 	capital = CAPITALS[params[:state]]

# 	if params[:capital].downcase == capital.downcase
# 		'correct answer'
# 	else
# 		'wrong answer'
# 	end
# end