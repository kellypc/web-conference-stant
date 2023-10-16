require 'csv'

class Api::V1::TalksController < Api::V1::ApiController
  def show  
    @talk = Talk.find(params[:id])
    render json: @talk, status: :ok
  end
  
  def create
    CSV.foreach(params[:talks], col_sep: ",") do |row|
      talk = Talk.find_or_initialize_by(title: row[0].strip)
      talk.duration = row[1]&.strip&.gsub("min", "") || "5"
      talk.save!
    end 

    render json: { message: "success" }, status: :ok
  end

  def destroy
  end
end