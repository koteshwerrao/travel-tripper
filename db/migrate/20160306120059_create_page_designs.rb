class CreatePageDesigns < ActiveRecord::Migration
  def change
    create_table :page_designs do |t|
      t.string :page_title
      t.string :page_font
      t.string :header_bg_color
      t.string :body_bg_color
      t.string :about_bg_color
      t.string :services_bg_color
      t.string :portfolio_bg_color
      t.string :footer_bg_color
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
