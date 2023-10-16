require 'csv'

class Api::V1::TalksController < Api::V1::ApiController
  def show  
    @talk = Talk.find(params[:id])
    render json: @talk, status: :ok
  end
  
  def create
    CSV.foreach(params[:talks], headers: true, col_sep: ",") do |row|
      if row[1].nil?
        duration = 5
        Talk.create!(title: row[0].strip, duration: duration)
      else
        Talk.create!(title: row[0].strip, duration: row[1].strip.gsub("min", ""))
      end
    end 

    render json: { message: "success" }, status: :ok
  end

  def destroy
  end
end