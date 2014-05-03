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

# pull down 10000 tweets that contain BofA
tweets <- searchTwitter(searchString="BofA",n=10000,
                        since='2014-04-01', until='2014-04-26')

print(paste("number of tweets:",length(tweets)))

#covert to a dataframe
tweetDF <- twListToDF(tweets)

