# require 'google/api_client'
require 'json'
require 'open-uri'

class PagesController < ApplicationController
  def home
    url = open("https://www.googleapis.com/youtube/v3/activities?part=snippet,contentDetails&channelId=UCvO6uJUVJQ6SrATfsWR5_aA&key=#{ENV['API_KEY']}&maxResults=50").read
    json = JSON.parse(url)
    @items = json['items']
    @image_id = json['items'][0]['contentDetails']['upload']['videoId']
  end
end
