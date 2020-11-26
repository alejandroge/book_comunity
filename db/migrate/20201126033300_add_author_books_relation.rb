class AddAuthorBooksRelation < ActiveRecord::Migration[6.0]
  def change
    create_join_table :authors, :books

    change_table :books do |b|
      b.remove :author
    end
  end
end
