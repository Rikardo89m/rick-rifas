import React from 'react';

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

export default Lista