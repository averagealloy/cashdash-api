class RenameTypeOfTransColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :type_of_trans, :kind
  end
end
