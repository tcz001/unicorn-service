# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
beacons = Beacon.create([{UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '1000', location: 'my home'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '2000', location: 'room 1'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '3000', location: 'room 2'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '4000', location: 'room 3'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '5000', location: 'room 4'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '6000', location: 'room 5'},
                         {UUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', major: '1000', minor: '7000', location: 'room 6'},
                        ])
unicorns = []
beacons.each { |_|
  unicorns << Unicorn.create({name: 'Fake1'})
  unicorns << Unicorn.create({name: 'Fake2'})
  unicorns << Unicorn.create({name: 'Fake3'})
}
beacons.each { |beacon|
  Engagement.create(unicorn_id: unicorns[0].id, beacon_id: beacon.id)
  Engagement.create(unicorn_id: unicorns[1].id, beacon_id: beacon.id)
  Engagement.create(unicorn_id: unicorns[2].id, beacon_id: beacon.id)
}
