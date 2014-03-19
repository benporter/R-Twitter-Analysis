# Ben Porter
# 3/18/2014
# Sample code for creating a connection to Twitter
# Loads the workspace to avoid the URL and pin process

#location of the twitter_cred.rdata file
setwd("~/R/Text Mining/twitter")

#loads the workspace
load(file="twitter_cred.rdata")

#load the Twitter R package
library(twitteR)

# register this session with your Twitter app
registerTwitterOAuth(twitCred)

# pull down 100 tweets that contain R Users Group
tweets <- searchTwitter(searchString="meetup R",n=100)


