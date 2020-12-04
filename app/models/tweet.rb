class Tweet < ApplicationRecord
  # belongs_to :user
  # has_many :comments

  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to_active_hash :category

  with_options presence: true do
    validates :text, :title
  end

  # with_options numericality: { other_than: 1 } do
  #   validates :category_id
  # end
end