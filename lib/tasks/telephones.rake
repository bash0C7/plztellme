namespace :telephones do
  desc "call all telephones"
  task call: :environment do
    Telephone.all.each do |t|
      t.call
      sleep(1)
    end
  end

end
