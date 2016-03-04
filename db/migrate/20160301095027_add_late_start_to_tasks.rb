class AddLateStartToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :lateStart, :date
  end
end
