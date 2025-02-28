ActiveRecord::Schema[7.0].define(version: 2023_10_10_123458) do
    create_table "condominios", force: :cascade do |t|
      t.string "nome", null: false
      t.string "endereco", null: false
      t.string "codigo_unico", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["codigo_unico"], name: "index_condominios_on_codigo_unico", unique: true
    end
  
    create_table "faturas", force: :cascade do |t|
      t.decimal "valor", precision: 10, scale: 2, null: false
      t.date "data_vencimento", null: false
      t.string "tipo_servico", null: false
      t.integer "condominio_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["condominio_id"], name: "index_faturas_on_condominio_id"
    end
  
    create_table "servicos", force: :cascade do |t|
      t.string "tipo", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["tipo"], name: "index_servicos_on_tipo", unique: true
    end
  
    add_foreign_key "faturas", "condominios"
  end