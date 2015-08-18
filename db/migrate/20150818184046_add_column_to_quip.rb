class AddColumnToQuip < ActiveRecord::Migration
  def change
    add_column :quips, :setting_id, :integer, foreign_key: true
  end
end
