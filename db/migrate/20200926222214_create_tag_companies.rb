# frozen_string_literal: true

class CreateTagCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_companies do |t|
      t.belongs_to :tag, foreign_key: true
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
