class AddAttachmentPhotoToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.attachment :photo
    end
  end
end