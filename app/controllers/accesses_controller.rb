class AccessesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_access, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @accesses = current_user.accesses
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    #@post = Post.new
    @access = current_user.accesses.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    #@access = Access.new(post_params)

    #respond_to do |format|
      #if @post.save
        #format.html { redirect_to @post, notice: 'Post was successfully created.' }
      #else
        #format.html { render :new }
      #end
    #end

    @access = current_user.accesses.build(access_params)

    if @access.save
      flash[:success] = "Your access has been created!"
      redirect_to accesses_path
    else
      flash[:alert] = "Your new access couldn't be created!  Please check the form."
      render :new
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @access.update(access_params)
        format.html { redirect_to @access, notice: 'Access was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @access.destroy
    respond_to do |format|
      format.html { redirect_to accesses_path, notice: 'Access was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access
      @access = Access.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_params
      params.require(:access).permit(:received, :patient_name, :verified, :type_info,
                                    :response, :fees, :closed, :comments )
    end
end
