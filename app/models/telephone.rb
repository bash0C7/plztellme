class Telephone < ActiveRecord::Base

  def call client = Rails.application.config.twilio_client, calling_time = 8
    account = client.account

    call = account.calls.create({:from => from_number, :to => number, :url => url})
    call.tap {|t| sleep(calling_time)}.cancel
    sleep(1)
  end

end
