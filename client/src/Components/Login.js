import React, {useState} from 'react'



function Login({updateUser}) {
    const [formData, setFormData] = useState({
        username:'',
        email:'',
        password:''
    })
    const [errors, setErrors] = useState([])
    

    const {username, password} = formData

    function onSubmit(e){
        e.preventDefault()
        const user = {
            username,
            password
        }
       console.log(user)
        fetch(`/login`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(user)
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                    updateUser(user)
                    
                })
            }else {
                res.json().then(json => setErrors(json.errors))
            }
        })
       
    }

    const handleChange = (e) => {
        const { name, value } = e.target
        setFormData({ ...formData, [name]: value })
      }
    return (
        <> 
        <form  className="form" onSubmit={onSubmit}>
    
        <input className="input w-full max-w-xs" placeholder='Username' type='text' name='username' value={username} onChange={handleChange} />
      
        <input className="input w-full max-w-xs" placeholder='Password' type='password' name='password' value={password} onChange={handleChange} />
       
       
        <input type='submit' value='Log in!' />
      </form>
      {errors? <div>{errors}</div>:null}
        </>
    )
}

export default Login
