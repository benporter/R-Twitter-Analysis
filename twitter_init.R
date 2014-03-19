# Ben Porter
# 3/18/2014
# Sample code for creating a connection to Twitter
# Saves the workspace so it can be loaded later to avoid the URL and pin process
# All of the credit goes to Paeng:  http://www.youtube.com/watch?v=mJVcANlkxU8

library(twitteR)

consumer_key = "lettersandstuff" #enter your own from the dev.twitter.com application page
consumer_secret = "lettersandstuffandlettersandstuff" #enter your own from the dev.twitter.com application page
AppOnlyAuthentication <- "https://api.twitter.com/oauth2/token" # not used here
RequesTokenURL <- "https://api.twitter.com/oauth/request_token" # same for everyone
AuthorizeURL <- "https://api.twitter.com/oauth/authorize" # same for everyone
AccessTokenURL <- "https://api.twitter.com/oauth/access_token" # same for everyone 

twitCred <- OAuthFactory$new(consumerKey=consumer_key,
                             consumerSecret=consumer_secret,
                             requestURL=RequesTokenURL,
                             accessURL=AccessTokenURL,
                             authURL=AuthorizeURL)

# this will prompt you go to a URL, log into twitter, get the pin, then type it into the R console
twitCred$handshake() 

# save the workspace, and access later using the load() function
save.image(file="twitter_cred.rdata")
