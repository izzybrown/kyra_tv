# require 'google/api_client'
require 'json'
require 'open-uri'

class PagesController < ApplicationController
  def home
    url = open("https://www.googleapis.com/youtube/v3/activities?part=snippet,contentDetails&channelId=UCvO6uJUVJQ6SrATfsWR5_aA&key=#{ENV['API_KEY']}&maxResults=50").read
    content_array = url['items']
    @title = content_array[0]['snippet'][0]['title']
  end
end
