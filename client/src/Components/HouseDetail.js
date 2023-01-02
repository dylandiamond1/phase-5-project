import {useEffect, useState} from "react";
import { useNavigate, useParams } from 'react-router-dom';

function HouseDetail ({deleteProdcution}) {

    const [house, setHouse] = useState({})
    

    const params = useParams()
    const navigate = useNavigate()

    useEffect(() => {
        fetch (`/houses/${params.id}`)
        .then(res => res.json())
        .then(data => { 
            setHouse(data) }
        
    )}, []);

    

    function handleDelete(){
        //DELETE to `/productions/${params.id}`
        fetch(`/houses/${params.id}`,{
          method:'DELETE',
          headers: {'Content-Type': 'application/json'}
        })
        .then (res => res.json())
        .then (id => deleteProdcution(id))
        navigate('/')
    }

        const {id, address, image, city, sq_ft} = house

    return (
        <div style={{height: "92vh", width: "100vw", display: "flex", justifyContent: "center", alignItems: "center"}}>
        <div className="cardBox2">
        <ul>
            <li>
        <div style={{background: "black", marginTop: "10vh"}}className="card card-compact w-96 bg-base-100 shadow-xl">
             <figure><img style={{width: "50vw", height: "50vh"}}src={image} alt="Shoes" /></figure>
             <div className="card-body">
             <h2 className="card-title"></h2>
             <p>{address}</p>
             <p>{city}</p>
             <p>{sq_ft} thousand</p>
             <div className="card-actions justify-end">
          <button className="btn btn-primary" onClick={handleDelete}>delete</button>
          {/* <button className="btn btn-primary" onClick={handleNav}>new house</button> */}
        </div>
      </div>
    </div>
    </li>
    </ul>
    </div>
    </div>

    )

}



export default HouseDetail