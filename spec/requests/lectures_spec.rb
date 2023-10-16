require 'rails_helper'
require 'csv'

RSpec.describe "/lectures_document", type: :request do
  context 'post' do
    palestra = CSV.read('spec/support/lectures.csv', :row_sep => "\r", :col_sep => ",") do |row|
      puts "TEST: #{row[0]}"
    end

    it 'created correctly' do
      post api_v1_lectures_document_index_path, params: { lectures: palestra }

      expect(response).to have_http_status(:ok)
    end
  end
end