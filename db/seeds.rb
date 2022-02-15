file_names = %w[
  01_movie_style 02_commentator 03_game_genre 04_game 05_playing 06_popular_movie
]

file_names.each do |file_name|
  path = "db/fixtures/#{Rails.env}/#{file_name}.rb"

  path = path.sub(Rails.env, "development") unless File.exist?(path)

  puts "#{file_name}..."
  require path
end
