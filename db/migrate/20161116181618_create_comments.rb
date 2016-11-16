class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true
      t.string :username
      t.text :message

      t.timestamps
    end
  end
end
