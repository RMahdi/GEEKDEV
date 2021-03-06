package beans;
  
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

import org.springframework.jdbc.core.RowMapper;

import Service.interfaces.IBeanToJS;


public class Anime implements RowMapper<Anime>,IBeanToJS{
	private int animeId, status;
	private String name, description, imageLink;
	private List<Type> genre;
	private List<Alias> alias;
	private List<Season> seasons;
	private List<Movie> movies;

	public Anime() {
		super();
   
	}

	public Anime(String name, int status, String description, String imageLink, List<Alias> alias, List<Type> genre) {
		super();
		this.name = name;
		this.status = status;
		this.description = description;
		this.imageLink = imageLink;
		this.alias = alias;
		this.genre = genre;
	}

	public Anime(int animeId, int status, String description, String imageLink, List<Alias> alias, List<Type> genre) {
		super();
		this.animeId = animeId;
		this.status = status;
		this.description = description;
		this.imageLink = imageLink;
		this.alias = alias;
		this.genre = genre;
	}

	public int getAnimeId() {
		return animeId;
	}

	public void setAnimeId(int animeId) {
		this.animeId = animeId;
	}

	public void setName(String name) {
		this.name=name;
	}

	public String getName() {
		return name;
	}

	public int getStatus() {
		return status;
	}
	public String getStringStatus() {
		String status="";
		for(Status statues:Status.values())
			if (statues.getStatusId()==getStatus())
				status=statues.getStatus();
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public List<Alias> getAlias() {
		return alias;
	}

	public void setAlias(List<Alias> alias) {
		this.alias = alias;
	}

	public List<Type> getGenre() {
		return genre;
	}

	public void setGenre(List<Type> genre) {
		this.genre = genre;
	}

	public List<Season> getSeasons() {
		return seasons;
	}

	public void setSeasons(List<Season> seasons) {
		this.seasons = seasons;
	}

	public List<Movie> getMovies() {
		return movies;
	}

	public void setMovies(List<Movie> movies) {
		this.movies = movies;
	}

	@Override
	public Anime mapRow(ResultSet rs, int arg1) throws SQLException {
		Anime a = new Anime();
		a.setAnimeId(rs.getInt("id_anime"));
		a.setName(rs.getString("anime_name"));
		a.setDescription(rs.getString("description"));
		a.setImageLink(rs.getString("anime_image_link"));
		a.setStatus(rs.getInt("anime_status"));

		return a;
	}


@Override
public String toJSObject() {
	return "function Anime(id,name,description,imagelink,status,genre,alias,seasons){"
			+ "this.id=id;this.name=name;this.description=description;this.imagelink=imagelink;this.status=status;this.genre=genre;this.alias=alias;this.seasons=seasons}";
}

@Override
public String toJSInstance() {
	String jsInstance;
	jsInstance= "new Anime("+this.animeId+",\""+this.name+"\",\""+this.description+"\",\""+this.imageLink+"\",\""+this.getStringStatus()+"\",[";
	
	for (int i=0;i<genre.size();i++){
		jsInstance+=genre.get(i).toJSInstance();
		if (genre.size()-i!=1)
			jsInstance+=",";
		else
			jsInstance+="],[";
				}
	for (int i=0;i<alias.size();i++){
		jsInstance+=alias.get(i).toJSInstance();
		if (alias.size()-i!=1)
			jsInstance+=",";
		else
			jsInstance+="],[";
				}
	if (Objects.nonNull(seasons)){
	for (int i=0;i<seasons.size();i++){
		jsInstance+=seasons.get(i).toJSInstance();
		if (seasons.size()-i!=1)
			jsInstance+=",";
		else
			jsInstance+="]);";
				}
	}else
		jsInstance+=null;
	return jsInstance;
}

}
