import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

class Lista extends React.Component{
    constructor(props){
        super(props);
        this.state = { 
            datosCargados: false,
            boletos: []
        }
    }

cargarDatos(){
    fetch("http://localhost/Rifas/scripts/consulta.php")
    .then((respuesta)=>respuesta.json())
    .then((datosRespuesta)=>{
        console.log(datosRespuesta);
        this.setState({datosCargados: true, boletos:datosRespuesta })

    })
    .catch(console.log)
}

componentDidMount(){
    this.cargarDatos();
}


render() {

    const{datosCargados, boletos}=this.state

    if(!datosCargados){return( <div>Cargando...</div>); }
    else{

        return ( 
        <div className='boletos-content-lista'>
            {boletos.map(
                (boleto)=>(
                    boleto.estado == 1
                     ? <button key={boleto.numero_rifa} className={'Boleto' + boleto.estado}>{boleto.numero_rifa}</button>
                    : 
                    <button key={boleto.numero_rifa} className={'Boleto' + boleto.estado}>APARTADO</button>                
                )
            )}
        </div>
        );
    }
}

}

/*
return ( 
    <table className="table">
        <thead>
            <tr>
                <th>BOLETO</th>
                <th>STATUS</th>
                <th>EXTRAS</th>
            </tr>
        </thead>
        <tbody>
            {boletos.map(
               (boleto)=>(
                 <tr key={boleto.numero_rifa}>
                    <td>{boleto.numero_rifa}</td>
                    <td>{boleto.estado}</td>
                    <td>.</td>
                 </tr>
                )
             )}            
        </tbody>
    </table>);
*/


export default Lista