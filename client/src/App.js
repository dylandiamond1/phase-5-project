  import React from 'react'
  import  {useState}  from "react";
  import { Route, Routes } from "react-router-dom";
  import Login from "./Components/Login";
  import SignUp from "./Components/Signup";
  import Navigation from './Components/Navigation'

  function App() {
    
    // const [productions, setProductions] = useState([])
    const [errors, setErrors] = useState(false)
    const [currentUser, setCurrentUser] = useState(false)

    const updateUser = (user) => setCurrentUser(user)

    if(errors) return <h1>{errors}</h1>



    return (
      <>
      <Navigation />
          <Routes>
            <Route path='/' element={<SignUp />} />
            <Route path='/users/new' element={<SignUp />} />
            <Route path='/login' element={<Login updateUser={updateUser}/>} />
         </Routes>
      </>
      )
      }

  export default App;