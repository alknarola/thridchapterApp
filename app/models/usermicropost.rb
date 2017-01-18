class Usermicropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image, :attachment_content_type => { :content_type => ['image/png','image/jpeg','image/jpg']}
  has_attached_file :image,
  styles: { thumb: ["64x64#", :jpg],
  original: ['800x500>', :jpg] },
  convert_options: { thumb: "-quality 75 -strip", preserve_files: "true",
  original: "-quality 85 -strip", url: "/system/:hash.:extension",
  hash_secret: "abc123"}

  private

    # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
