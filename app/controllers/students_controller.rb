# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :set_student, only:%i[show edit update destroy]
  # action for displaying all the students in the list
  def index
    @students = Student.all
  end

  # action for implementing the form
  def new
    @student = Student.new
  end

  # action for submitting and saving a student
  def create
    @student = Student.new(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      email: params[:student][:email],
      address: params[:student][:address],
      program: params[:student][:program]
    )
    if @student.save
      puts 'Student information saved'
      redirect_to students_path
    else
      render :new
    end
  end

  # action to display one student
  def show
    
  end

  def edit 
    
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else 
      render :edit
    end
  end

  def destroy 
    @student.destroy
    redirect_to students_path
  end

  private

  # creating a seperate action for params using strong parameters
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :address, :program)
  end

  #used this method to refactor my code , instead of the find in every method using the callback above
  def set_student
  #this is to find the student first
    @student = Student.find(params[:id])
  end
end
