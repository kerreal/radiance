class CreateMazes < ActiveRecord::Migration[5.2]
  def change
    create_table :mazes do |t|
      t.string :source
      t.timestamps
    end
  end
end
