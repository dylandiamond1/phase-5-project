  import React from 'react'
  import  {useState, useEffect} from "react";
  import { Route, Routes} from "react-router-dom";
  import Login from "./Components/Login";
  import SignUp from "./Components/Signup";
  import Navigation from './Components/Navigation'
  import Home from "./Components/Home";
  import Aboutus from './Components/AboutUs';
  import HouseCollection from './Components/HouseCollection';
  import AddHouse from './Components/AddHouse';
  import HouseDetail from './Components/HouseDetail';
  import OurProccess from './Components/OurProcess';


 

  function App() {

    
    const [houses, setHouses] = useState([])
    const [currentUser, setCurrentUser] = useState(false)
    const [user, setUser] = useState(0)
    // const [houses, setHouses] = useState([])

    const updateUser = (user) => setCurrentUser(user)

    const deleteProduction = (id) => setHouses(current => current.filter(p => p.id !== id))


    const addHouse = (house) => setHouses(current => [...current,house])
    useEffect(() => {
      fetch("/authorized_user")
      .then((res) => {
        if (res.ok) {
          res.json()
          .then((user) => {
            updateUser(user);
          });
        }
      })
    },[])

    

   
    return (
      <>
      <Navigation updateUser={updateUser} user={user} setUser={setUser} />
      <main>
          <Routes>
            <Route path='/' element={<Home />} />
            <Route path='/AboutUs' element={<Aboutus />} />
            <Route path='/OurProcess' element={<OurProccess/>} />
            <Route path='/login' element={<Login updateUser={updateUser}/>} />
            <Route path='/users/new' element={<SignUp updateUser={updateUser}/>} />
            <Route path='/PastProjects' element={<HouseCollection />} />
            <Route path='/AddHouse' element={<AddHouse addHouse={addHouse} />} />
            <Route path='/houses/:id' element={<HouseDetail deleteProduction={deleteProduction} />} />
          </Routes>
         </main>
      </>
    )
        }
  export default App;