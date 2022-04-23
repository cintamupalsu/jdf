class GeneralItemsController < ApplicationController
  before_action :set_general_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /general_items or /general_items.json
  def index
    @general_items = GeneralItem.all
  end

  # GET /general_items/1 or /general_items/1.json
  def show
  end

  # GET /general_items/new
  def new
    @general_item = GeneralItem.new
  end

  # GET /general_items/1/edit
  def edit
  end

  # POST /general_items or /general_items.json
  def create
    @general_item = GeneralItem.new(general_item_params)

    respond_to do |format|
      if @general_item.save
        format.html { redirect_to general_item_url(@general_item), notice: "General item was successfully created." }
        format.json { render :show, status: :created, location: @general_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @general_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_items/1 or /general_items/1.json
  def update
    respond_to do |format|
      if @general_item.update(general_item_params)
        format.html { redirect_to general_item_url(@general_item), notice: "General item was successfully updated." }
        format.json { render :show, status: :ok, location: @general_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @general_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_items/1 or /general_items/1.json
  def destroy
    @general_item.destroy

    respond_to do |format|
      format.html { redirect_to general_items_url, notice: "General item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_item
      @general_item = GeneralItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def general_item_params
      params.require(:general_item).permit(:title, :subtitle, :content, :item_type_id)
    end
end
