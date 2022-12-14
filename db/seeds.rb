puts "seeding cities..."

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

puts "cities done"
puts "seeding schools..."

d1 = School.create(elementary_school:'Douglas MacArthur Elementary School', middle_school:'Francis C. Hammond Middle School', high_school:'Robert E Lee School High School')
d2 = School.create(elementary_school:'Mosaic Elementary School', middle_school:'Luther Jackson Middle School', high_school:'Fairfax High School')
d3 = School.create(elementary_school:'Lake Anne Elementary School', middle_school:'Langston Hughes Middle School', high_school:'South Lakes High School')
d4 = School.create(elementary_school:'Vienna Elementary School', middle_school:'Thoreau Middle School', high_school:'Madison High School')
d5 = School.create(elementary_school:'Franklin Sherman Elementary School', middle_school:'Cooper Middle School', high_school:'Langley High School')
d6 = School.create(elementary_school:'Great Falls Elementary School', middle_school:'Cooper Middle School', high_school:'Potomac Falls High School')
d7 = School.create(elementary_school:'Oak Street Elementary School', middle_school:'Mary Ellen Henderson Middle Schoo', high_school:'Meridian High School')
d8 = School.create(elementary_school:'Herndon Elementary School', middle_school:'Herndon Middle School', high_school:'Herndon High School')
d9 = School.create(elementary_school:'Montessori School of Chantilly', middle_school:'Franklin Middle School', high_school:'Chantilly High School')
d10 = School.create(elementary_school:'Fairview Elementary School', middle_school:'James W Robinson, Jr. Secondary School', high_school:'James W Robinson, Jr. Secondary School')

puts "schools done"
puts "seeding architects..."

a1 = Architect.create(company_name:'AV Architects Build', first_name:'Francisca', last_name:'Alonso', email:'Info@AVArchitectsBuild.com', contact_number:'703-270-0384', website_url:'https://www.avarchitectsbuild.com/about-us/')
a1 = Architect.create(company_name:'commonwealth home', first_name:'Susan', last_name:'Pierce', email:'info@commonwealthhome.com', contact_number:'703-255-9861', website_url:'https://commonwealthhomedesign.com/')
a1 = Architect.create(company_name:'defalco home design', first_name:'Tripp', last_name:'DeFalco', email:'info@defalcohomedesign.com', contact_number:'703-483-2427', website_url:'https://defalcohomedesign.com/')
a1 = Architect.create(company_name:'schroeder design build', first_name:'Andrew', last_name:'Schroeder', email:'info@schroederdesignbuild.com', contact_number:'703-449-1700', website_url:'https://www.schroederdesignbuild.com/')
a1 = Architect.create(company_name:'wcarlston build', first_name:'Warren', last_name:'Ralston', email:'info@wcarlston.com', contact_number:'703-667-7861', website_url:'https://www.wcralston.com/')
a1 = Architect.create(company_name:'bowersdesignbuild', first_name:'Bruce', last_name:'Bowers', email:'info@bowersdesignbuild.com', contact_number:'703 506-0619', website_url:'https://www.bowersdesignbuild.com/')

puts "architects done"
puts "seeding houses..."

b1 = House.create(address:'1718 Westmoreland Street', state:'VA', zip:'22101', city:'Mclean', sq_ft: 7,000, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2020/05/Screenshot-263-1024x568.png')
b2 = House.create(address:'1011 Washington Street North', state:'VA', zip:'22314', city:'Alexandria', sq_ft: 7,700, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2019/09/Screenshot-206.png')
b3 = House.create(address:'222 W Greenway Blvd', state:'VA', zip:'22046', city:'Falls Church', sq_ft: 11,800 , image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2022/08/build-a-home-northern-virginia-1024x554.png')
b4 = House.create(address:'320 Glyndon St Ne', state:'VA', zip:'22180', city:'Vienna',sq_ft: 6,990, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2019/09/Screenshot-252-1024x570.png')
b5 = House.create(address:'', state:'', zip:'', city:'Herndon',sq_ft: 8,100, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2021/11/Contemporary-Elevation.png')
b6 = House.create(address:'', state:'', zip:'', city:'Mclean',sq_ft: '', image:'')
b7 = House.create(address:'', state:'', zip:'', city:'Mclean',sq_ft: '', image:'')
b8 = House.create(address:'', state:'', zip:'', city:'Mclean',sq_ft: '', image:'')
b9 = House.create(address:'', state:'', zip:'', city:'Mclean',sq_ft: '', image:'')
b10 = House.create(address:'', state:'', zip:'', city:'Mclean',sq_ft: '', image:'')

puts "houses done"

u1 = User.create(username: 'paolo', password: 'password', email: 'paolo@gmail.com')
u2 = User.create(username: 'dylan', password: 'password', email: 'dylan@gmail.com')
u3 = User.create(username: 'samuel', password: 'password', email: 'sam@gmail.com')
u4 = User.create(username: 'stephen', password: 'password', email: 'stephen@gmail.com')
u5 = User.create(username: 'kodakbrindle', password: 'password', email: 'kodakbrindle@gmail.com')
u6 = User.create(username: 'junosmith', password: 'password', email: 'junosmith@gmail.com')
u7 = User.create(username: 'yesenia', password: 'password', email: 'yesenia@gmail.com')

puts "done seeding..."