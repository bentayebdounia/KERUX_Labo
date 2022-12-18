import React ,{useState,useEffect} from 'react'
import Reception from '../receptionProcess/reception'
import TestNet from '../nettoyageProcess/testNet'
import TestCoupage from '../coupage/TestCoupage'

import TestCondit from '../conditionnemet/testCondit'
import TestSortie from '../sortieProcess/TestSortie'

const Etape = () => {

    const [controleReception, setControleReception] = useState(false)
    const [controleEnrg, setControleEnrg] = useState(false)
    const [controleNettoyage, setControleNettoyage] = useState(false)
    const [controleCoupage, setControleCoupage] = useState(false)
    const [controleCondit, setControleCondit] = useState(false)
    const [controleSortie, setControleSortie] = useState(false)
    


    let reception, enregistrement, nettoyage, coupage, conditionnement, sortie, test

    function recepBtn(){
        setControleReception(true)
        setControleEnrg(false)
        setControleNettoyage(false)
        setControleCoupage(false)
        setControleCondit(false)
        setControleSortie(false)
       
        

    }
    

    function enrgBtn(){
        setControleReception(false)
        setControleEnrg(true)
        setControleNettoyage(false)
        setControleCoupage(false)
        setControleCondit(false)
        setControleSortie(false)
        
    }
    function nettoypBtn(){
        setControleReception(false)
        setControleEnrg(false)
        setControleNettoyage(true)
        setControleCoupage(false)
        setControleCondit(false)
        setControleSortie(false)
        
    }
    function coupBtn(){
        setControleReception(false)
        setControleEnrg(false)
        setControleNettoyage(false)
        setControleCoupage(true)
        setControleCondit(false)
        setControleSortie(false)
        
    }
    function conditBtn(){
        setControleReception(false)
        setControleEnrg(false)
        setControleNettoyage(false)
        setControleCoupage(false)
        setControleCondit(true)
        setControleSortie(false)
        
    }
    function sortieBtn(){
        setControleReception(false)
        setControleEnrg(false)
        setControleNettoyage(false)
        setControleCoupage(false)
        setControleCondit(false)
        setControleSortie(true)
        
    }

    if (controleReception) {
      reception = ( <Reception/> )
    }
    if(controleNettoyage){
        nettoyage = ( <TestNet/> )
    }
    
    if(controleCoupage){
        coupage =( <TestCoupage/>)
    }

    if(controleSortie){
        sortie = ( <TestSortie/>)
    }
    if(controleCondit){
        conditionnement= ( <TestCondit/>)
    }

console.log("etape  .....");
    return (
        <>
           
            <div className="container" id='stepComponant'>
                <div className="row row-cols-6">
                    <div className="etape"  type="submit" onClick={recepBtn}>
                        <div className="bi bi-1-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}  id="etape1"></div>
                        <div id="reception_etape" >Reception</div> 
                    </div>
                    <div className="etape">
                        <i className="bi bi-2-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}></i>
                        <div id="enreg_etape">Enregistrement</div> 
                    </div>

                    <div className="etape" type="submit"  onClick={nettoypBtn}>
                        <i className="bi bi-3-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}></i>
                        <div id="nettoyage_etape">Nettoyage</div> 
                    </div>

                    <div className="etape" type="submit" onClick={coupBtn}>
                        <i className="bi bi-4-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}></i>
                        <div id="coupage_etape">Coupage</div> 
                    </div>

                    <div className="etape" type="submit" onClick={conditBtn} >
                        <i className="bi bi-5-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}></i>
                        <div id="cond_etape">Conditionnemet</div> 
                    </div>

                    <div className="etape" type="submit" onClick={sortieBtn}>
                        <i className="bi bi-6-circle" style={{fontSize: "4rem", color: "#D4D4D4"}}></i>
                        <div id="sortie_etape" >Sortie</div> 
                    </div>
                </div>
            
            </div>

            {reception}
            {nettoyage}
            {coupage}
            {sortie}
            {conditionnement}
        
        </>
    )

}
export default Etape 