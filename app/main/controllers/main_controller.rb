# By default Volt generates this controller for your Main component
# require 'opal-jquery'
module Main
  class MainController < Volt::ModelController
    def index
      #client = Twitter::REST::Client.new do |config|
      #  config.consumer_key    = ENV['TWITTER_CONSUMER_KEY']
      #  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
      #end

      #page._tweets = client.search("from:", result_type: "recent").take(20)
      page._tweets = [{text: 'hello 123456789'}, {text: 'goodbye 123456789'}]

      # Document.ready? do
      #   HTTP.get("https://api.twitter.com/1.1/search/tweets.json", dataType: 'jsonp') do |response|
      #     #response.body
      #     page._response = response
      #     # => "{\"name\": \"Adam Beynon\"}"
      #   end
      # end
    end

    def about
      # Add code for when the about view is loaded
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
