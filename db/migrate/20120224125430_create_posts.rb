class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :section_id
      t.integer :post_format_id
      t.string :title, limit:100
      t.string :title_href, limit:100
      t.string :subtitle, limit:100
      t.string :subtitle_href, limit:100
      t.text :text
      t.string :paperclip_asset_file_name

      t.timestamps
    end
  end
end
