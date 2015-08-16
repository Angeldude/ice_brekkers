class CreateQuips < ActiveRecord::Migration
  def change
    create_table :quips do |t|
      t.text :tips
      t.references :context, index: true, foreign_key: true
      t.references :target, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
