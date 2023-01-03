import {Link, useParams} from 'react-router-dom'
import img1 from './diamond.png'
import { useState, useEffect } from 'react';


function Navigation({updateUser}) {

  
  const [user, setUser] = useState({})
  const params = useParams()

  useEffect(() => {
    fetch (`/users/${params.id}`)
    .then(res => res.json())
    .then(data => { 
      console.log(data)
        setUser(data) }
)}, []);




const handleLogOut = () => {
  fetch(`/logout`, {
    method:"DELETE"
  })
  .then(res =>{
    if(res.ok){
      updateUser(false)
    }
  })
}

// useEffect(() => {
//   const handleLogOut = {
//     (`/logout`, 
//       method:"DELETE"
//     }
//   }
//     .then(res =>{
//       if(res.ok){
//         updateUser(false)
// })), []);




  // const {image} = user

    return (
      <nav style={{background: "opacity:0.6"}}> 
        <div className="navbar bg-base-100" style={{height: "8vh"}}>
          <div className="navbar-start">
            <div className="dropdown">
              <label tabIndex={0} className="btn btn-ghost btn-circle">
                <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16M4 18h7" /></svg>
                  </label>
                    <ul tabIndex={0} className="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
                          <li><Link to='AboutUs'>About Us</Link></li>
                          <li><Link to='OurProcess'>Our Process</Link></li>
                          <li><Link to='/PastProjects'>Our Houses</Link></li>
                          <li><Link to='/AddHouse'>Plan My Own House</Link></li>
                          </ul>
                        </div>
                      </div>
                    <div className="navbar-center"> 
                   <Link className="btn btn-ghost normal-case text-xl" to='/'><img src={img1} style={{width: '100px', height: '50px'}}/></Link>
                </div>
            <div className="navbar-end">
            <div className="dropdown dropdown-end">
            <label tabIndex={0} className="btn btn-ghost btn-circle avatar">
         <div className="w-24 mask mask-squircle">
        <img src="https://placeimg.com/192/192/people" />
        </div>
      </label>
      <ul tabIndex={0} className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
        <li><button onClick={handleLogOut}>Log Out</button></li>
        <li><Link to='/login'>Login</Link></li>
        <li><Link to='/users/new'>Sign Up</Link></li>
      </ul>
          </div>
        </div>
        </div>
      </nav>
    )
}

export default Navigation