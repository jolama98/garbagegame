export class Card {
  constructor(data) {
    this.id = data.id;
    this.rank = data.rank;
    this.suit = data.suit;
    this.is_face_card = data.is_face_card;
  }
}
