module Admin
  class PostsController < AdminController
    before_action :set_post, only: [:show, :edit, :update, :remove]

    def index
      params[:type] ||= :all
      case params[:type].to_sym
      when :column
        @posts = Column.all
        render :columns        
      when :article
        @posts = Article.all
        render :index
      else
        @posts = Post.all
      end
    end

    def show
    end

    # GET /posts/new
    def new
      @post = Post.new
    end

    # GET /posts/1/edit
    def edit
    end

    # POST /posts
    # POST /posts.json
    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to edit_admin_posts_path(@post), notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /posts/1
    # PATCH/PUT /posts/1.json
    def update
      if @post.update(post_params)
        redirect_to admin_posts_path, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    def remove
      @post.remove
      redirect_to admin_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:title, :body, :category_id, :user_id)
      end
  end
end