namespace garbagegame.Controllers;

[Authorize]
[ApiController]
[Route("[controller]")]
public class CardController : ControllerBase
{
    private readonly CardService _cardService;
    private readonly Auth0Provider _auth0Provider;

    public CardController(CardService cardService, Auth0Provider auth0Provider)
    {
        _cardService = cardService;
        _auth0Provider = auth0Provider;
    }
}
