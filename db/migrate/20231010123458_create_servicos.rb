class CreateServicos < ActiveRecord::Migration[7.0]
    def change
      create_table :servicos do |t|
        t.string :tipo, null: false, unique: true
  
        t.timestamps
      end
    end
  end