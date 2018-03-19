class CreateAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :accesses do |t|

      t.timestamps

      t.date :received
      t.string :patient_name
      t.string :verified
      t.string :type_info
      t.string :response
      t.string :fees
      t.date :closed
      t.text :comments
    end
  end
end
