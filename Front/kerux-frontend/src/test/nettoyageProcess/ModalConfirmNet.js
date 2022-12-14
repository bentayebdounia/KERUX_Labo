import React ,{useState,useEffect} from 'react'

import Modal from 'react-bootstrap/Modal';
import NettoyageService from '../../service/service.nettoyage'
import ModalQStock from '../Stock/Modal.ajouterEnStock'
import Service_AgentProcess from '../../service/service.agentProcess'
import Print from './print';
const ModalConfirmNet = (props) => {

    const [show3, setShow3] = useState(false)
    const handleClose3 = () => setShow3(false)
    const handleShow3 = () => setShow3(true)

    const [show, setShow] = useState(false)
    const handleClose = () => setShow3(false)
    const handleShow = () => setShow3(true)
    
    var id_gnerate
    const [result, setResult] = useState()
    console.log("agent[]= " +props.agents[2]);
    console.log("length = "+props.agents.length); 

    const confirmNettoyage = async (e) => {
        e.preventDefault();
        var etape="nettoyage"
       
        await NettoyageService.ajouterNettoyage( props.categorie, props.typeProd, etape, props.poids, props.nombre, props.id_enregistrement , props.fk_proditfourni).then( (res)=> {
            console.log(res.data.id_gnerate)
            setResult(res.data)
            //console.log("id_gnerate= " + result.id_gnerate);
            
            //ajouter les agents  de nettoyage au bdd
            for(var i=0 ; i<props.agents.length ;i++) {
                console.log(props.agents[i]);
                Service_AgentProcess.ajouterAgentProcess(res.data.id_gnerate , props.agents[i])
                .then((result)=>{
                    console.log(result.data)
                            })

            }                 
                
        })
       
        handleShow()
        props.handleClose2()  
    }

    const contenue = () => {
        console.log("print");
        <>
            

        </>
    }
    //console.log(result.id_gnerate);

    return ( 
        <>
            <Modal show={props.show2} onHide={props.handleClose2}> 
                <Modal.Header closeButton>
                <Modal.Title>Voulez-vous valider ce process? </Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <p style = {{fontWeight: "bold"}} > ID box: </p> {props.id_enregistrement}
                    <p style = {{fontWeight: "bold"}} > Categorie: </p> {props.categorie}
                    <p style = {{fontWeight: "bold"}} > Type de produit: </p> {props.typeProd}
                    <p style = {{fontWeight: "bold"}} > Agent: </p> {props.agent}
                    <p style = {{fontWeight: "bold"}} > Poids: </p> {props.poids}
                    <p style = {{fontWeight: "bold"}} > Nombre: </p> {props.nombre} 
                    <br/>  

                    
                </Modal.Body>
                <Modal.Footer>
                        <button type="button" className="btn btn-danger" data-bs-dismiss="modal" onClick={props.handleClose2}>Non</button>
                        <button type="button" className="btn btn-success" onClick={(e)=>confirmNettoyage(e)}>Oui</button>
                </Modal.Footer>    
            </Modal>

            <ModalQStock    
                            show3={show3} 
                            handleClose3={handleClose3} 
                            handleShow3={handleShow3} 
                            result={result} 
                            toggleDisplay={props.toggleDisplay} 
                        />
            
            
        </>
     );
}
 
export default ModalConfirmNet;