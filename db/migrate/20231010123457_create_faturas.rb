class CreateFaturas < ActiveRecord::Migration[7.0]
    def change
      create_table :faturas do |t|
        t.decimal :valor, null: false, precision: 10, scale: 2
        t.date :data_vencimento, null: false
        t.string :tipo_servico, null: false
        t.references :condominio, null: false, foreign_key: true
  
        t.timestamps
      end
    end
  end