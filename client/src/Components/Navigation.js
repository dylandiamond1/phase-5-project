import { useState } from 'react'
import {Link} from 'react-router-dom'


function Navigation({updateUser}) {

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
  
    return (
        <nav> 
           <button onClick={handleLogOut}>Log Out</button>
           <ul>
            <li><Link to='/users/new'>Sign Up</Link></li>
            <li><Link to='/login'>Login</Link></li>
            <li><Link to='/'> Home</Link></li>
           </ul>
        </nav>
    )
}

export default Navigation