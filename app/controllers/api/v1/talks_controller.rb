require 'csv'

class Api::V1::TalksController < Api::V1::ApiController
  def show  
    @talk = Talk.find(params[:id])
    render json: @talk, status: :ok
  end
  
  def create
    read_file_and_save_talk

    render json: { message: "Arquivo recebido com sucesso"}
  end

  def destroy
  end

  private

  def read_file_and_save_talk
    CSV.foreach(params[:talks], col_sep: ",") do |row|
      talk = Talk.find_or_initialize_by(title: row[0].strip)
      talk.duration = row[1]&.strip&.gsub("min", "") || "5"
      talk.save!
    end
  end
end