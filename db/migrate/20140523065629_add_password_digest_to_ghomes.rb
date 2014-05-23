class AddPasswordDigestToGhomes < ActiveRecord::Migration
  def change
    add_column :ghomes, :password_digest, :string
  end
end
