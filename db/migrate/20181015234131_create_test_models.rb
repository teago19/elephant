class CreateTestModels < ActiveRecord::Migration[5.1]
  def change
    create_table :test_models do |t|
      t.string :attribute_1
      t.string :attribute_2
      t.string :attribute_3
      t.string :attribute_4

      t.timestamps
    end
  end
end
