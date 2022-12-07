import axios from 'axios';

const POST_STOCK = "http://localhost:8080/stock/ajouterStock/"
const PUT_STOCK = "http://localhost:8080/stock/modifierStock/"
const PUT_PROCESS = "http://localhost:8080/process/modifierProcess/"



class ServiceStock {

    ajouterStock(fk_entrepot){
        const entrepot= {fk_entrepot}
        return axios.post(POST_STOCK,entrepot)
       }

    modifierStock (  poids_sortie, id_stock ) {
        const poids = {poids_sortie}
        return axios.put(PUT_STOCK+id_stock , poids)

    }

    modifierProcess(id_gnerate, fk_stock){
        const stock = {fk_stock}
        return axios.put(PUT_PROCESS+id_gnerate, stock)
    }

}
export default new ServiceStock()