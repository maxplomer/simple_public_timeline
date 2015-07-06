require 'spec_helper'

describe 'get tweets', type: :task do
  it 'should return 20 tweets' do
  	TwitterTasks.get_tweets.then do |result|
        expect(result.count).to eq(20)
    end
    
  end
end