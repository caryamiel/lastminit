class AddDurationToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :duration, :string
  end
end
