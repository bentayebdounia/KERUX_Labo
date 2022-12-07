import React ,{useState,useEffect} from 'react'
//import EnregitrementService from '../../service'
import ModelReponse from '../../Models/Model.repense'
import ProduitFourni from './produitFourni'
import ModalAjoutBoxes from './ModalAjouterBoxes'
import EnregistrementService from '../../service/service.enregistrement'
import './enreg.css'

const Enregistrement = (props) => {

    const [test, setTest] = useState(false)
    
    const [id , setId] = useState('')

    const [show, setShow] = useState(false)
    const handleClose = () => setShow(false)
    const handleShow = () => setShow(true)

    var testplus = true
    var testNotExist = false
    
    const [message, setMessage] = useState('')
    
    const [process, setProcess] = useState({
        fk_proditfourni: "",
        categorie: "",
        nom_produit: "",
        stock: "",
        etape: ""
    })

    const [produits,setProduits] = useState([{
        categorie: "",
        nom_produit: "",
        poids: 0,
        nombre: 0,
        date:new Date()
    }])

    const [id_generateNet, setId_generateNet] = useState('')
    const [poids, setPoids] = useState(0)
    const [produitFourni, setProduitForuni] = useState({
            categorie: "",
            nom_produit: "", 
            id_produit: ""
    })
    


    const  plusId = () => {
        const newProduits = [...produits]
        //console.log(produits[0]);
        //console.log(props.id_bon);
        //console.log(produits[0].categorie);
        //categorie, nom_produit,  poids_fourni, nombre_fourni, fk_bon
        EnregistrementService.ajouterProduitFournit(produits[0].categorie, produits[0].nom_produit, produits[0].poids, produits[0].nombre, props.id_bon)
        .then((res) => {
            
            setProduitForuni(res.data[0])

        })

        console.log(produitFourni);
        handleShow()
                            
        newProduits.push({
            categorie:'',
            nom_produit:'',
            poids:0,
            nombre:0,
            date:new Date()
        })
        
        setProduits(newProduits.sort((a,b) => {
            if(a.date < b.date)
                return 1
            if(a.date > b.date)
                return -1
            return 0
        }))
        console.log("box=  "+produits[0].product);
        
    }
    
    

      

      const confirmer = (e) => {
        console.log(poids);
        props.toggleDisplay()
      }

    var enregistrement , testNet
      

      if(test===false){
        enregistrement = (
            
                <div className="mb-3 row">
                
                <div>
                {produits.map((box,key) => {
                    return ( 
                        <>
                        <div className="col-sm-10 mb-3" id= "produitFourni" key={key}>
                                <ProduitFourni 
                                    categorie = {box.categorie} onCategorieChange={newCategorie => {
                                    const newProduits = [...produits]
                                    newProduits[key].categorie = newCategorie
                                    setProduits(newProduits)
                                    }} 

                                    nom_produit = {box.nom_produit} onNom_produitChange={newNom_produit => {
                                        const newProduits = [...produits]
                                        newProduits[key].nom_produit = newNom_produit
                                        setProduits(newProduits)
                                        }} 

                                    poids = {box.poids} onPoidsChange={newPoids => {
                                        const newProduits = [...produits]
                                        newProduits[key].poids = newPoids
                                        setProduits(newProduits)
                                        }} 
                                    
                                    nombre = {box.nombre} onNombreChange={newNombre => {
                                        const newProduits = [...produits]
                                        newProduits[key].nombre = newNombre
                                        setProduits(newProduits)
                                        }} 
                                
                                
                                
                                />
                            {key === 0 && (<>
                                            <button className="btn btn-dark btn-outline-dark" type="button" id="boxBtn"
                                             onClick={(e) => plusId(e)} >
                                            <i className="bi bi-plus-lg" style={{color: "white"}}> Ajouter des boxes </i> 
                                             </button>
                                             
                                             
                                                </> )
                                             }
                                             
                                             

                    </div>
                    {key===0 && <p style={{borderBottom :'5px solid', borderRadius:"3px" , borderColor:'#a6a6a6'}}></p>}
                    
                    </>
                        
                    ) })} 
                                              
                    
                </div>
                <button type="button" className="btn1"  style={{width: "35%", marginLeft: "65%"}} onClick={props.toggleDisplay}>Process terminee</button>
                
                 
            </div>
    
           
        )
     }
  
    return ( 
        <>
            {enregistrement}
            
            {handleShow && <ModalAjoutBoxes   
                                show={show} 
                                handleClose={handleClose} 
                                handleShow={handleShow}
                                
                                produitFourni={produitFourni}
                                                   
                 />}
        </>
     )
    
}
export default Enregistrement;