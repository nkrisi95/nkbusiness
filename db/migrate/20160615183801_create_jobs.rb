class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :jobs, [:user_id, :created_at]
  end
end
