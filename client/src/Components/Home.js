import React from 'react';
import '../App.css';
import { Button } from './Button';
import './HeroSection.css';

function Home () {

  return (
    <div className='hero-container'>
      <h1>HOMES THAT LAST A LIFETIME</h1>
      <p>What are you waiting for?</p>
      <div className='hero-btns'>
        <Button
          className='btns'
          buttonStyle='btn--outline'
          buttonSize='btn--large'
        >
          GET STARTED
        </Button>
        <Button
          className='btns'
          buttonStyle='btn--primary'
          buttonSize='btn--large'
        >
          Why Diamond Developers? <i className='far fa-play-circle' />
        </Button>
      </div>
    </div>
  );
}


export default Home