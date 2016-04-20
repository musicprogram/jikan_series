class SeriesTemp < ActiveRecord::Base
  has_many :seasons, dependent: :destroy
  accepts_nested_attributes_for :seasons, reject_if: :all_blank, allow_destroy: true
  
  has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\Z/
  
  has_attached_file :baner, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :baner, content_type: /\Aimage\/.*\Z/
    
end
