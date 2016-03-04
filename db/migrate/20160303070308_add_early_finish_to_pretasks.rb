class AddEarlyFinishToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :earlyFinish, :string
  end
end
