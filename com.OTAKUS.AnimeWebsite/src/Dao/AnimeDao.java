package Dao;

import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;

import Dao.Interfaces.IDaoAnime;
import beans.Anime;

public class AnimeDao implements IDaoAnime<Anime, String> {
	// FIXME lookAt Service IAnime
	@Override
	public boolean update(Anime anime) throws DataAccessException, ClassNotFoundException, SQLException {
		int rs = DaoConnection.getConnection().update(
				"update anime set name=? description=? , image_link=? , id_statue=? where id_anime=?", anime.getName(),
				anime.getDescription(), anime.getImageLink(), anime.getStatue(), anime.getAnimeId());
		return DaoTools.getResult(rs);
	}

	@Override
	public Anime get(String animename) throws DataAccessException, ClassNotFoundException, SQLException {
		Anime anime = (Anime) DaoConnection.getConnection()
				.queryForObject("select a.* from anime a where a.name='" + animename + "'", new Anime());
		AliasDao alias = new AliasDao();
		anime.setAlias(alias.get(anime.getAnimeId()));

		TypeDao type = new TypeDao();
		anime.setGenre(type.get(anime.getAnimeId()));
		return anime;
	}

	@Override
	public boolean insert(Anime anime) throws DataAccessException, ClassNotFoundException, SQLException {
		int rs = DaoConnection.getConnection().update("insert into anime values(?,?,?,?,?)", anime.getAnimeId(),
				anime.getName(), anime.getDescription(), anime.getImageLink(), anime.getStatue());
		return DaoTools.getResult(rs);
	}

	@Override
	public boolean delete(Integer animeId) throws DataAccessException, ClassNotFoundException, SQLException {
		int rs = DaoConnection.getConnection().update("delete from anime where id_anime=" + animeId);
		return DaoTools.getResult(rs);
	}

	@Override
	public List<Anime> getAll() throws DataAccessException, ClassNotFoundException, SQLException {
		List<Anime> listAnime = (List<Anime>) DaoConnection.getConnection().query("select a.* from anime a",
				new Anime());
		return listAnime;
	}

	/*
	 * AliasDao alias; TypeDao type; for (Anime anime : listAnime) { alias = new
	 * AliasDao(); anime.setAlias(alias.get(anime.getAnimeId())); type = new
	 * TypeDao(); anime.setGenre(type.get(anime.getAnimeId())); }
	 */
	@Override
	public int getAnimeId() throws DataAccessException, ClassNotFoundException, SQLException {
		return DaoConnection.getConnection().queryForObject("select anime_seq.nextval from dual", Integer.class);
	}

	@Override
	public List<Anime> getAllByAlias(String alias) throws DataAccessException, ClassNotFoundException, SQLException {
		return (List<Anime>) DaoConnection.getConnection().query("select a.* from anime a inner join on a.id_anime=al.id_anime  alias al where a.name like '?"+alias+"?' or al.alias like '?"+alias+"?'",
				new Anime());
	}

	@Override
	public List<Anime> getAllByType(String type) throws DataAccessException, ClassNotFoundException, SQLException {
		return null;
	}
}
