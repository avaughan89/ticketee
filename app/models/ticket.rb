class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :title, :description, presence: true
  validates :description, presence: true, length: {minimum: 10}
  belongs_to :user
  mount_uploader :asset, AssetUploader
end
