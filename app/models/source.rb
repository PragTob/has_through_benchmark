class Source < ActiveRecord::Base
  has_many :intermediaries
  has_many :directly_attacheds
  has_many :attacheds, through: :intermediaries
end