class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.belongs_to :photo, index: true

      t.timestamps null: false
    end
    add_foreign_key :endorsements, :photos
  end
end
