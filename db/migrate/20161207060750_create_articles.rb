class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.datetime :pots_date
      t.boolean :is_public
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
