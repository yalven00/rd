class CreateRibbits < ActiveRecord::Migration[7.2]
  def change
    create_table :ribbits do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
