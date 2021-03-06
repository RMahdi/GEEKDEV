package controllers.filters;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.dao.DataAccessException;

import Dao.AnimeDao;
import Dao.EpisodeDao;
import Dao.SeasonDao;
import Service.CommentImpl;
import Service.LastSeenImpl;
import Service.MovieImpl;
import beans.Anime;
import beans.Comment;
import beans.Episode;
import beans.Season;
import beans.Visitor;

/**
 * Servlet Filter implementation class WatchFilter
 */

public class WatchFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public WatchFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		int seasonNum = 1, episodeNum;

		Matcher matcher = Pattern.compile("^/watch/(\\w*)((/season_(\\d*))?/episode_(\\d*))?(/movie_(\\d*))?$")
				.matcher(httpRequest.getRequestURI());
		if (matcher.find() && (matcher.group(2) != null || matcher.group(6) != null)) {
			Anime anime=null;

			System.out.println(matcher.group(1));
			try {
				anime = new AnimeDao().get(matcher.group(1).replace("_", " ").toLowerCase());
				
				request.setAttribute("anime", anime);
				if (matcher.group(2) != null) {
					if (matcher.group(3) != null)
						seasonNum = Integer.parseInt(matcher.group(4));

					Season season = new SeasonDao().get(SeasonDao.switchNumSeasonToId(seasonNum, anime.getAnimeId()));
					request.setAttribute("season", season);
					episodeNum = Integer.parseInt(matcher.group(5));
					EpisodeDao episodeDao = new EpisodeDao();
					Episode episode = episodeDao.get(EpisodeDao.switchNumEpisodeToId(season.getSeasonId(), episodeNum));
					request.setAttribute("episode", episode);
					List<Episode> seasonEpisodes = episodeDao.getAll(season.getSeasonId());

					request.setAttribute("allEpisodes", seasonEpisodes);

					// COmment
					List<Comment> comments = new CommentImpl().get(episode.getEpisodeid());
					request.setAttribute("comments", comments);

					// LASTSEEEEN
					if (httpRequest.getSession().getAttribute("user") != null) {
						LastSeenImpl lastSeenImpl = new LastSeenImpl();
						Visitor visitor = (Visitor) httpRequest.getSession().getAttribute("user");
						lastSeenImpl.save(episode.getEpisodeid(), episode.getSeasonId(), visitor.getUserName());

						chain.doFilter(httpRequest, response);
					}

				} else if (matcher.group(6) != null) {
					MovieImpl movie = new MovieImpl();
					movie.get(anime.getAnimeId(), Integer.parseInt(matcher.group(7)));
					request.setAttribute("movie", movie.get(anime.getAnimeId(), Integer.parseInt(matcher.group(7))));
					chain.doFilter(httpRequest, response);
				}
			} catch (DataAccessException | ClassNotFoundException e) {
				httpResponse.sendError(404);

				e.printStackTrace();
			} catch (SQLException e) {
				httpResponse.sendError(500);
			}
		} else
			httpResponse.sendError(404);

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
