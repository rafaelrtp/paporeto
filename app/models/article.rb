class Article < ActiveRecord::Base
  validates :title, :category, presence: true

  uploads_one :picture, thumb: [100, 100], regular: [600, 300]

  belongs_to :category

  paginates_per 5

  def to_param
    "#{id} #{title}".parameterize
  end
end
