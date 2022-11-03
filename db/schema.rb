# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_03_124048) do
  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.text "cnh"
    t.integer "veiculo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["veiculo_id"], name: "index_owners_on_veiculo_id"
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "placa"
    t.string "modelo"
    t.string "cor"
    t.string "observacao"
    t.boolean "ativa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "owners", "veiculos"
end
