# Load required packages
library(twitteR)
library(ROAuth)
library(httr)

# Set API Keys
api_key <- "xxxxxxxxxxxxxxxxxxxx"
api_secret <- "xxxxxxxxxxxxxxxxxxxx"
access_token <- "xxxxxxxxxxxxxxxxxxxx"
access_token_secret <- "xxxxxxxxxxxxxxxxxxxx"
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

# Pull 500 Bloomberg tweets
tweets_bloomberg <- searchTwitter('@bloomberg', n=500)

# Loop over tweets and extract text
library(plyr)
feed_bloomberg <- laply(tweets_bloomberg, function(t) t$getText())

#continue to further clean the text
