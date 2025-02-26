class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save
    redirect_to doctor_path(@doctor)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
