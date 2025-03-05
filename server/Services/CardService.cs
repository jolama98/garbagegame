
namespace garbagegame.Services;

public class CardService
{
    private readonly CardRepository _cardRepository;

    public CardService(CardRepository cardRepository)
    {
        _cardRepository = cardRepository;
    }

    internal List<Card> GetAllCards()
    {
        List<Card> cards = _cardRepository.GetAllCard();
        return cards;
    }
}
