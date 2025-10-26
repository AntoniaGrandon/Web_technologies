class ChangeChallengecategories < ActiveRecord::Migration[8.0]
  def change
    change_column :challenges, :categories, :integer, using: 'categories::integer', default: 0, null: false
  end
end
