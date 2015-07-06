class TwitterTasks < Volt::Task
  def get_tweets
  	require 'twitter'
    tweets = []

    client = Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    end

    client.search("from:", result_type: "recent", count: 20).each do |tweet|
      tweets << {text: tweet.text}
    end

    tweets
  end
end