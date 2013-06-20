

require "koala"
require "twitter"


@graph = Koala::Facebook::API.new("CAACEdEose0cBAEFHmeMkjyhAyyoqL5xJoY8lpgHVCZA733eJqoEeFEAFfKZA2hqe20awotiZBYdaqZBR73wYsZC10a6GrMt8vr8ZCiute0zJZCrx7i7bP4YEDlWPmrJGaaiimZBN2sU6QwWYuauRYTfAPavwHjP2GUAK7uzjzvMhVAZDZD")



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
# App Secret: 2dd9ee634fce99560f7c1c3de9327cd8(reset)
# https://mighty-gorge-8169.herokuapp.com/

# Working twitter!!

# Twitter.configure do |config|
#   config.consumer_key = "NSY3WhUBhWyNToqypsXExQ"
#   config.consumer_secret = "OsQpfXHUh57khynEIhCyP48sDI3tJ9PFsGpV6a3Q0A"
#   config.oauth_token = "14168536-dXNmUPJt4VKrfk3ovz4QdyUQLLdLwFtF5EbBYtY8"
#   config.oauth_token_secret = "h3n4TbyUMfQBEXrFEJaEiNe0IXCvRtXEyushJnoOSnw"
# end

# require "csv"

# CSV.open("hailtweets.csv", "wb") do |csv|
#   csv << ["handle", "text", "url"]
# 	Twitter.search("traffic", :lang => "en", :count => 15, :result_type => "recent", ).results.map do |status|
#     csv << ["#{status.from_user}", "#{status.text}", "http://www.twitter.com/#{status.from_user}/status/#{status.id}"]
#     Twitter.follow(status.from_user) 
#     sleep 1
#     Twitter.favorite(status.id)
#     sleep 1
		
# 	end
# end
