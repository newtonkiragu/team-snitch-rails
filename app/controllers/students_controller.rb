class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]
  protect_from_forgery except: :index
  load_and_authorize_resource
  skip_authorize_resource :only => [:index, :show]
  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @parents = Parent.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @assignments=Assignment.where(level_id: @student.stream.level.id)
    @student = Student.find(params[:id])
    @student.grades.each do |grade|
      @x = grade.exam
    end
  end

  # GET /students/new
  def new
    @student = Student.new
    @subjects = Subject.all
  end

  # GET /students/1/edit
  def edit
    @subjects = Subject.all
  end

  # POST /students
  # POST /students.json
  def create
    @mwanafunzi = current_mwanafunzi
    @student = @mwanafunzi.students.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to mwanafunzi_path(@mwanafunzi), notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:mwanafunzi_id, :name, :fee, :dormitory, :clubs, :picture, :stream_id, subject_ids: [])
  end
end
