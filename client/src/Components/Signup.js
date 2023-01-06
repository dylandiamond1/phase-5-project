import React, {useState, useRef} from 'react'
import ContactForm from './ContactForm'
import emailjs from '@emailjs/browser';
import { useNavigate } from 'react-router-dom';



function SignUp({updateUser, }) {
    const [formData, setFormData] = useState({
        username:'',
        email:'',
        password:''
    })
    const [errors, setErrors] = useState([])

    const form = useRef();
    const navigate = useNavigate()

    const sendEmail = (e) => {
      e.preventDefault();
  
      emailjs.sendForm('signup_service', 'template_i8hdykp', form.current, '0RsY5jeSNdUiO2QWn')
        .then((result) => {
            console.log(result.text);
        }, (error) => {
            console.log(error.text);
        });
    };
    

    const {username, email, password} = formData

    function onSubmit(e) {
        e.preventDefault()
        const user = {
            username,
            email,
            password
        }

       
        fetch(`/users`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify(user)
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                    updateUser(user)
                    sendEmail(e)
                })
            }else {
                res.json().then(json => setErrors(Object.entries(json.errors)))
            }
        })
       
    }

    const handleChange = (e) => {
        const { name, value } = e.target
        setFormData({ ...formData, [name]: value })
      }
    return (
        <> 
        <form className="form" ref={form} onSubmit={onSubmit}>  
        <ul>
        <li>
        <input className="input w-full max-w-xs" placeholder="Username" type='text' name='username' value={username}  onChange={handleChange} />
        </li>
        <br></br>
        <input className="input w-full max-w-xs"placeholder="Email" type='text' name='email' value={email}  onChange={handleChange} />
        <li>
        <br></br>
        <input className="input w-full max-w-xs"placeholder="Password" type='password' name='password' value={password} onChange={handleChange} />
        </li>
        <br></br>
        </ul>
        
       
        <input className="btn glass signupButton" type='submit' value='Sign up!' />
      </form>
      {errors?errors.map(e => <div>{e[0]+': ' + e[1]}</div>):null}
        </>
    )
}

export default SignUp