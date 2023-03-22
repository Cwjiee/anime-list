class RemoveCharactersFromAnime < ActiveRecord::Migration[7.0]
  def change
    remove_column :animes, :character1
    remove_column :animes, :character2
    remove_column :animes, :character3
    remove_column :animes, :character4
  end
end
