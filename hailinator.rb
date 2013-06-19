require "twitter"

Twitter.configure do |config|
  config.consumer_key = "wdeIymTNup3YNdNdn9ipg"
  config.consumer_secret = "i8ubBYroljZInX3i3tVPQKg6jQ51fTEylg3qhAzFdw"
  config.oauth_token = "14168536-UWYdLCEuYkt2TCP3wu70UErI4UmUIalXyIRxb1JQO"
  config.oauth_token_secret = "eROHt8kc6drCCyrMULosG4dwa1YrXNNtKx7uSUwZAhE"
end


# tweets = Twitter.search("high")

# tweets.each do |tweet|
# 	puts "Here's one entry #{tweet.inspect} /n"
# end



CSV.open("hailtweets.csv", "wb") do |csv|
	Twitter.search("#hail", :count => 15, :result_type => "recent", ).results.map do |status|
	end
	csv << ["#{status.from_user}", "#{status.text}"]
end