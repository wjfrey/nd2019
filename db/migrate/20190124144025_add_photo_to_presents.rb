class AddPhotoToPresents < ActiveRecord::Migration[5.2]
  def change
    add_column :presents, :photo, :string
  end
end
