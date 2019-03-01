package manager;

import db.DBConnectionProvider;
import model.Genre;
import model.Movie;
import util.DateUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class MovieManager {

    private Connection connection;

    public MovieManager() {
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addMovie(Movie movie) {
        String query = "INSERT INTO movie(title, description,`year`,createdDate,picture,director) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, movie.getTitle());
            preparedStatement.setString(2, movie.getDescription());
            preparedStatement.setInt(3, movie.getYear());
            preparedStatement.setString(4, DateUtil.convertDateToString(movie.getCreatedDate()));
            preparedStatement.setString(5, movie.getPicture());
            preparedStatement.setString(6, movie.getDirector());
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                movie.setId(generatedKeys.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addIntoRelationshipTable(Movie movie, List <Genre> genre) {
        String query = "INSERT INTO movies_genre(movie_id, genre_id) VALUES (?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            for (Genre genreList : genre) {
                int genreId = genreList.getId();
                preparedStatement.setInt(1, movie.getId());
                preparedStatement.setInt(2, genreId);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List <Movie> getAllMovies() {
        String query = "SELECT * FROM movie";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            List<Movie> movies = new LinkedList<Movie>();
            while (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setYear(resultSet.getInt(4));
                movie.setCreatedDate(resultSet.getDate(5));
                movie.setPicture(resultSet.getString(6));
                movie.setDirector(resultSet.getString(7));

                movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public List<Movie> getMovieByGenre(int id) {
        String query = "SELECT * FROM `movie` INNER JOIN `movies_genre` ON movie.id = `movies_genre`.`movie_id` " +
                "AND `movies_genre`.`genre_id` IN (SELECT id FROM `genre`  INNER JOIN `movies_genre` ON genre.id = `movies_genre`.`genre_id` " +
                "WHERE `movies_genre`.`genre_id`=" + id + ")";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            List<Movie> movies = new LinkedList<Movie>();
            while (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setYear(resultSet.getInt(4));
                movie.setCreatedDate(DateUtil.convertStringToDate(resultSet.getString(5)));
                movie.setPicture(resultSet.getString(6));
                movie.setDirector(resultSet.getString(7));

                movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List <Movie> searchMovieByName(String search) {
        String query = "SELECT * FROM `movie` WHERE `title` LIKE '" + "%" + search + "%" + "'";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            List <Movie> movies = new ArrayList <Movie>();

            while (resultSet.next()) {
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setYear(resultSet.getInt(4));
                movie.setCreatedDate(DateUtil.convertStringToDate(resultSet.getString(5)));
                movie.setPicture((resultSet.getString(6)));
                movie.setDirector((resultSet.getString(7)));
                movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Movie> getMovieLimit() {
        String query = "SELECT * FROM movie ORDER BY id DESC limit 10";
        try {
            List<Movie> movies = new LinkedList<Movie>();

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                Movie movie = new Movie();

                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setYear(resultSet.getInt(4));
                movie.setCreatedDate(DateUtil.convertStringToDate(resultSet.getString(5)));
                movie.setPicture(resultSet.getString(6));
                movie.setDirector(resultSet.getString(7));

                movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}