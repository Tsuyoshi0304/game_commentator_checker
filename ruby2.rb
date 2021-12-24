require 'google/apis/youtube_v3'
require 'active_support/all'

GOOGLE_API_KEY="<API_KEY>" #上記で作成したキー

def find_videos(keyword, after: 1.months.ago, before: Time.now) #検索キーワードと検索範囲を変えれるように引数に値を取っています
  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = GOOGLE_API_KEY
  next_page_token = nil
  opt = {
    q: keyword,
    type: 'video',
    max_results: 2,
    order: :date,
    page_token: next_page_token,
    published_after: after.iso8601,
    published_before: before.iso8601
  }
  results = service.list_searches(:snippet, opt)
  results.items.each do |item|
    id = item.id
    snippet = item.snippet
    puts "\"#{snippet.title}\" by #{snippet.channel_title} (id: #{id.video_id}) (#{snippet.published_at})"
  end
end

find_videos('明日香ちゃんねる')