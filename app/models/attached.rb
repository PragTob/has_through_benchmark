class Attached < ActiveRecord::Base
  belongs_to :intermediary
  belongs_to :source
end