class AddAttachmentFotoToRestaurantes < ActiveRecord::Migration
  def self.up
    change_table :restaurantes do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :restaurantes, :foto
  end
end
