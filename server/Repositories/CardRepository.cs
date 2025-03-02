namespace garbagegame.Repositories;

public class CardRepository
{
    private readonly IDbConnection _db;

    public CardRepository(IDbConnection db)
    {
        _db = db;
    }
}

