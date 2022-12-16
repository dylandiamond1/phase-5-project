puts "seeding cities"

c1 = City.create(name:'Alexandria')
c2 = City.create(name:'Fairfax')
c3 = City.create(name:'Reston')
c4 = City.create(name:'Vienna')
c5 = City.create(name:'McLean')
c6 = City.create(name:'Great Falls')
c7 = City.create(name:'Falls Church')
c8 = City.create(name:'Herndon')
c9 = City.create(name:'Chantilly')
c10 = City.create(name:'Fairfax Station')


u1 = User.create(username: 'paolo', password: 'password', email: 'paolo@gmail.com')
u2 = User.create(username: 'dylan', password: 'password', email: 'dylan@gmail.com')
u3 = User.create(username: 'samuel', password: 'password', email: 'sam@gmail.com')
u4 = User.create(username: 'stephen', password: 'password', email: 'stephen@gmail.com')
u5 = User.create(username: 'kodakbrindle', password: 'password', email: 'kodakbrindle@gmail.com')
u6 = User.create(username: 'junosmith', password: 'password', email: 'junosmith@gmail.com')
u7 = User.create(username: 'yesenia', password: 'password', email: 'yesenia@gmail.com')

puts "done seeding..."