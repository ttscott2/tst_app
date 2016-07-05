class StudentsController < ApplicationController
  def index
    @students = ['Student 1', 'Student 2', 'Student 3']
  end
end
