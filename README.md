# plztellme

plztellme is call my telephone using Twilio


### db

### if running on Heroku

#### set ENV

you MUST get Twilio account.

````sh
# set rails secret token (use: config/initializers/secret_token.rb)
heroku config:set SECRET_TOKEN=`bundle exec rake secret`

# set twitter auth (use: config/initializers/external_services.rb)
heroku config:set TWILIO_ACCOUNT_SID= XXXXXXXXXXXXXXXXXXXXXX
heroku config:set TWILIO_AUTH_TOKEN= XXXXXXXXXXXXXXXXXXXXXX
````

#### migrate & data insert

````sh
heroku run rake db:migrate
````

````
Telephone.create :from_number => '+XXXXXXX', :number => '+XXXXXXX', :url => 'http://example.com'
````
(in rails console)
### run

````sh
heroku run rake crawl_tweets
````

### call!!
````sh
rake telephones:call
````
or http get request to '/telephones/ID/call'

Enjoy!

# Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Ruby's License

# Ruby version

2.0.0

# Database

production: pg
development: sqlite3

