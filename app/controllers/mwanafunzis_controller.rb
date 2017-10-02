class MwanafunzisController < ApplicationController
  before_action :authenticate_mwanafunzi!
  def show
    @mwanafunzi = current_mwanafunzi
    @students = current_mwanafunzi.students
  end
end
