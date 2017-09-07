class ParentsController < ApplicationController
  before_action :set_parents
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  # GET students/1/parents
  def index
    @parents = @student.parents
  end

  # GET students/1/parents/1
  def show
  end

  # GET students/1/parents/new
  def new
    @parent = @student.parents.build
  end

  # GET students/1/parents/1/edit
  def edit
  end

  # POST students/1/parents
  def create
    @parent = @student.parents.build(parent_params)

    if @parent.save
      redirect_to([@parent.student, @parent], notice: 'Parent was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT students/1/parents/1
  def update
    if @parent.update_attributes(parent_params)
      redirect_to([@parent.student, @parent], notice: 'Parent was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE students/1/parents/1
  def destroy
    @parent.destroy

    redirect_to student_parents_url(@student)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parents
      @student = Student.find(params[:student_id])
    end

    def set_parent
      @parent = @student.parents.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parent_params
      params.require(:parent).permit(:name, :mobile, :email, :picture)
    end
end
