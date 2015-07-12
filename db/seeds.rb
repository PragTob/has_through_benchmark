# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  100_000.times do
    source         = Source.create!
    source_id      = source.id
    intermediary   = Intermediary.create! source_id: source_id
    intermediar_id = intermediary.id
    3.times do
      DirectlyAttached.create! source_id: source_id
      Attached.create! intermediary_id: intermediar_id
    end
  end
end