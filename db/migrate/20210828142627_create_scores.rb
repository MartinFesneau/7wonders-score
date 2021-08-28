class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.references :game, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true
      t.boolean :win, null: false, default: false
      t.integer :war, null: false, default: 0
      t.integer :coins, null: false, default: 0
      t.integer :wonder, null: false, default: 0
      t.integer :yellow, null: false, default: 0
      t.integer :green, null: false, default: 0
      t.integer :blue, null: false, default: 0
      t.integer :violet, null: false, default: 0
      t.integer :black, null: false, default: 0
      t.integer :leader, null: false, default: 0
      t.integer :other, null: false, default: 0
      t.integer :total, null: false, default: 0

      t.timestamps
    end
  end
end
