class SchoolAttachmentsController < ApplicationController
  before_action :set_school_attachment, only: [:show, :edit, :update, :destroy]

  # GET /school_attachments
  # GET /school_attachments.json
  def index
    @school_attachments = SchoolAttachment.all
  end

  # GET /school_attachments/1
  # GET /school_attachments/1.json
  def show
  end

  # GET /school_attachments/new
  def new
    @school_attachment = SchoolAttachment.new
  end

  # GET /school_attachments/1/edit
  def edit
  end

  # POST /school_attachments
  # POST /school_attachments.json
  def create
    @school_attachment = SchoolAttachment.new(school_attachment_params)

    respond_to do |format|
      if @school_attachment.save
        format.html { redirect_to @school_attachment, notice: 'School attachment was successfully created.' }
        format.json { render :show, status: :created, location: @school_attachment }
      else
        format.html { render :new }
        format.json { render json: @school_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_attachments/1
  # PATCH/PUT /school_attachments/1.json
  def update
    respond_to do |format|
      if @school_attachment.update(school_attachment_params)
        format.html { redirect_to @school_attachment.school, notice: 'School attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_attachment }
      else
        format.html { render :edit }
        format.json { render json: @school_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_attachments/1
  # DELETE /school_attachments/1.json
  def destroy
    @school_attachment.destroy
    respond_to do |format|
      format.html { redirect_to school_attachments_url, notice: 'School attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_attachment
      @school_attachment = SchoolAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_attachment_params
      params.require(:school_attachment).permit(:school_id, :avatar)
    end
end
