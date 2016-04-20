class Season < ActiveRecord::Base
  belongs_to :series_temp
  has_many :chapters, dependent: :destroy
  accepts_nested_attributes_for :chapters, reject_if: :all_blank, allow_destroy: true
  has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\Z/
  
     
  
end
