import React ,{useState,useEffect} from 'react'
import serviceProcess from '../../service/service.sorti'
import Sortie from './sortie'
import ModelReponse from '../../Models/Model.repense'

const TestSortie = () => {

    const [test, setTest] = useState(false)
    const [id , setId] = useState('')

    const [show, setShow] = useState(false)
    const handleClose = () => setShow(false)
    const handleShow = () => setShow(true)

    const [toggle, setToggle] = useState () 
    const toggleshow = () => setToggle(true)
    const toggleDisplay = () => setToggle (false)
    
    
     const [process, setProcess] = useState({
        fk_proditfourni: "",
        categorie: "",
        nom_produit: "",
        stock: "",
        etape: "",
        id_enregistrement: "",
        id_nettoyage: "",
        id_coupage: ""

    })

    const [message,setMessage] = useState()
    


    const getProcess = (e) => {
        e.preventDefault();
        
            serviceProcess.getProcesaById(id).then((res) => {
                console.log(res.data)
                console.log(res.data.fk_proditfourni) 
                setProcess(res.data)
                if (res.data === "ID n'existe pas"){
                    setMessage("ID n'existe pas pour cette etape ")
                    handleShow(true)
                    
                }
                else if(res.data==="box deja sortie"){
                        
                        setMessage("le produit est deja sortie")
                        handleShow(true)
                }   
                    else if(res.data.fk_stock===null){
                        console.log(test)
                        toggleshow()
                    
                    }
                
           }
           
        )
     
      }

      
    var sortie , testSortie

    
      if(toggle){
        sortie = (<Sortie id={id} process={process} test={test} toggleDisplay={toggleDisplay} />)
      }

      else{
        testSortie = (
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
                            titre={"sortie"} 
                            message={message} 
                            />
        </section>
        )
      }
  
    return ( 
        <>
            {testSortie}
            {sortie}
            
            
        </>
     );
}
 
export default TestSortie;