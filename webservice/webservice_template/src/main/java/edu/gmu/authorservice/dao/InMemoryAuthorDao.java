package edu.gmu.authorservice.dao;

import edu.gmu.authorservice.model.Author;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashSet;

public class InMemoryAuthorDao implements AuthorDao {



    Integer [] author_id =  { 1, 2, 3, 4, 5
                            };



    String [] author_name = { "J. R. R. Tolkien",
                              "Ayn Rand",
                              "Orson Scott Card",
                              "William Shakespeare",
                              "Neal Stephenson"
                            };



    String [] author_dob = { "1892-01-03" ,
                             "1905-02-02",
                             "1951-08-24",
                             "1564-04-26",
                             "1959-10-31"
                           };

    String [] author_nationality = { "British" ,
                                     "United States",
                                     "United States",
                                     "British",
                                     "United States"
                                   };

    String [] author_biography = { "John Ronald Reuel Tolkien, CBE (tol-keen; 3 January 1892 – 2 September 1973) was an English writer, poet, philologist, and university professor, best known as the author of the classic high fantasy works The Hobbit, The Lord of the Rings, and The Silmarillion." ,
                                   "Ayn Rand (/ˈaɪn ˈrænd/; born Alisa Zinov''yevna Rosenbaum; February 2 [O.S. January 20] 1905 – March 6, 1982) was an American novelist, philosopher,[2] playwright, and screenwriter. She is known for her two best-selling novels, The Fountainhead and Atlas Shrugged, and for developing a philosophical system she called Objectivism. Born and educated in Russia, Rand moved to the United States in 1926. She had a play produced on Broadway in 1935–1936. After two early novels that were initially unsuccessful in America, she achieved fame with her 1943 novel, The Fountainhead.",
                                   "Orson Scott Card (born August 24, 1951)[5] is an American novelist, critic, public speaker, essayist and columnist. He writes in several genres but is known best for science fiction. His novel Ender''s Game (1985) and its sequel Speaker for the Dead (1986) both won Hugo and Nebula Awards, making Card the only author to win both science fiction''s top U.S. prizes in consecutive years.",
                                   "William Shakespeare (26 April 1564 (baptised) – 23 April 1616) was an English poet, playwright and actor, widely regarded as the greatest writer in the English language and the world''s pre-eminent dramatist. He is often called England''s national poet and the 'Bard of Avon'. His extant works, including some collaborations, consist of about 38 plays, 154 sonnets, two long narrative poems, and a few other verses, the authorship of some of which is uncertain. His plays have been translated into every major living language and are performed more often than those of any other playwright.",
                                   "Neal Town Stephenson (born October 31, 1959) is an American author and game designer known for his works of speculative fiction. His novels have been variously categorized as science fiction, historical fiction, cyberpunk, and 'postcyberpunk.' Other labels, such as 'baroque,' often appear. Stephenson explores subjects such as mathematics, cryptography, philosophy, currency, and the history of science. He also writes non-fiction articles about technology in publications such as Wired."
                                 };

    String [] author_awards = { "",
                                "Prometheus Award - Hall of Fame (1983 Atlas Shrugged, 1987 Anthem)",
                                "Hugo Award (Ender''s Game; 1986 Speaker for the Dead, 1987; How to Write Science Fiction and Fantasy, 1991), Nebula Award (Ender''s Game, 1986; Speaker for the Dead, 1987; Eye for Eye, 1988)",
                                "",
                                "Hugo, Nebula, and Prometheus Awards"
                              };

    String [] author_image_url = { "http://upload.wikimedia.org/wikipedia/commons/b/b4/Tolkien_1916.jpg",
                                   "http://upload.wikimedia.org/wikipedia/en/3/32/Ayn_Rand1.jpg",
                                   "http://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Orson_Scott_Card_at_BYU_Symposium_20080216_closeup.jpg/500px-Orson_Scott_Card_at_BYU_Symposium_20080216_closeup.jpg",
                                   "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Shakespeare.jpg/500px-Shakespeare.jpg",
                                   "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Neal_Stephenson_2008_crop.jpg/440px-Neal_Stephenson_2008_crop.jpg"
                                 };

public interface AuthorDao {

    Author getAuthor(Integer id);

    Collection<Author> getAllAuthors();

}

    @Override
    public Author getAuthor(Integer id) {



        if ( id < 1 || id > 5)
        {
            // generate the error return
            return null;
        }
        else
        {

            Author local_author = new Author();

	        local_author.setId( author_id[ id -1 ] );

	        local_author.setName( author_name[ id -1 ] );

            SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd" );
            try {
	            local_author.setDob( sdf.parse( author_dob[ id -1 ] ) );
            } catch ( ParseException e ) {
                e.printStackTrace();
            }

	        local_author.setNationality( author_nationality[ id -1 ] );

	        local_author.setAwards(  author_awards[ id -1 ] );

	        local_author.setBiography( author_biography[ id -1 ] );

	        local_author.setImage_url( author_image_url[ id -1 ] );

            return local_author;
        }
    }

    @Override
    public Collection<Author> getAllAuthors() {

        Integer array_size;
        Integer index;

    //      create the collection to return to the caller
        Collection<Author> returnCollection;
        returnCollection = null;


    //      determine the number of elements in the authors information arrays
        array_size = author_nationality.length;

        for (index =  1; index <= array_size; index++)
        {
            returnCollection.add( getAuthor(index) );
        }
        return returnCollection;
    } // end getAllAuthors
}
