namespace garbagegame.Models;
public class Card
{
    public int Id { get; set; }
    public string Rank { get; set; }
    public string Suit { get; set; }
    public bool IsFaceCard => Rank == "King" || Rank == "Queen" || Rank == "Jack";
}
