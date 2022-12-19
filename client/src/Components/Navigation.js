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
        <div className="navbar bg-base-100">
          <div className="navbar-start">
            <div className="dropdown">
              <label tabIndex={0} className="btn btn-ghost btn-circle">
                <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16M4 18h7" /></svg>
                  </label>
                    <ul tabIndex={0} className="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
                          <li><Link to='/users/new'>Sign Up</Link></li>
                          <li><Link to='AboutUs'>About Us</Link></li>
                          <li><Link to='/login'>Login</Link></li>
                          <li><Link to='/'> Home</Link></li>
                          </ul>
                        </div>
                      </div>
                    <div className="navbar-center">
                  <Link className="btn btn-ghost normal-case text-xl" to='/'>Home</Link>
                </div>
              <button onClick={handleLogOut}>Log Out</button>
            <div className="navbar-end">
          </div>
        </div>
      </nav>
    )
}

export default Navigation