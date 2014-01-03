class ChildPagesController < ApplicationController
  before_action :set_child_page, only: [:show, :edit, :update, :destroy]

  # GET /child_pages
  # GET /child_pages.json
  def index
    @child_pages = ChildPage.all
  end

  # GET /child_pages/1
  # GET /child_pages/1.json
  def show
  end

  # GET /child_pages/new
  def new
    @child_page = ChildPage.new
  end

  # GET /child_pages/1/edit
  def edit
  end

  # POST /child_pages
  # POST /child_pages.json
  def create
    @child_page = ChildPage.new(child_page_params)

    respond_to do |format|
      if @child_page.save
        format.html { redirect_to @child_page, notice: 'Aloldal sikeresen létrehozva.' }
        format.json { render action: 'show', status: :created, location: @child_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @child_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_pages/1
  # PATCH/PUT /child_pages/1.json
  def update
    respond_to do |format|
      if @child_page.update(child_page_params)
        format.html { redirect_to @child_page, notice: 'Aloldal sikeresen frissítve.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @child_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_pages/1
  # DELETE /child_pages/1.json
  def destroy
    @child_page.destroy
    respond_to do |format|
      format.html { redirect_to child_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_page
      @child_page = ChildPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_page_params
      params.require(:child_page).permit(:title, :body, :parent_page_id)
    end
end
