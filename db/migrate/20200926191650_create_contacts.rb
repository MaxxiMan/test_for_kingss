# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.integer :user_id, null: false
      t.integer :company_id, null: false

      t.timestamps
    end
  end
end
