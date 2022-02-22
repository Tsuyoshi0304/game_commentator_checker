module ApplicationHelper
  include NameSearchesHelper

  def default_meta_tags
    {
      site: 'ゲーム実況者診断',
      title: '運命の実況者に出会える',
      separator: '|',
      reverse: true,
      description: 'ゲーム実況者診断は、あなたにオススメのゲーム実況者を診断します。
                    2択の質問に答えて運命の実況者を見つけましょう! さらに、ユーザー登録をすると
                    診断結果の保存や、好きな実況者に対してレビューができるようになります。'
    }
  end
end
