json.array! @game_genre_children do |child|
  json.id child.id
  json.genre_name child.genre_name
end
