# frozen_string_literal: true

# Class Post
class Image < ApplicationRecord
  has_many :comments, as: :commentable
end
