class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.string :period
      t.references :conference, null: false, foreign_key: true

      t.timestamps
    end
  end
end
