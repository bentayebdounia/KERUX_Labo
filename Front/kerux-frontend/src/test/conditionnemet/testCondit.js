import React ,{useState,useEffect} from 'react'
import ConditService from '../../service/service.condit'
import Conditionnement from './conditionnement'
import ModelReponse from '../../Models/Model.repense'
import ModalSortieStock from '../Stock/Modal.sortieStock'

const TestNet = () => {

    const [test, setTest] = useState(false)
    const [id , setId] = useState('')

    const [show, setShow] = useState(false)
    const handleClose = () => setShow(false)
    const handleShow = () => setShow(true)

    const [toggle,setToggle] = useState()
    const toggleShow = () => setToggle(true)
    const toggleDisplay = () => setToggle(false)
    
    //const [categorie, setCategorie] = useState()
    //const [stock, setStock] = useState()
    //const [produit , setProduit] =  useState()
    //const [etape , setEtape] =  useState()

    //const [proces , setProces] = useState([])
     const [process, setProcess] = useState({
        fk_proditfourni: "",
        categorie: "",
        nom_produit: "",
        stock: "",
        etape: ""
    })

    const [message,setMessage] = useState()
    
    const [show2, setShow2] = useState(false)
    const handleClose2 = () => setShow2(false)
    const handleShow2 = () => setShow2(true)
 
    const getProcess = (e) => {
        e.preventDefault();
        
        ConditService.getProcesaById(id).then((res) => {
                console.log(res.data)
                console.log(res.data.fk_proditfourni) 
                setProcess(res.data)
                if (res.data === "ID n'existe pas"){
                    setMessage("ID n'existe pas pour cette etape ")
                    handleShow(true)
                    
                }
                else if(res.data==="box deja conditionner"){
                        setMessage("le box est deja conditionne")
                        handleShow(true)
                }
                        
                    else {
                        if(res.data.fk_stock ===null){
                            toggleShow()
                            
                        }
                        else {
                            handleShow2(true)
                        }
              
                    }
                console.log("produit fourni=  "+process.fk_proditfourni + "\n categorie= "+ process.categorie + "\n produit= " + process.nom_produit + "\n stock= " + process.stock, "\n etape= " + process.etape)
             
           }
          
        )
   
      }

    var conditionnemet , testCondit

    
      if(toggle){
        conditionnemet = (<Conditionnement id={id} process={process} test={test} toggleDisplay = {toggleDisplay}/>)
      }

      if(!toggle){
        testCondit = (
            <section id="etape_section">
            <div className="container">
                <div className="mb-3 row">
                <label htmlFor="id_etape"  className="col-sm-2 col-form-label label">ID Box</label>
                <div className="col-sm-10">
                    <div className="input-group col-sm-10">
                        <input type="text" className="form-control" placeholder=""  aria-describedby="button-addon2" value={id} onChange={(e)=> setId(e.target.value)}/>
                        <button className="btn btn-dark btn-outline-dark" type="button" id="button-addon2" onClick={(e) => getProcess(e)} >
                            <i className="bi bi-check-lg" style={{color: "white"}}></i>
                        </button>
                    </div>
                </div>
            </div>
    
            </div>
            <ModelReponse
                             show={show} 
                             handleClose={handleClose} 
                             handleShow={handleShow} 
                             message={message} 
                             titre={"conditionnement"} 
                             />
            <ModalSortieStock 
                                show2={show2} 
                                handleClose2={handleClose2} 
                                handleShow2={handleShow2} 
                                toggleshow={toggleShow}  
                                id={id} 
                                process={process} 
                                etape={'conditionnement'}
                                 />
        </section>
        )
      }
  
    return ( 
        <>
            {testCondit}
            {conditionnemet}
            
            
        </>
     );
}
 
export default TestNet;