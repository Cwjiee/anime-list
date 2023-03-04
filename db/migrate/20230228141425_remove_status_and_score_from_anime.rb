class RemoveStatusAndScoreFromAnime < ActiveRecord::Migration[7.0]
  def change
    remove_column :animes, :status, :string
    remove_column :animes, :score, :integer
  end
end
