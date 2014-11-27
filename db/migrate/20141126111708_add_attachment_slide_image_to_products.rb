class AddAttachmentSlideImageToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :slide_image
    end
  end

  def self.down
    remove_attachment :products, :slide_image
  end
end
