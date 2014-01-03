class AddAdateToArchive < ActiveRecord::Migration
  def change
    add_column :archives, :adate, :date
  end
end
