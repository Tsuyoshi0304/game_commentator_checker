module NameSearchesHelper
  def aggregate(commentator)
    @array = Commentator.aggregate_game_genre(commentator)
    aggregateGameGenre(@array)
  end

  def aggregateGameGenre(array)
    result = [['アクション', 0],['シューティング',0],['RPG',0],['ホラー',0],['アドベンチャー',0],['シミュレーション',0],['テーブルゲーム',0],['その他',0]]
    array.each do |i|
      if i == 1 || i == 15 || i == 16 || i == 17
        result[0][1] += 1
      elsif i == 5 || i == 21 || i == 22 || i == 23
        result[1][1] += 1
      elsif i == 7 || i == 24 || i == 25
        result[2][1] += 1
      elsif i == 14 || i == 33 || i == 34
        result[3][1] += 1
      elsif i == 6
        result[4][1] += 1
      elsif i == 10 || i == 26 || i == 27 || i ==28
        result[5][1] += 1
      elsif i == 13 || i == 31 || i == 32
        result[6][1] += 1
      else
        result[7][1] += 1
      end
    end
    return result
  end
end
