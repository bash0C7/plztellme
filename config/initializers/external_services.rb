twilio_account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
Rails.application.config.twilio_client = Twilio::REST::Client.new(twilio_account_sid, auth_token)
