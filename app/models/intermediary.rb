class Intermediary < ActiveRecord::Base
  belongs_to :source
  has_many :attacheds
end