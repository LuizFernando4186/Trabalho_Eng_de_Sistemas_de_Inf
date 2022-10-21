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

ActiveRecord::Schema[7.0].define(version: 2022_10_21_195800) do
  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.integer "nusp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.integer "nusp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provas", force: :cascade do |t|
    t.string "disciplina"
    t.integer "nusp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questaos", force: :cascade do |t|
    t.string "grupo_questao"
    t.string "tipo"
    t.string "titulo"
    t.text "enunciado"
    t.integer "total_alternativas"
    t.integer "alternativas_aluno"
    t.text "alternativas", default: "--- []\n"
    t.integer "alternativa_correta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
