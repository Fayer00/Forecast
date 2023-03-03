# frozen_string_literal: true

class CreateSearchHistory < ActiveRecord::Migration[7.0]
  def change
    create_table :search_histories do |t|
      t.string :city
      t.string :latitude
      t.string :longitude
      t.string :temp_c
      t.string :temp_f
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
