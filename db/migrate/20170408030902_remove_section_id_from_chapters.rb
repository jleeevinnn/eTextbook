class RemoveSectionIdFromChapters < ActiveRecord::Migration[5.0]
  def change
    remove_column :chapters, :section_id, :integer
    remove_column :chapters, :chapter_id, :integer
  end
end
