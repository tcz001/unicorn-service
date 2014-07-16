# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
beacons = Beacon.create([{UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '4000', location: 'my home'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '5000', location: 'my home'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '6000', location: 'my home'},
                        ])
unicorns = []
beacons.each { |_|
  unicorns << Unicorn.create({name: 'Fake1'})
  unicorns << Unicorn.create({name: 'Fake1'})
}
beacons.each { |beacon|
  Engagement.create(unicorn_id: unicorns[0].id, beacon_id: beacon.id)
  Engagement.create(unicorn_id: unicorns[1].id, beacon_id: beacon.id)
}
