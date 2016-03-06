class PageDesignsController < ApplicationController
  before_action :set_page_design, only: [:show, :edit, :update, :destroy]

  # GET /page_designs
  # GET /page_designs.json
  def index
    @page_design = current_user.page_design

  end

  # GET /page_designs/1
  # GET /page_designs/1.json
  def show
  end

  # GET /page_designs/new
  def new
    @page_design = PageDesign.new
  end

  # GET /page_designs/1/edit
  def edit
  end

  # POST /page_designs
  # POST /page_designs.json
  def create
    @page_design = PageDesign.new(page_design_params)
    @page_design.user_id = current_user.id
    respond_to do |format|
      if @page_design.save
        format.html { redirect_to @page_design, notice: 'Page design was successfully created.' }
        format.json { render :show, status: :created, location: @page_design }
      else
        format.html { render :new }
        format.json { render json: @page_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_designs/1
  # PATCH/PUT /page_designs/1.json
  def update
    respond_to do |format|
      if @page_design.update(page_design_params)
        format.html { redirect_to @page_design, notice: 'Page design was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_design }
      else
        format.html { render :edit }
        format.json { render json: @page_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_designs/1
  # DELETE /page_designs/1.json
  def destroy
    @page_design.destroy
    respond_to do |format|
      format.html { redirect_to page_designs_url, notice: 'Page design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_design
      @page_design = PageDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_design_params
      params.require(:page_design).permit(:page_title, :page_font,:header_bg_color,:body_bg_color,:about_bg_color,:services_bg_color,:portfolio_bg_color,:footer_bg_color)
    end
end
