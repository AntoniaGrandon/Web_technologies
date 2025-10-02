class CreateProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.integer :points_earned
      t.string :update_frequency

      t.timestamps
    end
  end
end
