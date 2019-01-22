class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.string :title
      t.string :link
      t.boolean :available, default: true
      t.string :pic

      t.timestamps
    end
  end
end
