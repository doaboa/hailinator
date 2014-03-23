require "twitter"
require "csv"

# Pulls from the Twitter API & populates a .csv file

 Twitter.configure do |config|
   config.consumer_key = ENV["TW_CK"]
   config.consumer_secret = ENV["TW_CS"]
   config.oauth_token = ENV["TW_OT"]
   config.oauth_token_secret = ENV["TW_OTS"]
 end


 CSV.open("hailtweets.csv", "wb") do |csv|
   csv << ["handle", "text", "url"]
 	Twitter.search("traffic", :lang => "en", :count => 15, :result_type => "recent", ).results.map do |status|
     csv << ["#{status.from_user}", "#{status.text}", "http://www.twitter.com/#{status.from_user}/status/#{status.id}"]
     Twitter.follow(status.from_user) 
     sleep 1
     Twitter.favorite(status.id)
     sleep 1
		
 	end
 end




# you can ignore/delete everything below this- just playing with the facebook API

# require "koala"
# @graph = Koala::Facebook::API.new(ENV["KOALA_API"])

# profile = @graph.get_object("me")
# friends = @graph.get_connections("me", "friends")
  # @graph.put_connections("me", "feed", :message => "I'm a supernerd and I posted this from the command line.  What up")
  @graph.search("spurs", :lang => "en") do |search|
    #search.data

# # three-part queries are easy too!
# @graph.get_connections("me", "mutualfriends/#{friend_id}")

# # you can even use the new Timeline API
# # see https://developers.facebook.com/docs/beta/opengraph/tutorial/
# @graph.put_connections("me", "namespace:action", :object => object_url)


# App ID: 451981254876272
# App Secret: ENV["APP_SEC"] (reset)
# https://mighty-gorge-8169.herokuapp.com/
