# require 'google/api_client'
require 'json'
require 'open-uri'

class PagesController < ApplicationController
  def home
    video = []
    url = open("https://www.googleapis.com/youtube/v3/activities?part=snippet,contentDetails&channelId=UCvO6uJUVJQ6SrATfsWR5_aA&key=#{ENV['API_KEY']}&maxResults=50").read
    json = JSON.parse(url)
    @title = json["items"][0]['snippet']['title']
    @thumbnail = json["items"][0]['snippet']["thumbnails"]['url']
    raise
    # @title = content_array['snippet']['title']
    # @title.each do |title|
    #   array << title
    #   end
    # raise
  end
end
