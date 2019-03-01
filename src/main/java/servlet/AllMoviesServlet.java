package servlet;

import manager.MovieManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/allMovies")
public class AllMoviesServlet extends HttpServlet {

    private MovieManager movieManager = new MovieManager();


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("movie", movieManager.getAllMovies());
        req.getRequestDispatcher("/movies.jsp").forward(req, resp);
    }
}
