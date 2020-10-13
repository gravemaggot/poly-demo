# frozen_string_literal: true

# Class Post
class Post < ApplicationRecord
  has_many :comments, as: :commentable
end
