class CreateJudgements < ActiveRecord::Migration[7.0]
  def change
    create_table :judgements do |t|
      t.string :title
      t.string :category
      t.date :published_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
