class AttachedImagesController < ApplicationController
  before_action :set_attached_image, only: %i[ show edit update destroy ]

  # GET /attached_images or /attached_images.json
  def index
    @attached_images = AttachedImage.all
  end

  # GET /attached_images/1 or /attached_images/1.json
  def show
  end

  # GET /attached_images/new
  def new
    @attached_image = AttachedImage.new
    @general_item = GeneralItem.find(params[:id])
  end

  # GET /attached_images/1/edit
  def edit
  end

  # POST /attached_images or /attached_images.json
  def create
    @attached_image = AttachedImage.new(attached_image_params)
    @attached_image.image.attach(params[:attached_image][:image])
    respond_to do |format|
      if @attached_image.save
        format.html { redirect_to attached_image_url(@attached_image), notice: "Attached image was successfully created." }
        format.json { render :show, status: :created, location: @attached_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attached_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attached_images/1 or /attached_images/1.json
  def update
    respond_to do |format|
      if @attached_image.update(attached_image_params)
        format.html { redirect_to attached_image_url(@attached_image), notice: "Attached image was successfully updated." }
        format.json { render :show, status: :ok, location: @attached_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attached_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attached_images/1 or /attached_images/1.json
  def destroy
    @attached_image.destroy

    respond_to do |format|
      format.html { redirect_to attached_images_url, notice: "Attached image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attached_image
      @attached_image = AttachedImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attached_image_params
      params.require(:attached_image).permit(:content, :general_item_id, :image)
    end
end
