class CreateCharterSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :charter_schools do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :website
      t.float :test_scores
      t.float :graduation_rate
      t.string :preview

      t.timestamps
    end
  end
end
