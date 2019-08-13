# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  url        :string
#  content    :string
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  
  has_many :post_subs, dependent: :destroy
  
  has_many :subs,
  through: :post_subs,
  source: :sub

  has_many :comments


  def top_level_comments
    self.comments.where('parent_comment_id IS NULL') 
  end
end
