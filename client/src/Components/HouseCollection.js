import React, {useState, useEffect} from 'react';
import HouseCard from './HouseCard'

function HouseCollection () {

    const [houses, setHouses] = useState([])

    useEffect(() => {
        fetch('/houses')
        .then(res => res.json())
        .then(house => setHouses(house))
    }, []);
    

    function handleDelete(id) {
        const newHouseList = houses.filter((onehouse) => 
        onehouse.id !== id)
        setHouses(newHouseList)
      }

      function handleAdd(newHouse) {
        setHouses([...houses, newHouse]);
      }

      const HouseCards = houses.map((house) => (
        <HouseCard
            key = {house.id}
            id = {house.id}
            address = {house.address}
            state = {house.state}
            zip = {house.zip}
            city = {house.city}
            sq_ft = {house.sq_ft}
            user_id = {house.user_id}
            image = {house.image}
            handleAdd={handleAdd}
            handleDelete={handleDelete}
        />
    ))


    return(
        <>
            <ul>
                <li>{HouseCards}</li>
            </ul>
        </>    
    )
}


export default HouseCollection