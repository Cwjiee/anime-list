class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :anime, foreign_key: true
      t.string :status
      t.float :score
      t.datetime :start_date
      t.datetime :finish_date

      t.timestamps
    end
  end
end
