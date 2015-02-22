class AddUserIdToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :user, index: true
    add_foreign_key :photos, :users
  end
end
