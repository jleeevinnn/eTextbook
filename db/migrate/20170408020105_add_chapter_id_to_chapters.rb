class AddChapterIdToChapters < ActiveRecord::Migration[5.0]
  def change
  	    add_column :chapters, :chapter_id, :integer
  end
end
