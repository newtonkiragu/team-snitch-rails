class TeacherAttachmentsController < ApplicationController
  before_action :set_teacher_attachment, only: [:show, :edit, :update, :destroy]

  # GET /teacher_attachments
  # GET /teacher_attachments.json
  def index
    @teacher_attachments = TeacherAttachment.all
  end

  # GET /teacher_attachments/1
  # GET /teacher_attachments/1.json
  def show
  end

  # GET /teacher_attachments/new
  def new
    @teacher_attachment = TeacherAttachment.new
  end

  # GET /teacher_attachments/1/edit
  def edit
  end

  # POST /teacher_attachments
  # POST /teacher_attachments.json
  def create
    @teacher_attachment = TeacherAttachment.new(teacher_attachment_params)

    respond_to do |format|
      if @teacher_attachment.save
        format.html { redirect_to @teacher_attachment.teacher, notice: 'Teacher attachment was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_attachment }
      else
        format.html { render :new }
        format.json { render json: @teacher_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_attachments/1
  # PATCH/PUT /teacher_attachments/1.json
  def update
    respond_to do |format|
      if @teacher_attachment.update(teacher_attachment_params)
        format.html { redirect_to @teacher_attachment, notice: 'Teacher attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_attachment }
      else
        format.html { render :edit }
        format.json { render json: @teacher_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_attachments/1
  # DELETE /teacher_attachments/1.json
  def destroy
    @teacher_attachment.destroy
    respond_to do |format|
      format.html { redirect_to teacher_attachments_url, notice: 'Teacher attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_attachment
      @teacher_attachment = TeacherAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_attachment_params
      params.require(:teacher_attachment).permit(:teacher_id, :avatar)
    end
end
