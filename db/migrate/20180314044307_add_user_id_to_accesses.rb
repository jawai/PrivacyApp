class AddUserIdToAccesses < ActiveRecord::Migration[5.1]
  def change
    add_reference :accesses, :user, foreign_key: true
  end
end
