class Telephone < ActiveRecord::Base

  def call calling_time = 8
    account_sid = Rails.application.config.twilio_account_sid
    auth_token = Rails.application.config.twilio_auth_token
    
    Wangiry.call account_sid, auth_token, from_number, number, url, calling_time
    sleep(1)
  end

end
