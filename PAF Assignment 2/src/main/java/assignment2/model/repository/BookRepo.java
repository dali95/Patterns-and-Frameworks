package assignment2.model.repository;

import assignment2.model.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


/**
 * Created by Dali on 4/16/2017.
 */
@RepositoryRestResource(collectionResourceRel = "books", path = "books")

public interface BookRepo extends CrudRepository<Book,Integer> {
}
