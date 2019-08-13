# == Schema Information
#
# Table name: post_subs
#
#  id      :bigint           not null, primary key
#  post_id :integer          not null
#  sub_id  :integer          not null
#

class PostSub < ApplicationRecord
  belongs_to :sub
  belongs_to :post
end
