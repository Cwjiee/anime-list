class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.integer :anime_id
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
