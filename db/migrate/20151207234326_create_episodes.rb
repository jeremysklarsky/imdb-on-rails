class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :season_id
      t.float :rating
      t.timestamps null: false
      t.string :imdbID
    end
  end
end
