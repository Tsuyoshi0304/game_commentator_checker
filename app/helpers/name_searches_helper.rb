module NameSearchesHelper
  def aggregate(commentator)
    array = Commentator.aggregate_game_genre(commentator)
    aggregate_game_genre(array)
  end

  def aggregate_game_genre(array)
    result = [['アクション', 0], ['シューティング', 0], ['RPG', 0], ['ホラー', 0], ['アドベンチャー', 0], ['シミュレーション', 0], ['テーブルゲーム', 0],
              ['その他', 0]]
    array.each do |i|
      if [1, 15, 16, 17].include?(i)
        result[0][1] += 1
      elsif [5, 21, 22, 23].include?(i)
        result[1][1] += 1
      elsif [7, 24, 25].include?(i)
        result[2][1] += 1
      elsif [14, 33, 34].include?(i)
        result[3][1] += 1
      elsif i == 6
        result[4][1] += 1
      elsif [10, 26, 27, 28].include?(i)
        result[5][1] += 1
      elsif [13, 31, 32].include?(i)
        result[6][1] += 1
      else
        result[7][1] += 1
      end
    end
    result
  end
end
