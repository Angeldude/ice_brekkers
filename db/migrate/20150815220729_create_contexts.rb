class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.string :situation

      t.timestamps null: false
    end
  end
end
