class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :Brand
      t.string :Product_Name
      t.string :Features
      t.string :Information
      t.string :Performance_Levels
      t.string :Signal_Processing_Gain
      t.integer :Hearing_Programs

      t.timestamps
    end
  end
end
