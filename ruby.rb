#require 'google/apis/youtube_v3'


youtube = Google::Apis::YoutubeV3::YouTubeService.new
youtube.key = Rails.application.credentials.google[:api_key]

options = {
  :channelId => 'UCPyNsNSTUtywkekbDdCA_8Q', #YouTubeチャンネルのIDを指定
  :order => "date"
}

response = youtube.list_searches(:id, options)

video_id = response[:items][0][:id][:videoId]
@video_url = "https://www.youtube.com/watch?v=#{video_id}"
