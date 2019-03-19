class Author
  attr_accessor :name, :posts
  @@posts = []

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
    @@posts << post
    post
  end

  def posts
    @@posts
  end

  def add_post_by_title(title)
    post = add_post(Post.new)
    post.title = title
  end

  def self.post_count
    @@posts.count
  end
end
