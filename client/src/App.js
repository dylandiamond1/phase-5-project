  import React from 'react'
  import  {useState, useEffect} from "react";
  import { Route, Routes} from "react-router-dom";
  import Login from "./Components/Login";
  import SignUp from "./Components/Signup";
  import Navigation from './Components/Navigation'
  import Home from "./Components/Home";
  import Aboutus from './Components/AboutUs';
  import Footer from './Components/Footer';
 

  function App() {
    
    // const [productions, setProductions] = useState([])
    const [errors, setErrors] = useState(false)
    const [currentUser, setCurrentUser] = useState(false)
    const [user, setUser] = useState(0)

    const updateUser = (user) => setCurrentUser(user)

    if(errors) return <h1>{errors}</h1>



    return (
      <>
      <Navigation user={user} setUser={setUser} />
      <main>
        {user ? (
          <Routes>
            <Route path='/' element={<Home />} />
            <Route path='/AboutUs' element={<Aboutus />} />
            <Route path='/Footer' element={<Footer />} />
         </Routes>
        ):(
          <Routes>
            <Route path='/login' element={<Login updateUser={updateUser}/>} />
            <Route path='/users/new' element={<SignUp updateUser={updateUser}/>} />
          </Routes>
          )}
         </main>
      </>
    )
        }
  export default App;