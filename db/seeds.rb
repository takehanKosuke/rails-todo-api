puts "記事作成中"
Article.create!(
  [
    {
      title: 'test article1',
      body: 'test article body1',
    },
    {
      title: 'test article2',
      body: 'test article body2',
    },
    {
      title: 'test article3',
      body: 'test article body3',
    },
    {
      title: 'test article4',
      body: 'test article body4',
    },
    {
      title: 'test article5',
      body: 'test article body5',
    },
  ]
)
puts "記事作成完了"
puts "コメント作成中"
Comment.create!(
  [
    {
      body: 'test comment body1',
      article_id: 1
    },
    {
      body: 'test comment body2',
      article_id: 1
    },
    {
      body: 'test comment body3',
      article_id: 1
    },
    {
      body: 'test comment body4',
      article_id: 2
    },
    {
      body: 'test comment body5',
      article_id: 2
    },
  ]
)
puts "コメント作成完了"
