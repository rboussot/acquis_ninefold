# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140803111639) do

  create_table "auteurs", force: true do |t|
    t.string   "prenom"
    t.string   "nom"
    t.string   "nom_entier"
    t.integer  "date_n"
    t.integer  "date_m"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "titre_genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lienthemes", force: true do |t|
    t.integer  "oeuvre_id"
    t.integer  "theme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mouvements", force: true do |t|
    t.string   "titre_mouvement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oeuvres", force: true do |t|
    t.string   "titre_oeuvre"
    t.integer  "auteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "date"
    t.integer  "genre_id"
    t.integer  "mouvement_id"
  end

  add_index "oeuvres", ["id"], name: "index_oeuvres_on_id"

  create_table "passages", force: true do |t|
    t.integer  "oeuvre_id"
    t.string   "titre_passage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video"
  end

  create_table "themes", force: true do |t|
    t.string   "titre_theme"
    t.string   "niveau"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "themes", ["id"], name: "index_themes_on_id"

  create_table "userlitts", force: true do |t|
    t.integer  "oeuvre_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
