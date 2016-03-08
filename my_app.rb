
#sinatra page

#get submit page 

require 'rubygems'
require 'sinatra'

get('submit_page') do
	erb :submit_page
end
#POST 
post ('/submit') do 
#Twitter API
twitter_api = Twitter::REST::Client.new do |config|
	config.consumer_key         ="YOUR_CONSUMER_KEY"
	config.consumer_secret      ="YOUR_CONSUMER_SECRET"
	config.access_token         ="YOUR_ACCESS_TOKEN"
	config.access_token_secret  ="YOUR_ACCESS_SECRET"
end

@name = params [:name]
@location =params [:location]
@email = params [:email]


user_tweet ="#{@name} is looking for exercise classes in #{@location}. Can anyone help?"

	twitter_api.update(user_tweet)
end

