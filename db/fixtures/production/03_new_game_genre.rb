parents = %w[アクション マインクラフト マリオ ポケモン シューティング アドベンチャー RPG パズル レース シミュレーション スポーツ 音ゲー テーブルゲーム ホラー]
action_children = %w[対戦アクション アクションアドベンチャー]
mario_children = %w[アクション マリオカート マリオパーティ スポーツ系]
shooting_children = %w[FPS TPS バトルロワイヤル]
rpg_children = %w[シミュレーションRPG アクションRPG]
simulation_children = %w[ターン制 育成系 どうぶつの森]
sport_children = %w[野球 サッカー]
table_children = %w[ボードゲーム カードゲーム]
horror_children = %w[洋風ホラー 和風ホラー]

parents.each.with_index(1) do |parent, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = parent
  end
end

action_children.each.with_index(15) do |action_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "アクション").children.create(genre_name: action_child).genre_name
  end
end

mario_children.each.with_index(17) do |mario_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "マリオ").children.create(genre_name: mario_child).genre_name
  end
end

shooting_children.each.with_index(21) do |shooting_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "シューティング").children.create(genre_name: shooting_child).genre_name
  end
end

rpg_children.each.with_index(24) do |rpg_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "RPG").children.create(genre_name: rpg_child).genre_name
  end
end

simulation_children.each.with_index(26) do |simulation_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "シミュレーション").children.create(genre_name: simulation_child).genre_name
  end
end

sport_children.each.with_index(29) do |sport_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "スポーツ").children.create(genre_name: sport_child).genre_name
  end
end

table_children.each.with_index(31) do |table_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "テーブルゲーム").children.create(genre_name: table_child).genre_name
  end
end

horror_children.each.with_index(33) do |horror_child, index|
  GameGenre.seed do |s|
    s.id = index
    s.genre_name = GameGenre.find_by!(genre_name: "ホラー").children.create(genre_name: horror_child).genre_name
  end
end
