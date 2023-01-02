puts "seeding cities..."

c1 = Cities.create(name:'Alexandria')
c2 = Cities.create(name:'Fairfax')
c3 = Cities.create(name:'Reston')
c4 = Cities.create(name:'Vienna')
c5 = Cities.create(name:'McLean')
c6 = Cities.create(name:'Great Falls')
c7 = Cities.create(name:'Falls Church')
c8 = Cities.create(name:'Herndon')
c9 = Cities.create(name:'Chantilly')
c10 = Cities.create(name:'Fairfax Station')

puts "cities done"
puts "seeding schools..."

d1 = School.create(elementary_school:'Douglas MacArthur Elementary School', middle_school:'Francis C. Hammond Middle School', high_school:'Robert E Lee School High School', city_id:c1)
d2 = School.create(elementary_school:'Mosaic Elementary School', middle_school:'Luther Jackson Middle School', high_school:'Fairfax High School', city_id:c2)
d3 = School.create(elementary_school:'Lake Anne Elementary School', middle_school:'Langston Hughes Middle School', high_school:'South Lakes High School', city_id:c3)
d4 = School.create(elementary_school:'Vienna Elementary School', middle_school:'Thoreau Middle School', high_school:'Madison High School', city_id:c4)
d5 = School.create(elementary_school:'Franklin Sherman Elementary School', middle_school:'Cooper Middle School', high_school:'Langley High School', city_id:c5)
d6 = School.create(elementary_school:'Great Falls Elementary School', middle_school:'Cooper Middle School', high_school:'Potomac Falls High School', city_id:c6)
d7 = School.create(elementary_school:'Oak Street Elementary School', middle_school:'Mary Ellen Henderson Middle Schoo', high_school:'Meridian High School', city_id:c7)
d8 = School.create(elementary_school:'Herndon Elementary School', middle_school:'Herndon Middle School', high_school:'Herndon High School', city_id:c8)
d9 = School.create(elementary_school:'Montessori School of Chantilly', middle_school:'Franklin Middle School', high_school:'Chantilly High School', city_id:c9)
d10 = School.create(elementary_school:'Fairview Elementary School', middle_school:'James W Robinson, Jr. Secondary School', high_school:'James W Robinson, Jr. Secondary School', city_id:c10)

puts "schools done"
puts "seeding architects..."

a1 = Architect.create(company_name:'AV Architects Build', first_name:'Francisca', last_name:'Alonso', email:'Info@AVArchitectsBuild.com', contact_number:'703-270-0384', website_url:'https://www.avarchitectsbuild.com/about-us/')
a1 = Architect.create(company_name:'commonwealth home', first_name:'Susan', last_name:'Pierce', email:'info@commonwealthhome.com', contact_number:'703-255-9861', website_url:'https://commonwealthhomedesign.com/')
a1 = Architect.create(company_name:'defalco home design', first_name:'Tripp', last_name:'DeFalco', email:'info@defalcohomedesign.com', contact_number:'703-483-2427', website_url:'https://defalcohomedesign.com/')
a1 = Architect.create(company_name:'schroeder design build', first_name:'Andrew', last_name:'Schroeder', email:'info@schroederdesignbuild.com', contact_number:'703-449-1700', website_url:'https://www.schroederdesignbuild.com/')
a1 = Architect.create(company_name:'wcarlston build', first_name:'Warren', last_name:'Ralston', email:'info@wcarlston.com', contact_number:'703-667-7861', website_url:'https://www.wcralston.com/')
a1 = Architect.create(company_name:'bowersdesignbuild', first_name:'Bruce', last_name:'Bowers', email:'info@bowersdesignbuild.com', contact_number:'703 506-0619', website_url:'https://www.bowersdesignbuild.com/')

puts "creating users..."

