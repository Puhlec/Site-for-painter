class Image < ApplicationRecord
  has_many :comments
  has_one_attached :picture
  belongs_to :context

  validate :picture_presence
  
  def picture_presence
    if !self.picture.attached?
      errors.add :picture, "Excuse me WTF?"
    end
  end

  def previous
    self.context.images.where("id > ?", self.id).limit(1).first
  end
  
  def next
    self.context.images.where("id < ?", self.id).last
  end
end
