class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :account
      t.string :password
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
