

ActiveRecord::Schema.define(version: 20140128172258) do

  create_table "clients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  
  create_table "attractions", force: true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attractions", ["client_id"], name: "index_attractions_on_client_id"

  
  create_table "reviews", force: true do |t|
    t.string   "reviewer"
    t.text     "review"
    t.integer  "attraction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["attraction_id"], name: "index_reviews_on_attraction_id"

  
end
