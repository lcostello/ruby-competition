require_relative "../pony"

Pony.options = {
	:via => 'smtp',
	:via_options => {
		:address => 'smtp.mailgun.org',
		:port => '587',
		:enable_starttls_auto => true,
		:authentication => :plain,
		:user_name => 
		:password =>
	}
}

message = {
	:from => 'dailydigest247@gmail.com',
	:to => :name <:email>,
	:subject => 'Your Digest',
	:body => ' '
}
