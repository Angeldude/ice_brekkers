class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :person

      t.timestamps null: false
    end
  end
end
