class GradesController < ApplicationController
  before_action :set_grade, only: %i[show edit update destroy]
  protect_from_forgery except: :index

  # GET /grades
  # GET /grades.json
  def index
    @exams = Exam.all
    @teo = []
    @exam = []
    @exams.each do |exam|
      @te = exam
      @teo.push(@te)
      @exam.push(exam.id)
    end
    @student = Student.find(params[:student_id])
    @grades = Grade.all
  end

  # GET /grades/1
  # GET /grades/1.json
  def show; end

  # GET /grades/new
  def new
    @student = Student.find(params[:student_id])
    @subjects = @student.subjects
    @exams = Exam.all
    @grade = @student.grades.new
  end

  # GET /grades/1/edit
  def edit
    @exams = Exam.all
    @student = Student.find(params[:student_id])
    @subjects = @student.subjects
  end

  # POST /grades
  # POST /grades.json
  def create
    @student = Student.find(params[:student_id])
    @grade = @student.grades.new(grade_params)
    respond_to do |format|
      if @grade.save
        format.html { redirect_to student_grades_path, notice: 'Grade was successfully created.' }
        format.json { render :show, status: :created, location: @grade }
      else
        format.html { render :new }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.html { redirect_to student_grades_path, notice: 'Grade was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade }
      else
        format.html { render :edit }
        format.json { render json: @grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to student_grades_path, notice: 'Grade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_grade
    @grade = Grade.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def grade_params
    params.require(:grade).permit(:cat1, :cat2, :cat3, :exam_id, :score, :grade, :subject_id)
  end
end
