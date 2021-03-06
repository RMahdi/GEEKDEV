package beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import Service.Tools;
import Service.interfaces.IBeanToJS;

public class Alias implements RowMapper<Alias> ,IBeanToJS{
private int animeId;
private String alias;
public Alias() {
	super();
}
public Alias(int animeId, String alias) {
	super();
	this.animeId = animeId;
	this.alias = alias;
}


public int getAnimeId() {
	return animeId;
}
public void setAnimeId(int animeId) {
	this.animeId = animeId;
}
public String getAlias() {
	return alias;
}
public void setAlias(String alias) {
	this.alias = alias;
}
@Override
public Alias mapRow(ResultSet rs, int arg1) throws SQLException {
	Alias alias=new Alias();
	alias.setAlias(rs.getString("alias"));
	alias.setAnimeId(rs.getInt("id_anime"));
	return alias;
}
@Override
public String toJSObject() {
	return "function Alias(id,alias){this.id=id;this.alias=alias;};";
}
@Override
public String toJSInstance() {
	return "new Alias("+this.animeId+",\""+this.alias+"\")";
}

}
