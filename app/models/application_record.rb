# frozen_string_literal: true

# クラスの１行上にコメントを書く
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
