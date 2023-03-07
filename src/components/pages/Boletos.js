import React from 'react';
import '../../App.css';
import './../Boletos.css';
import Listar from './Lista.js'

const numbers = [];

for (let i = 0; i < 500; i++) {
  numbers.push(i)
}

/*const boleto = numbers.map((boleto, index) =>
  <button key={index}>{boleto}</button>
);*/

function Boletos() {
  return (
    <div className='boletos-container'>
        <div className='boletos-content-container'>
            <h1>Xtreme PC Gamer</h1>
            <h2>Geforce GTX 1650 Core I5 10400F 16GB SSD 500GB Monitor 27 165hz</h2>
            <div className='boleto-img-rifa'></div>
            <p>16 DE JUNIO 2023</p>
            <strong>LISTA DE BOLETOS</strong>

            <div className='boletos-content-lista'>
                {/* AQUI VOY A GENERAR LOS BOLETOS */}
                <Listar></Listar>
                {/*boleto*/}
                
            </div>
                    
        </div>
    </div>
  )
}

export default Boletos