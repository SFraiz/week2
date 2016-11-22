class Blog
    attr_reader :posts
    def initialize(posts)
    	@posts = []
    end
    def add_post(post)
        @posts.push(post)
    end
end
