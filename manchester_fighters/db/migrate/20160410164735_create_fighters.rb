class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :weight
      t.string :height

      t.timestamps null: false
    end
  end
end
