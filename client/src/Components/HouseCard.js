import React from 'react';
import { useNavigate } from 'react-router-dom';



function HouseCard ({handleDelete, state, zip, address, sq_ft, city, user_id, image, id}) {

    const navigate = useNavigate()

    const handleNav = () => {
        navigate('/addhouse')
    }
// const {address, state, zip, city, sq_ft, user_id, id, image} = house

    function handleDeleteHouse(){
        fetch(`houses/${id}`, {
            method: "DELETE",
        })
        handleDelete(id)
    }
    return (
        <div className="cardBox">
    <ul>
        <li>
    <div style={{background: "black"}}className="card card-compact w-96 bg-base-100 shadow-xl">
         <figure><img style={{width: "25vw", height: "25vh"}}src={image} alt="Shoes" /></figure>
         <div className="card-body">
         <h2 className="card-title"></h2>
         <p>{address}</p>
         <p>{city}</p>
         <p>{sq_ft} thousand</p>
         <div className="card-actions justify-end">
      <button className="btn btn-primary" onClick={handleDeleteHouse}>delete</button>
      <button className="btn btn-primary" onClick={handleNav}>new house</button>
    </div>
  </div>
</div>
</li>
</ul>
</div>
    )
}

export default HouseCard