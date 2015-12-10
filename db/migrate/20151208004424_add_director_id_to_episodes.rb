class AddDirectorIdToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :director_id, :integer  
  end
end
