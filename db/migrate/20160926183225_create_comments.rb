class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :article, index: true
      t.string :author_name
      t.text :body
    end
  end
end
