class AddUserIdToMotor < ActiveRecord::Migration
  def change
    add_column :motors, :user_id, :integer
    add_index :motors, :user_id
  end
end
