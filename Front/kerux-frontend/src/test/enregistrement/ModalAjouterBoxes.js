import React ,{useState,useEffect} from 'react'
import Modal from 'react-bootstrap/Modal';
import EnregistrementService from '../../service/service.enregistrement'
import ModalQStock from './stockEnregistrement/questStock'
import Boxes from './boxes'

const ModalAjoutBoxes = (props) => {
    const [test, setTest] = useState(false)

    const [showQstock, setShowQstock] = useState(false)
    const handleCloseQstock = () => setShowQstock(false)
    const handleShowQstock = () => setShowQstock(true)

    const [boxe,setBoxe] = useState([{
        nom_produit: "",
        poids: 0,
        nombre: 0,
        date:new Date()
    }])

    const [nboxe,setNBoxe] = useState([{
        nom_produit: "",
        poids: 0,
        nombre: 0,
        date:new Date()
    }])

    const [tableboxe,setTableboxe] = useState([{
            categorie: "" ,
            nom_produit: "",
            poids:0, 
            nombre: 0,
            id_gnerate:""
        
    }])

       //console.log("produitFourni: "+ props.produitFourni);
       //console.log("categorier= "+props.produitFourni.categorie+ "\n id produit " +props.produitFourni.id_produit);

    const  plusId = () => {
        const newBoxe = [...boxe]
                            
        newBoxe.push({
            categorie:'',
            nom_produit:'',
            poids:0,
            nombre:0,
            date:new Date()
        })
        
        setBoxe(newBoxe.sort((a,b) => {
            if(a.date < b.date)
                return 1
            if(a.date > b.date)
                return -1
            return 0
        }))
       // console.log("box=  "+boxe[0].product);
        
    }
// categorie, nom_produit, etape, poids, nombre, fk_proditFourni
   // console.log(boxe.length);
    
    const confirmAjoutBoxes = (e) => {
            e.preventDefault();
            //for (var i=1 ; i<boxe.length+1 ; i++) {

            var i=1
            while(i<boxe.length){
                
                EnregistrementService.ajouerEnregistrement(props.produitFourni.categorie, props.produitFourni.nom_produit, "enregistrement", boxe[i].poids, boxe[i].nombre, props.produitFourni.id_produit)
                .then((res) => {
                    
                    tableboxe.push(res.data)
                    
                })

            i=i+1
            }

            console.log( tableboxe);
            console.log("hello");
            setBoxe([...nboxe] )
            handleShowQstock()
            props.handleClose()
            tableboxe.splice("")
    
    }

    const annuler = () => {
        setBoxe([...nboxe])
        props.handleClose()
        
    }
    
    var ajouterBox
    
        ajouterBox = (
            
                <div className="mb-3 row">
                
                <div>
                {boxe.map((box,key) => {
                    return ( 
                        <>
                        <div className="col-sm-10 mb-3" id= "produitFourni" key={key}>
                                <Boxes 
                                    
                                    n_produit={props.produitFourni.nom_produit}
                                    nom_produit = {box.nom_produit} 

                                    poids = {box.poids} onPoidsChange={newPoids => {
                                        const newProduits = [...boxe]
                                        newProduits[key].poids = newPoids
                                        setBoxe(newProduits)
                                        }} 
                                    
                                    nombre = {box.nombre} onNombreChange={newNombre => {
                                        const newProduits = [...boxe]
                                        newProduits[key].nombre = newNombre
                                        setBoxe(newProduits)
                                        }} 
                             
                                />
                            {key === 0 && (<>
                                            <button className="btn btn-dark btn-outline-dark" type="button" id="boxBtn"
                                             onClick={(e) => plusId(e)} >
                                            <i className="bi bi-plus-lg" style={{color: "white"}}> Ajouter box </i> 
                                             </button>
                                             
                                             
                                                </> )
                                             }
                                             
                                             

                    </div>
                    {key===0 && <p style={{borderBottom :'5px solid', borderRadius:"3px" , borderColor:'#a6a6a6'}}></p>}
                    
                    </>
                        
                    ) })} 
                                              
                    
                </div>
                
                 
            </div>  
           
        )
 
    return (
        <>
      <Modal size="lg" scrollable={true} show={props.show} onHide={props.handleClose}>
            <Modal.Header closeButton>
            <Modal.Title>Ajouter des boxes</Modal.Title>
            </Modal.Header>
            <Modal.Body >
                   {ajouterBox}
                   
            </Modal.Body>
            <Modal.Footer>
                    <button type="button" className="btn btn-danger" data-bs-dismiss="modal" onClick={() => annuler()}>annuler</button>
                    <button type="button" className="btn btn-success" onClick={(e)=>confirmAjoutBoxes(e) } >Valider</button>
            </Modal.Footer>
      </Modal>

      {handleShowQstock && <ModalQStock 
                        show = {showQstock}
                        handleClose = {handleCloseQstock}
                        tableBox = {tableboxe}
                        />}
      
</>
    )
  
}
export default ModalAjoutBoxes;