class AddBodyToPostsController < ApplicationController
  before_action :set_add_body_to_post, only: [:show, :edit, :update, :destroy]

  # GET /add_body_to_posts
  # GET /add_body_to_posts.json
  def index
    @add_body_to_posts = AddBodyToPost.all
  end

  # GET /add_body_to_posts/1
  # GET /add_body_to_posts/1.json
  def show
  end

  # GET /add_body_to_posts/new
  def new
    @add_body_to_post = AddBodyToPost.new
  end

  # GET /add_body_to_posts/1/edit
  def edit
  end

  # POST /add_body_to_posts
  # POST /add_body_to_posts.json
  def create
    @add_body_to_post = AddBodyToPost.new(add_body_to_post_params)

    respond_to do |format|
      if @add_body_to_post.save
        format.html { redirect_to @add_body_to_post, notice: 'Add body to post was successfully created.' }
        format.json { render :show, status: :created, location: @add_body_to_post }
      else
        format.html { render :new }
        format.json { render json: @add_body_to_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_body_to_posts/1
  # PATCH/PUT /add_body_to_posts/1.json
  def update
    respond_to do |format|
      if @add_body_to_post.update(add_body_to_post_params)
        format.html { redirect_to @add_body_to_post, notice: 'Add body to post was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_body_to_post }
      else
        format.html { render :edit }
        format.json { render json: @add_body_to_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_body_to_posts/1
  # DELETE /add_body_to_posts/1.json
  def destroy
    @add_body_to_post.destroy
    respond_to do |format|
      format.html { redirect_to add_body_to_posts_url, notice: 'Add body to post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_body_to_post
      @add_body_to_post = AddBodyToPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_body_to_post_params
      params.require(:add_body_to_post).permit(:body)
    end
end