u1 = User.create(username: 'paolo', password: 'password', email: 'paolo@gmail.com', image:'https://www.inprocorp.com/globalassets/color--finish-images/standard-solid/island-blue.jpg?width=500&height=500&mode=crop')
u2 = User.create(username: 'dylan', password: 'password', email: 'dylan@gmail.com', image: 'https://www.inprocorp.com/globalassets/color--finish-images/standard-solid/buoyantblue.jpg?width=500&height=500&mode=crop')
u3 = User.create(username: 'samuel', password: 'password', email: 'sam@gmail.com', image: 'https://i.pinimg.com/236x/23/ec/9f/23ec9f4f80edc218e8fc30d17a96cb59--solid-colors.jpg')
u4 = User.create(username: 'stephen', password: 'password', email: 'stephen@gmail.com', image: 'https://garden.spoonflower.com/c/13106794/p/f/m/StvCYNmO0hkyELWOfpKhilx37H8Y6qCvxUfiHYZaBU01ITWVZrbv/pink%20rose%20coral%20salmon%20blush%20fuchsia%20pastel%20pastels%20solid%20color.jpg')
u5 = User.create(username: 'kodakbrindle', password: 'password', email: 'kodakbrindle@gmail.com', image: 'https://i.pinimg.com/236x/36/fa/e0/36fae04d112cc0f871d82ce2ff11dd5a.jpg')
u6 = User.create(username: 'junosmith', password: 'password', email: 'junosmith@gmail.com', image: 'https://www.inprocorp.com/globalassets/color--finish-images/standard-solid/porcelain-blue.jpg?width=500&height=500&mode=crop')
u7 = User.create(username: 'yesenia', password: 'password', email: 'yesenia@gmail.com', image: 'https://bodaq.com/wp-content/uploads/2019/08/bodaq-s143-solid-color-interior-film-solid-color-collection-300x300.jpg')

puts "created users"


b1 = House.create(address:'1718 Westmoreland Street', state:'VA', zip:'22101', city:'Mclean', sq_ft: '7,000', user_id: u1.id, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2020/05/Screenshot-263-1024x568.png')
b2 = House.create(address:'1011 Washington Street North', state:'VA', zip:'22314', city:'Alexandria', sq_ft: '7,700', user_id: u2.id, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2019/09/Screenshot-206.png')
b3 = House.create(address:'222 W Greenway Blvd', state:'VA', zip:'22046', city:'Falls Church', sq_ft: '11,800', user_id: u3.id, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2022/08/build-a-home-northern-virginia-1024x554.png')
b4 = House.create(address:'320 Glyndon St Ne', state:'VA', zip:'22180', city:'Vienna',sq_ft: '6,990', user_id: u4.id, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2019/09/Screenshot-252-1024x570.png')
b5 = House.create(address:'12411 Vacation Pl', state:'VA', zip:'20170', city:'Herndon',sq_ft: '8,100', user_id: u5.id,  image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2021/11/Contemporary-Elevation.png')
b6 = House.create(address:'10617 Timberidge Rd', state:'VA', zip:'22039', city:'Fairfax Station',sq_ft: '6000', user_id: u1.id, image:'https://www.buildwithclassic.com/2019/wp-content/uploads/2019/09/sedona-new-600x337.jpg')
b7 = House.create(address:'25691 Donerails Chase Dr', state:'', zip:'20152', city:'Chantilly',sq_ft: '5,121', user_id: u1.id, image:'https://photos.zillowstatic.com/fp/0b81cea97aca4d9be7a65a96e22682aa-cc_ft_1536.webp')
b8 = House.create(address:'9616 Georgetown Pike', state:'VA', zip:'22066', city:'Great Falls',sq_ft: '15,000', user_id: u1.id, image:'https://photos.zillowstatic.com/fp/e45b265430325be592f37bf320239dce-cc_ft_1536.webp')
b9 = House.create(address:'11194 Longwood Grove Dr', state:'VA', zip:'20194', city:'Reston',sq_ft: '4,138', user_id: u3.id, image:'https://photos.zillowstatic.com/fp/64ad40b3b61e736fc4507ee9dc45a73a-cc_ft_1536.webp')
b10 = House.create(address:'11721 Washington St', state:'VA', zip:'22030', city:'Fairfax',sq_ft: '14,091', user_id: u2.id,image:'https://photos.zillowstatic.com/fp/2aea398bc09ceb631c98a1c11d743006-cc_ft_1536.webp')

puts "houses done"



puts "done seeding..."