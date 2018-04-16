class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
