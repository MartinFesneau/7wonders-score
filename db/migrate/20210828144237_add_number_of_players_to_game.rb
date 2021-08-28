class AddNumberOfPlayersToGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :number_of_players, :integer, null: false, default: 3
  end
end
