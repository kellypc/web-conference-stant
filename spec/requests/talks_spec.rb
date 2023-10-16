require 'rails_helper'
require 'csv'

RSpec.describe "/talks", type: :request do
  context 'post' do
    palestra = CSV.read('spec/support/talks.csv', :row_sep => "\r", :col_sep => ",") do |row|
      puts "TEST: #{row[0]}"
    end

    it 'created correctly' do
      post api_v1_talks_index_path, params: { talks: palestra }

      expect(response).to have_http_status(:ok)
    end
  end
end