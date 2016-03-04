class AddActivityIdToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :activityID, :string
  end
end
