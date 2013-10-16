class CreateRainbows < ActiveRecord::Migration
  def change
    create_table :rainbows do |t|
      t.string :name
      t.text :description
      t.boolean :pretty

      t.timestamps
    end
  end
end
