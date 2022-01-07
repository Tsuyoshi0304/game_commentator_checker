Commentator.seed do |s|
  s.id = 1
	s.name = 'キヨ。'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/kiyo.jpeg')), filename: 'kiyo.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/KIYOisGOD'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 10
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 2
	s.name = 'レトルト'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/retort.jpeg')), filename: 'retort.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/retokani'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 70
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 3
	s.name = '牛沢'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/ushizawa.jpeg')), filename: 'ushizawa.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/ushizawa16'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 20
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 4
	s.name = 'ガッチマン'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/gatchman.jpeg')), filename: 'gatchman.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/Gatchman666'
	s.sex = 1
	s.age = 40
	s.is_forming_a_group = 1
	s.play_style = 20
  s.appearance = 1
	s.vtuber = 1
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 5
	s.name = '赤髪のとも'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/gamitomo.jpeg')), filename: 'gamitomo.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/tomo0723sw'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 60
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 6
	s.name = 'フジ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/fuji.jpeg')), filename: 'fuji.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/thefujifactory'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 60
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 2
	s.famous = 0
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 7
	s.name = 'ヒラ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/hira.jpeg')), filename: 'hira.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UCmxAWbOvT8osBX_tGMVFVPA'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 70
  s.appearance = 1
	s.vtuber = 1
	s.feeling = 2
	s.famous = 0
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 8
	s.name = 'こーすけ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/kousuke.jpeg')), filename: 'kousuke.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/suketubesaiore'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 0
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 9
	s.name = 'もこう'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/mokou.jpeg')), filename: 'mokou.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/mokoustream'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 10
	s.name = '加藤純一'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/junichikatou.jpeg')), filename: 'junichikatou.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/junchannel'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 10
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 11
	s.name = 'ポッキー'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/pocky.jpeg')), filename: 'pocky.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/pockysweets'
	s.sex = 1
	s.age = 20
	s.is_forming_a_group = 1
	s.play_style = 10
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 12
	s.name = 'ヒカキン'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/hikakin.jpeg')), filename: 'hikakin.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/HikakinGames'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 60
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 13
	s.name = 'セイキン'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/seikin.jpeg')), filename: 'seikin.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/SeikinGames'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 60
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 14
	s.name = 'カズゲームズ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/kazu.jpeg')), filename: 'kazu.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/kazuch0924games'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 70
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 15
	s.name = 'はじめしゃちょー2'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/hazime-syacho.jpeg')), filename: 'hazime-shacho.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/hajimexgame'
	s.sex = 1
	s.age = 20
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 16
	s.name = '兄者弟者'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/anioto.jpeg')), filename: 'anioto.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/norunine'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 20
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 17
	s.name = '日常組'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/nitizyou.jpeg')), filename: 'nitizyou.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/peinto1008'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 18
	s.name = '兎田ぺこら'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/pekora.jpeg')), filename: 'pekora.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UC1DCedRgGHBdm81E1llLhOQ'
	s.sex = 2
	s.age = 0
	s.is_forming_a_group = 0
	s.play_style = 30
  s.appearance = 0
	s.vtuber = 1
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 19
	s.name = 'しゅうゲームズ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/syugames.jpeg')), filename: 'syugames.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UC1l8jsqYmIj1bjCzN43UPfA'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 10
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 20
	s.name = 'キズナアイ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/kizunaai.jpeg')), filename: 'kizunaai.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/AIGamesdayo'
	s.sex = 2
	s.age = 0
	s.is_forming_a_group = 0
	s.play_style = 30
  s.appearance = 0
	s.vtuber = 1
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 21
	s.name = '花江夏樹'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/hanaenatsuki.jpeg')), filename: 'hanaenatsuki.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UC3C3YOGFjn7Pq3lOCeUFHfg'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 60
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 22
	s.name = 'わいわい'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/waiwai.jpeg')), filename: 'waiwai.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/%E3%82%8F%E3%81%84%E3%82%8F%E3%81%84'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 0
	s.movie_style_id = 4
end

Commentator.seed do |s|
  s.id = 23
	s.name = 'ホラフキン'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/horahukin.jpeg')), filename: 'horahukin.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UCKdvGNtzpYqXwoh8niogRcQ'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 24
	s.name = 'KUN'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/KUN.jpeg')), filename: 'KUN.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/KUN1234'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 40
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 25
	s.name = 'PewDiePie'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/PewDiePie.jpeg')), filename: 'PewDiePie.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/PewDiePie'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 10
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 26
	s.name = 'Markiplier'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/markiplier.jpeg')), filename: 'markiplier.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/markiplier'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 20
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 27
	s.name = 'jacksepticeye'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/jacksepticeye.jpeg')), filename: 'jacksepticeye.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/jacksepticeye'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 28
	s.name = 'まふまふ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/mafumafu.jpeg')), filename: 'mafumafu.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/uni_mafumafu'
	s.sex = 1
	s.age = 20
	s.is_forming_a_group = 0
	s.play_style = 70
  s.appearance = 0
	s.vtuber = 1
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 29
	s.name = 'アブ -abu-'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/abu.jpeg')), filename: 'abu.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/user/abuuuntv'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 0
	s.play_style = 10
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 30
	s.name = 'ころん'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/koron.jpeg')), filename: 'koron.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UCJtMfSSPKuW22GXfkaN7DOA'
	s.sex = 1
	s.age = 20
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 31
	s.name = 'ナポリの男たち'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/napori.jpeg')), filename: 'napori.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/napolimens'
	s.sex = 1
	s.age = 30
	s.is_forming_a_group = 1
	s.play_style = 60
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 2
	s.famous = 0
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 32
	s.name = '戌神ころね'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/inugami.jpeg')), filename: 'inugami.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/channel/UChAnqc_AY5_I3Px5dig3X1Q'
	s.sex = 2
	s.age = 20
	s.is_forming_a_group = 0
	s.play_style = 30
  s.appearance = 0
	s.vtuber = 1
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 3
end

Commentator.seed do |s|
  s.id = 33
	s.name = 'さとみ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/satomi.jpeg')), filename: 'satomi.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/%E3%81%95%E3%81%A8%E3%81%BF%E3%81%A1%E3%82%83%E3%82%93%E3%81%AD%E3%82%8B'
	s.sex = 1
	s.age = 20
	s.is_forming_a_group = 0
	s.play_style = 50
  s.appearance = 1
	s.vtuber = 0
	s.feeling = 1
	s.famous = 1
	s.movie_style_id = 2
end

Commentator.seed do |s|
  s.id = 34
	s.name = 'まいぜんシスターズ'
	s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join('app/assets/images/maizen.jpeg')), filename: 'maizen.jpeg' )
	s.youtube_channel_url = 'https://www.youtube.com/c/maizen'
	s.sex = 1
	s.age = 0
	s.is_forming_a_group = 1
	s.play_style = 70
  s.appearance = 0
	s.vtuber = 0
	s.feeling = 2
	s.famous = 1
	s.movie_style_id = 2
end


