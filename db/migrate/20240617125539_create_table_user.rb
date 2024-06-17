# frozen_string_literal: true

class CreateTableUser < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :second_name, null: false
      t.string :password, null: false
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.timestamps
    end
  end
end
