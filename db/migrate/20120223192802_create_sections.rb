class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title, limit:20
      t.string :subtitle, limit:40
      t.text :description
      t.integer :priority, default:0

      t.timestamps
    end
  end
end
