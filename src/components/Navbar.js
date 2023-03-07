import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Button } from './Button';
import './Navbar.css';

function Navbar() {
  const [click, setClick] = useState(false);
  const [button, setButton] = useState(true);

  const handleClick = () => setClick(!click);
  const closeMobileMenu = () => setClick(false);

  const showButton = () => {
    if (window.innerWidth <= 960) {
      setButton(false);
    } else {
      setButton(true);
    }
  };

  useEffect(() => {
    showButton();
  }, []);

  window.addEventListener('resize', showButton);

  return (
    <>
<nav className='navbar'>
        <div className='navbar-container'>
          <Link to='/' className='navbar-logo' onClick={closeMobileMenu}>
           Rick Rifas
          </Link>
          <div className='menu-icon' onClick={handleClick}>
          <Link className={click ? 'fa-times' : 'fa-bars'} > X </Link>
          </div>
          <ul className={click ? 'nav-menu active' : 'nav-menu'}>
            <li className='nav-item'>
              <Link to='/' className='nav-links' onClick={closeMobileMenu}>
                INICIO
              </Link>
            </li>
            {/* <li className='nav-item'>
              <Link
                to='/services'
                className='nav-links'
                onClick={closeMobileMenu}
              >
                PREGUNTAS FREQUENTES
              </Link>
            </li>
            <li className='nav-item'>
              <Link
                to='/products'
                className='nav-links'
                onClick={closeMobileMenu}
              >
                NOSOTROS
              </Link>
            </li> */}

            <li>
              <Link
                to='/boletos'
                className='nav-links-mobile'
                onClick={closeMobileMenu}
              >
                BOLETOS
              </Link>
            </li>
          </ul>
         {button && <Button buttonStyle='btn--outline'>BOLETOS</Button>}
        </div>
      </nav>
    </>
  );
}

export default Navbar;
