require 'csv'

class Api::V1::LecturesController < Api::V1::ApiController
  def show  
    @lecture = Lecture.find(params[:id])
    render json: @lecture, status: :ok
  end
  
  def create
    CSV.foreach(params[:lectures], headers: true, col_sep: ",") do |row|
      Lecture.create!(title: row[0].strip, duration: row[1].strip.gsub("min", ""))
    end 

    render json: { message: "success" }, status: :ok
  end

  def destroy
  end
end