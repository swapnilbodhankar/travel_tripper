class CreateThemeFeatures < ActiveRecord::Migration
  def change
    create_table :theme_features do |t|
      t.string :color_class
      t.string :font_family
      t.string :title

      t.timestamps null: false
    end
  end
end
