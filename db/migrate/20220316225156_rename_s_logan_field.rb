class RenameSLoganField < ActiveRecord::Migration[7.0]
  def change
    rename_column :slogans, :slogan, :suggestion
  end
end
