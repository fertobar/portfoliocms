class CreatePostFormats < ActiveRecord::Migration
  def change
    create_table :post_formats do |t|
      t.string :name, limit:100
      t.text :description

      t.timestamps
    end
  end
end
