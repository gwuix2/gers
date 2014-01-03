class ParentPagesController < ApplicationController
  before_action :set_parent_page, only: [:show, :edit, :update, :destroy]

  # GET /parent_pages
  # GET /parent_pages.json
  def index
    @parent_pages = ParentPage.all
  end

  # GET /parent_pages/1
  # GET /parent_pages/1.json
  def show
    redirect_to parent_pages_path
  end

  # GET /parent_pages/new
  def new
    @parent_page = ParentPage.new
  end

  # GET /parent_pages/1/edit
  def edit
  end

  # POST /parent_pages
  # POST /parent_pages.json
  def create
    @parent_page = ParentPage.new(parent_page_params)

    respond_to do |format|
      if @parent_page.save
        format.html { redirect_to @parent_page, notice: 'Szülő oldal sikeresen létrehozva.' }
        format.json { render action: 'show', status: :created, location: @parent_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @parent_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_pages/1
  # PATCH/PUT /parent_pages/1.json
  def update
    respond_to do |format|
      if @parent_page.update(parent_page_params)
        format.html { redirect_to @parent_page, notice: 'Szülő oldal sikeresen frissítve.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parent_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_pages/1
  # DELETE /parent_pages/1.json
  def destroy
    @parent_page.destroy
    respond_to do |format|
      format.html { redirect_to parent_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_page
      @parent_page = ParentPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_page_params
      params.require(:parent_page).permit(:title)
    end
end
