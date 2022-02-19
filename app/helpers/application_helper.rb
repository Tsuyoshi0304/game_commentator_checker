module ApplicationHelper
  include NameSearchesHelper

  def default_meta_tags
    {
      title: '運命の実況者に出会える | ゲーム実況者診断',
      reverse: true,
      description: 'あなたにオススメのゲーム実況者を診断します。2択の質問に答えて運命の実況者を見つけよう!' 
    }
  end
end
