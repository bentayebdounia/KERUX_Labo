import React ,{useState,useEffect} from 'react'
import CoupageService from '../../service/service.coupage'
import Coupage from './coupage'
import ModelReponse from '../../Models/Model.repense'
import BoxCoupage from './boxCoupage'
import ModalSortieStock from '../Stock/Modal.sortieStock'

const TestCoupage = () => {

    
    
    const [id , setId] = useState('')

    const [show, setShow] = useState(false)
    const handleClose = () => setShow(false)
    const handleShow = () => setShow(true)

    const [show2, setShow2] = useState(false)
    const handleClose2 = () => setShow2(false)
    const handleShow2 = () => setShow2(true)

    /// afficher le component nettoyage....
    const [toggle, setToggle] = useState () 
    const toggleshow = () => setToggle(true)
    const toggleDisplay = () => setToggle (false)

    const [toggleSortie, setToggleSortie] = useState (false) 
    const toggleSortieTrue = () => setToggleSortie(true)
    const toggleSortieFalse = () => setToggleSortie (false)

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

    const [boxes,setBoxes] = useState([{
        id_box:'',
        date:new Date()
    }])

    const [id_generateNet, setId_generateNet] = useState('')
    const [poids, setPoids] = useState(0)
    const [nombre, setNombre] = useState(0)
    


    const dateNow = () => {
        var today = new Date 
        var datee = today.getFullYear()+''+(today.getMonth() + 1) + '' + today.getDate()
        console.log("dateeee "+datee );
        return datee
    }
    
    
    const TimeNow = () => {
        var today = new Date 
        var heure = today.getHours() 
        console.log("heure "+heure );
        return heure
    }
    const generateId = (fk_proditFourni) =>{
        var id = (fk_proditFourni+"id"+dateNow()+""+TimeNow())  
        console.log("id_generate= "+id);
    return id
    }
    var id_generate
    const ajouterBoxCouper = (id_produit, id_enregistrement, id_nettoyage) => {
         id_generate = generateId(id_produit)
        setId_generateNet( id_generate )
        //console.log(id_generateNet)
        CoupageService.ajouterBoxCouper(id_produit, id_enregistrement, id_nettoyage, id_generate).then( (res) => {
            console.log(res.data)
        })
    }
/*
    useEffect(()=>{
        console.log(toggleSortie);
        if (toggleSortie){
            ajouterBox()
        }
            
    },[toggleSortie])
*/
    function ajouterBox (){
        const newBoxes = [...boxes]
        newBoxes.push({
            id_box:'',
            date:new Date()
        })
        setBoxes(newBoxes.sort((a,b) => {
            if(a.date < b.date)
                return 1
            if(a.date > b.date)
                return -1
            return 0
    }))

    }

      const plusId = (e) => {
        e.preventDefault();
        console.log("box.id_box== "+boxes[0].id_box);

        CoupageService.getProcessById(boxes[0].id_box).then((res) => {
            console.log(res.data)
            console.log(res.data.fk_proditfourni) 
            setProcess(res.data)
            if (res.data === "ID n'existe pas"){
                setMessage("ID n'existe pas pour cette etape ")
                handleShow(true)
                
            }
            else if(res.data==="box deja couper"){
                    
                    setMessage("le produit est deja couper")
                    handleShow(true)
            }   
                else 
                    {
                        if(res.data.fk_stock!==null){
                                handleShow2(true)   // il faut ajouter un autre teste pour confirmer que l'agent il a bien fait la sortie de stock avant l'enregistrer au process de coupage
                
                                //ajouter le box couper et generer un identifiant
                              
                                ajouterBoxCouper(res.data.fk_proditfourni, res.data.id_enregistrement, boxes[0].id_box)
                                console.log("nombre= "+res.data.nombre);
                                setPoids(poids+res.data.poids)
                                setNombre(nombre+res.data.nombre)
                                ajouterBox() 
                                
                        }

                        else{
                            //ajouter le box couper et generer un identifiant
                            ajouterBoxCouper(res.data.fk_proditfourni, res.data.id_enregistrement, boxes[0].id_box)
                            console.log("nombre= "+res.data.nombre);
                            setPoids(poids+res.data.poids)
                            setNombre(nombre+res.data.nombre)
                            
                            ajouterBox()

                        }                     
                }
            })     
      }

      const confirmer = (e) => {
        console.log("length= "+boxes.length);
        if(boxes.length >1)
                {toggleshow()
                setBoxes([1])}
        else {
            setMessage("Ajouter des boxes")
            handleShow()
        }
      }


    var coupage , testNet
    console.log(process)
    console.log(id_generate);
    console.log(boxes);

    
      if(toggle){
        coupage = (
                    <Coupage 
                            id={id_generateNet} 
                            poids={poids} 
                            nombre={nombre}
                            process={process}  
                            toggleDisplay = {toggleDisplay}
                             />)
      }

      if(!toggle){
        testNet = (
            <section id="etape_section">
            <div className="container">
                <div className="mb-3 row">
                <label htmlFor="id_etape"  className="col-sm-2 col-form-label">ID Box</label>
                <div className="col-sm-7">
                {boxes.map((box,key) => {
                    return ( 
                        <div className="input-group col-sm-10" key={key}>
                                <BoxCoupage id_box = {box.id_box} onIdChange={newId_box => {
                                    const newBoxes = [...boxes]
                                    newBoxes[key].id_box = newId_box
                                    setBoxes(newBoxes)
                                }} />
                            {key === 0 && <button className="btn btn-dark btn-outline-dark" type="button" id="button-addon2"
                                             onClick={(e) => plusId(e)} >
                                            <i className="bi bi-plus-lg" style={{color: "white"}}></i>
                                             </button>
                                             
                                             }
                                
                    </div>
                        
                    ) })} 
                                              
                    
                </div>
                <div className='col-sm-3'>
                        <button className="btn btn-dark btn-outline-dark" type="button" id="button-addon2" onClick={(e)=> confirmer(e)}>
                                        <i className="bi bi-check-lg" style={{color: "white"}}> Confirmer</i>
                        </button> 
                    </div>
                 
            </div>
    
            </div>
            <ModelReponse 
                            show={show} 
                            handleClose={handleClose} 
                            handleShow={handleShow} 
                            titre={'coupage'} 
                            message={message}
                            />

            <ModalSortieStock 
                                show2={show2} 
                                handleClose2={handleClose2} 
                                handleShow2={handleShow2} 
                                id={process.id_gnerate} 
                                process={process}
                                etape={'coupage'}
                                toggleSortieTrue = {toggleSortieTrue}  
                                />
        </section>
        )
     }
  
    return ( 
        <>
            {testNet}
            {coupage}
            
            
        </>
     )
    
}
export default TestCoupage;