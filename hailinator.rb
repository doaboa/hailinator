


require "twitter"
Twitter.configure do |config|
  config.consumer_key = "NSY3WhUBhWyNToqypsXExQ"
  config.consumer_secret = "OsQpfXHUh57khynEIhCyP48sDI3tJ9PFsGpV6a3Q0A"
  config.oauth_token = "14168536-dXNmUPJt4VKrfk3ovz4QdyUQLLdLwFtF5EbBYtY8"
  config.oauth_token_secret = "h3n4TbyUMfQBEXrFEJaEiNe0IXCvRtXEyushJnoOSnw"
end


# tweets = Twitter.search("high")

# tweets.each do |tweet|
# 	puts "Here's one entry #{tweet.inspect} /n"
# end

require "csv"

CSV.open("hailtweets.csv", "wb") do |csv|
  csv << ["handle", "text", "url"]
	Twitter.search("#hail", :count => 15, :result_type => "recent", ).results.map do |status|
    Twitter.follow(status.from_user) 
    sleep 1
    Twitter.favorite(status.id)
    sleep 1
		csv << ["#{status.from_user}", "#{status.text}", "http://www.twitter.com/#{status.from_user}/status/#{status.id}"]
	end
end


#have twitter automatically favorite all tweets you find
#have twitter automatically follow all tweeters for the results you found