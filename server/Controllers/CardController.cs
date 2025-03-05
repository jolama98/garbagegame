namespace garbagegame.Controllers;

// [Authorize]
[ApiController]
[Route("[controller]")]
public class CardController : ControllerBase
{
    private readonly CardService _cardService;


    public CardController(CardService cardService)
    {
        _cardService = cardService;

    }

    [HttpGet]
    public ActionResult<List<Card>> GetAllCards()
    {
        try
        {
            List<Card> cards = _cardService.GetAllCards();
            return Ok(cards);
        }
        catch (Exception exception)
        {
            return BadRequest(exception.Message);
        }

    }
}
