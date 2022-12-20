  import React from 'react'
  import  {useState} from "react";
  import { Route, Routes} from "react-router-dom";
  import Login from "./Components/Login";
  import SignUp from "./Components/Signup";
  import Navigation from './Components/Navigation'
  import Home from "./Components/Home";
  import Aboutus from './Components/AboutUs';
  import HouseCollection from './Components/HouseCollection';


 

  function App() {

    
    // const [productions, setProductions] = useState([])
    const [currentUser, setCurrentUser] = useState(false)
    const [user, setUser] = useState(0)
    // const [houses, setHouses] = useState([])

    const updateUser = (user) => setCurrentUser(user)

    // useEffect(() => {
    //   fetch("/authorized_user")
    //   .then((res) => {
    //     if (res.ok) {
    //       res.json()
    //       .then((user) => {
    //         updateUser(user);
    //         fetchHouses()
    //       });
    //     }
    //   })
    // },[])

   
    return (
      <>
      <Navigation updateUser={updateUser} user={user} setUser={setUser} />
      <main>
          <Routes>
            <Route path='/' element={<Home />} />
            <Route path='/AboutUs' element={<Aboutus />} />
            <Route path='/login' element={<Login updateUser={updateUser}/>} />
            <Route path='/users/new' element={<SignUp updateUser={updateUser}/>} />
            <Route path='/PlanHouse' element={<HouseCollection />} />
          </Routes>
         </main>
      </>
    )
        }
  export default App;