class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show edit update destroy]
  protect_from_forgery except: :index
  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
    @studo = []
    @studz = []
    @teacher =  Teacher.find(params[:id])
    @teacher_attachments = @teacher.teacher_attachments.all
    @subjects = @teacher.subjects
    @subject = @subjects
    @teacher.streams.each do |stream|
      stream.students.each do |student|
        student.subjects.each do |s|
          @subjects.each do |s1|
            @studo.push(student.name) if s1.id == s.id
            @studz.push(student) if s1.id == s.id
          end
        end
      end
    end
    @student = Student.find_by name: @studo
    @subjects = @student.subjects
    @exams = Exam.all
    @grade = @student.grades.new
    @assignment = Assignment.new
    @exam = []
    @exams.each do |exam|
      @exam.push(exam)
    end
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
    @subjects = Subject.all
    @teacher_attachment = @teacher.teacher_attachments.build
  end

  # GET /teachers/1/edit
  def edit
    @subjects = Subject.all
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @user = current_user
    @teacher = @user.teachers.new(teacher_params)
    respond_to do |format|
      if @teacher.save
        params[:teacher_attachments]['avatar'].each do |a|
          @teacher_attachment = @teacher.teacher_attachments.create!(avatar: a)
        end
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
    # SubjectTeacher.create(teacher_id: @teacher.id, subject_id: [1, 2])
    me = params[:subject_ids]
    @subject = Subject.find(me)

    @teacher.update(subjects: @subject)
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
    me = params[:subject_ids]
    @subject = Subject.find(me)

    @teacher.update(subjects: @subject)
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.subjects.delete_all
    # delete the subjects first then delete the teacher
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def teacher_params
    params.require(:teacher).permit(:user_id :name, :role, :picture, teacher_attachments_attributes: %i[id teacher_id avatar], stream_ids: [], subject_ids: [])
  end
end
