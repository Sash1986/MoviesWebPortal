package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Movie {

    private int id;
    private String title;
    private String description;
    private int year;
    private Date CreatedDate;
    private String picture;
    private String director;
    private List<Genre> genres;

}
