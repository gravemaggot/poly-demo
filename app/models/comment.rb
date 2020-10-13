# frozen_string_literal: true

# Class Comment
class Comment < ApplicationRecord
  belongs_to :commentable, polimorphic: true
end
