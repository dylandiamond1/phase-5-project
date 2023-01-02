import React, {useState} from "react";
import HouseCollection from "./HouseCollection";

function AddHouse({addHouse}) {
    const [formData, setFormData] = useState({
      address:'',
      sq_ft:''
    })

    const handleChange = (e) => {
        const { name, value } = e.target
        setFormData({ ...formData, [name]: value })
      }

      function onSubmit(e){
        e.preventDefault()

        fetch("houses", {
            method: "POST",
            headers: {
            "Content-Type": "application/json"
            },
            body: JSON.stringify({...formData})
            })
            .then((r) => r.json())
            .then(data => addHouse(data));
        }
        
    // const handleSubmit = (e) => {
    //     e.preventDefault()
    //     const house = {
    //         house
    //     }

       
      

return (

    <div>
      <div className="titleText">
      Create a house of your own!
      </div>
        <form onSubmit={onSubmit}>
        <ul>
        <input className="signupButton input w-full max-w-xs" placeholder="address" type='text' name='address' value={formData.address} onChange={handleChange} />
        <br></br>
        
        <input className="signupButton input w-full max-w-xs" placeholder="sq_ft"  type='text' name='sq_ft' value={formData.sq_ft} onChange={handleChange} />
        <br></br>
        
        <input className="signupButton input w-full max-w-xs" placeholder="image" type='text' name='image' value={formData.image} onChange={handleChange} />
        <br></br>

        <input className="signupButton input w-full max-w-xs" placeholder="state"  type='text' name='state' value={formData.state} onChange={handleChange} />
        <br></br>

        <input className="signupButton input w-full max-w-xs" placeholder="zip"  type='text' name='zip' value={formData.zip} onChange={handleChange} />
        <br></br>

        <input className="signupButton input w-full max-w-xs" placeholder="city"  type='text' name='city' value={formData.city} onChange={handleChange} />
        <br></br>
        <input className="signupButton input w-full max-w-xs" placeholder="user_id"  type='text' name='user_id' value={formData.user_id} onChange={handleChange} />
        <br></br>
        </ul>

        <input className="btn glass signupButton" type='submit' value='Create House' />
      </form>
    </div>

)
}



export default AddHouse;