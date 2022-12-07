import axios from 'axios';

const PRODUIT_API_BON = "http://localhost:8080/process/ajouterBon";
const PRODUIT_API_Process = "http://localhost:8080/process/";
const GET_BON_ORDER_BY_DATE = "http://localhost:8080/process/p/getBon"
const GET_BON_ORDER_BY_FOURNISSEUR = "http://localhost:8080/process/a/getbonFournisseur"


class ProcessService {
    ajouterBon(fk_fournisseur, acheteur, type_bon, recepteur){

        const bon = { fk_fournisseur, acheteur, type_bon, recepteur }
        
        return axios.post(PRODUIT_API_BON, bon)
    }

    getProcesaById (id_gnerate) {
        return axios.get(PRODUIT_API_Process+id_gnerate)
    }

    getBonOrderByDate () {
        return axios.get(GET_BON_ORDER_BY_DATE)
    }

    getBonOrder_fournisseur () {
        return axios.get(GET_BON_ORDER_BY_FOURNISSEUR)
    }

    
    
}

export default new ProcessService()