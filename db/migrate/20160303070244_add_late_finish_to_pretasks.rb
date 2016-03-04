class AddLateFinishToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :lateFinish, :string
  end
end
