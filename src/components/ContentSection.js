import React from 'react';
import '../App.css';
import { Button } from './Button';
import './ContentSection.css';

function ContentSection() {
  return (
    <div className='content-container'>
      {/* <video src='/videos/video-1.mp4' autoPlay loop muted /> */}
      <h1>COMPRA TUS BOLETITOS</h1>
      <p>Que estas esperando?</p>

      <div className='content-btns'>
        <Button
          className='btns'
          buttonStyle='btn--outline'
          buttonSize='btn--large'
        >
          COMPRA BOLETOS
        </Button>
        {/* <Button
          className='btns'
          buttonStyle='btn--primary'
          buttonSize='btn--large'
          onClick={console.log('hey')}
        >
          WATCH TRAILER 
        </Button> */}
      </div>
    </div>
  );
}

export default ContentSection;
