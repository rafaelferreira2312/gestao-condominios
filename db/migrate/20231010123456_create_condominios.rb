class CreateCondominios < ActiveRecord::Migration[7.0]
    def change
      create_table :condominios do |t|
        t.string :nome, null: false
        t.string :endereco, null: false
        t.string :codigo_unico, null: false, unique: true
  
        t.timestamps
      end
    end
  end