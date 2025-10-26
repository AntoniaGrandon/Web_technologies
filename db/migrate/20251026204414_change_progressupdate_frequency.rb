class ChangeProgressupdateFrequency < ActiveRecord::Migration[8.0]
  def change
    change_column :progresses, :update_frequency, :integer, using: 'update_frequency::integer', default: 0, null: false
  end
end
