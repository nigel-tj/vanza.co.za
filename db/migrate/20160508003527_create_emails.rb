class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :from
      t.string :to
      t.text :subject
      t.string :body

      t.timestamps null: false
    end
  end
end
