import React from 'react';



function HouseCard ({handleDelete, state, zip, address, sq_ft, city, user_id, image, id}) {

// const {address, state, zip, city, sq_ft, user_id, id, image} = house

    function handleDeleteHouse(){
        fetch(`houses/${id}`, {
            method: "DELETE",
        })
        handleDelete(id)
    }
    return (
    <>
    <div className="card card-compact w-96 bg-base-100 shadow-xl">
         <figure><img src={image} alt="Shoes" /></figure>
         <div className="card-body">
         <h2 className="card-title"></h2>
         {/* <p>{address}</p> */}
         <div className="card-actions justify-end">
      <button className="btn btn-primary" onClick={handleDeleteHouse}>delete</button>
    </div>
  </div>
</div>
    </>
    )
}

export default HouseCard