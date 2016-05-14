class Season < ActiveRecord::Base
  belongs_to :series_temp
  has_many :chapters, dependent: :destroy
  accepts_nested_attributes_for :chapters, reject_if: :all_blank, allow_destroy: true

end
