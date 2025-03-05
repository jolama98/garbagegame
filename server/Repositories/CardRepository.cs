
namespace garbagegame.Repositories;

public class CardRepository
{
    private readonly IDbConnection _db;

    public CardRepository(IDbConnection db)
    {
        _db = db;
    }

    internal List<Card> GetAllCard()
    {
        string sql = "SELECT * FROM cards;";

        return _db.Query<Card>(sql).ToList();
    }
}

