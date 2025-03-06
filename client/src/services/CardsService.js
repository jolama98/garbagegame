import { Card } from "@/models/Cards.js"
import { api } from "./AxiosService.js"
import { logger } from "../utils/Logger.js"
import { AppState } from "@/AppState.js"

class CardService {

  async getAllCards() {
    const response = await api.get('api/card')
    const cards = response.data.map(cardPOJO => new Card(cardPOJO))
    logger.log(response.data)
    AppState.cards = cards
  }
}
export const cardService = new CardService()
