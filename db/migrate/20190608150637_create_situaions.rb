class CreateSituaions < ActiveRecord::Migration[5.2]
  def change
    create_table :situaions do |t|
      t.string :s_name
      t.string :s_type
      t.string :s_description
      t.string :s_role
      t.string :s_price

      t.timestamps
    end
  end
end
