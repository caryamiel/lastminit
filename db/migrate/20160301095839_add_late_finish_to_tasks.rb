class AddLateFinishToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :lateFinish, :date
  end
end
