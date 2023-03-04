class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :status
      t.integer :score
      t.float :average_score
      t.datetime :release_date
      t.string :studios
      t.string :character1
      t.string :character2
      t.string :character3
      t.string :character4

      t.timestamps
    end
  end
end
