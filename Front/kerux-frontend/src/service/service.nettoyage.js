import axios from 'axios'

const KERUX_API_NETTOYAGE = "http://localhost:8080/process/nettoyage/ajouterNettoyage"
const KERUX_API_TESTID = "http://localhost:8080/process/nettoyage/getIdEnregistrement/"
const GET_NETTOYAGEBYDATE_HEURE= "http://localhost:8080/process/nettoyage/getProcessByDateHeure"
const GET_PROCESSBY_ID = "http://localhost:8080/process/nettoyage/getProcessByEtapes_idGnerate/"
const GET_PROCESSBY_CATEGORIE ="http://localhost:8080/process/nettoyage/getProcessByEtapes_categorie/"
const GET_PROCESSBY_PRODUIT ="http://localhost:8080/process/nettoyage/getProcessByEtapes_produit/"

class NettoyageService {

    ajouterNettoyage(categorie, nom_produit, etape, poids, nombre, id_enregistrement, fk_proditFourni){

        const nettoyageProcess = {categorie, nom_produit, etape, poids, nombre, id_enregistrement, fk_proditFourni}
        
        return axios.post(KERUX_API_NETTOYAGE, nettoyageProcess)
    }
    getProcesaById (id_gnerate) {
        return axios.get(KERUX_API_TESTID+id_gnerate)
    }

    getProcessByDateHeure() {
        return axios.get(GET_NETTOYAGEBYDATE_HEURE)
    }

    getProcessByEtapes_idGnerate(id_generate) {
        return axios.get(GET_PROCESSBY_ID+id_generate)
    }

    getProcessByEtapes_categorie(categorie) {
        return axios.get(GET_PROCESSBY_CATEGORIE+categorie)
    }

    getProcessByEtapes_produit(nom_produit) {
        return axios.get(GET_PROCESSBY_PRODUIT+nom_produit)
    }


}

export default new NettoyageService()