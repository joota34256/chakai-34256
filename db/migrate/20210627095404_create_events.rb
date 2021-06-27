class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|

      t.string    :name                 , null: false
      t.string    :concept
      t.text      :detail
      t.date      :date                 , null: false
      t.integer   :number_participant   , null: false
      t.string    :organizer            , null: false
      t.string    :school
      t.integer   :extry_fee            , null: false
      t.text      :belonging
      t.integer   :target_experience_id , null: false
      t.integer   :target_age_id      , null: false
      t.integer   :target_gender_id   , null: false
      t.references  :user             , null: false, foreign_key: true

      t.timestamps
    end
  end
end
