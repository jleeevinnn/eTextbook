class AddSectionToChapter < ActiveRecord::Migration[5.0]
  def change
    add_reference :chapters, :section, foreign_key: true
  end
end
