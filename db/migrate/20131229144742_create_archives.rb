class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :title
      t.text :body
      t.text :img

      t.timestamps
    end
  end
end
