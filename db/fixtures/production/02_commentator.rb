Commentator.seed do |s|
    s.id = 1
      s.name = 'キヨ。'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/kiyo.jpeg'), filename: 'kiyo.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/user/KIYOisGOD'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 10
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 15
  end
  
  Commentator.seed do |s|
    s.id = 2
      s.name = 'レトルト'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/retort.jpeg'), filename: 'retort.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/c/retokani'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 70
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 18
  end
  
  Commentator.seed do |s|
    s.id = 3
      s.name = '牛沢'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('.app/assets/images/ushizawa.jpeg'), filename: 'ushizawa.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/c/ushizawa16'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 20
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 18
  end
  
  Commentator.seed do |s|
    s.id = 4
      s.name = 'ガッチマン'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/gatchman.jpeg'), filename: 'gatchman.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/c/Gatchman666'
      s.sex = 1
      s.age = 40
      s.is_forming_a_group = 1
      s.play_style = 20
    s.appearance = 1
      s.vtuber = 1
      s.movie_style_id = 18
  end
  
  Commentator.seed do |s|
    s.id = 5
      s.name = '赤髪のとも'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/gamitomo.jpeg'), filename: 'gamitomo.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/user/tomo0723sw'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 60
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 26
  end
  
  Commentator.seed do |s|
    s.id = 6
      s.name = 'フジ'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/fuji.jpeg'), filename: 'fuji.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/user/thefujifactory'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 60
    s.appearance = 0
      s.vtuber = 0
      s.movie_style_id = 15
  end
  
  Commentator.seed do |s|
    s.id = 7
      s.name = 'ヒラ'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/hira.jpeg'), filename: 'hira.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/channel/UCmxAWbOvT8osBX_tGMVFVPA'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 70
    s.appearance = 1
      s.vtuber = 1
      s.movie_style_id = 22
  end
  
  Commentator.seed do |s|
    s.id = 8
      s.name = 'こーすけ'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/kousuke.jpeg'), filename: 'kousuke.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/user/suketubesaiore'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 1
      s.play_style = 50
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 14
  end
  
  Commentator.seed do |s|
    s.id = 9
      s.name = 'もこう'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/mokou.jpeg'), filename: 'mokou.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/user/mokoustream'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 0
      s.play_style = 50
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 15
  end
  
  Commentator.seed do |s|
    s.id = 10
      s.name = '加藤純一'
      s.youtube_icon = ActiveStorage::Blob.create_and_upload!(io: File.open('./app/assets/images/junichikatou.jpeg'), filename: 'junichikatou.jpeg' )
      s.youtube_channel_url = 'https://www.youtube.com/c/junchannel'
      s.sex = 1
      s.age = 30
      s.is_forming_a_group = 0
      s.play_style = 10
    s.appearance = 1
      s.vtuber = 0
      s.movie_style_id = 25
  end