class CreateChildPages < ActiveRecord::Migration
  def change
    create_table :child_pages do |t|
      t.string :title
      t.text :body
      t.integer :parent_page_id

      t.timestamps
    end
  end
end
