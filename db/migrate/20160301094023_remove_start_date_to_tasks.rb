class RemoveStartDateToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :startDate, :date
  end
end
