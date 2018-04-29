class CreateDowloadLogs < ActiveRecord::Migration
  def change
    create_table :dowload_logs do |t|
      t.integer :download_id
      t.datetime :download_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
