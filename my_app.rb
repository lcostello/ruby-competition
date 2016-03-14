
#sinatra page

#get submit page 

require 'sinatra'

get('/') do
	erb :submit_page
end
#POST 
post ('/submit') do 
#Twitter API
twitter_api = Twitter::REST::Client.new do |config|
	config.consumer_key         ="gFLrFYr9GZqtot2kfqMlolIDR"
	config.consumer_secret      ="OweIVRWfYFn8Cma4PHsjyPVmyzgQevuZh4e2Kvkxcfd6KhgMfn"
	config.access_token         ="366754918-b1mBO3fztO96smOtgfC2IKilGuHlPxrAuUuTvjXx"
	config.access_token_secret  ="LTU6D6SexXHZ28bHkN4F3CAd6yD44YJJEcYYgxVR5Z8Mk"
end

@name = params [:name]
@location =params [:location]
@email = params [:email]


user_tweet ="#{@name} is looking for exercise classes in #{@location}. Can anyone help?"

	twitter_api.update(user_tweet)
end

