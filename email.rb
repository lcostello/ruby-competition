
require 'pony'

Pony.options = { 
	:via => 'smtp', 
	:via_options => {
		:address => 'smtp.mailgun.org', 
		:port => '587', :enable_starttls_auto => true,
		:authentication => :plain,
# This is the Default SMTP Login from earlier:
	:user_name => 'postmaster@sandboxa5047b083ae044bbbd23584fb65f325c.mailgun.org', # This is your Default Password:
	:password => '44c7f76ccca99d6a3e518b8de11291b5'
   } 
}
