module RankingsHelper
  def find_commentator_name(commentator_id)
    Commentator.find(commentator_id).name
  end

  def find_commentator_icon(commentator_id)
    Commentator.find(commentator_id).youtube_icon
  end

  def find_commentator_url(commentator_id)
    Commentator.find(commentator_id).youtube_channel_url
  end

  def find_commentator_movie(commentator_id)
    Commentator.find(commentator_id).popular_movies.pick(:movie)
  end

  def find_commentator_reviews(commentator_id)
    Commentator.find(commentator_id).reviews
  end

  def output_rank_average
    commentator_ids = Review.distinct.pluck(:commentator_id)

    total_rank_average = {}

    commentator_ids.each do |commentator_id|
      array = Review.where(commentator_id: commentator_id).pluck(:rank)
      rank_average = array.sum.fdiv(array.length).round(1)
      total_rank_average[commentator_id] = rank_average
    end

    total_rank_average.sort_by { |_k, v| -v }.take(5).to_h
  end
end
