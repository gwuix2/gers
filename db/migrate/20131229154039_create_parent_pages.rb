class CreateParentPages < ActiveRecord::Migration
  def change
    create_table :parent_pages do |t|
      t.string :title

      t.timestamps
    end
  end
end
