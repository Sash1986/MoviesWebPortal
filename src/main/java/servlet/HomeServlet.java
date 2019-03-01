package servlet;

import manager.GenreManager;
import manager.MovieManager;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@WebServlet(urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

    private MovieManager movieManager = new MovieManager();
    private GenreManager genreManager = new GenreManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String genreId = req.getParameter("id");

        List <Movie> movies = new ArrayList<Movie>();
        if (genreId != null && !genreId.equals("")) {
            movies = movieManager.getMovieByGenre(Integer.parseInt(genreId));
        } else {
            movies = movieManager.getAllMovies();
        }
        req.setAttribute("allMovies", movies);
        req.setAttribute("movieByLimit", movieManager.getMovieLimit());

        req.setAttribute("genres", genreManager.getAllGenre());
        req.getRequestDispatcher("/WEB-INF/home.jsp").forward(req, resp);

    }
}
