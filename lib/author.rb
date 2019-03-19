class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    the_post = post
    the_post.author = self
    @posts << the_post
    the_post
  end

  def posts
    @posts
  end

  def add_post_by_title
  end

  def self.post_count
  end
end
