class AddEarlyStartToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :earlyStart, :string
  end
end
