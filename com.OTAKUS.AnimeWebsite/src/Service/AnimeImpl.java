package Service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;

import Dao.AnimeDao;
import Service.interfaces.IAnime;
import beans.Anime;

public class AnimeImpl implements IAnime<Anime,String>{
    private AnimeDao animeDao;
    
    {
    	animeDao=new AnimeDao();
    	
    }
	@Override
	public boolean insert(Anime anime) throws DataAccessException, ClassNotFoundException, SQLException {
		boolean rs;
		rs=animeDao.insert(anime);
		return rs;
	}

	@Override
	public boolean update(Anime anime) throws DataAccessException, ClassNotFoundException, SQLException {
		boolean rs;
		rs=animeDao.insert(anime);
		return rs;
	}

	@Override
	public boolean delete(Integer animeId) throws DataAccessException, ClassNotFoundException, SQLException {
		boolean rs;
		rs=animeDao.delete(animeId);
		return rs;
	}

	@Override
	public Anime get(String animeName) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.get(animeName);
	}

	@Override 
	public List<Anime> getAll() throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getAll();
	}

	@Override
	public List<Anime> getAllByAlias(String alias) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getAllByAlias(alias);
	}

	@Override
	public List<Anime> getAllByType(String type) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getAllByType(type);
	}

	@Override
	public List<Anime> getRecommanded(String username) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getRecommanded(username);
	}
	@Override
	public List<Anime> waiting(String username) throws DataAccessException, ClassNotFoundException, SQLException{
		return animeDao.waiting(username);
	}

	@Override
	public List<Anime> getPopular() throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getPopular();
	}

	@Override
	public List<Anime> getRecently() throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getRecently();
	}

	@Override
	public List<Anime> getByStatus(Integer status) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getByStatus(status);
	}

	@Override
	public List<Anime> getWatched(String username) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getWatched(username);
	}

	@Override
	public List<Anime> getWatching(String username) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getWatching(username);
	}

	@Override
	public List<Anime> getQueued(String username) throws DataAccessException, ClassNotFoundException, SQLException {
		return animeDao.getQueued(username);
	}

	

}
