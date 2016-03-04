class AddCritPathToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :critPath, :string
  end
end
