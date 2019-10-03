class AddTranslationToNoun < ActiveRecord::Migration[6.0]
  def change
    add_column :nouns, :translation, :string
  end
end
