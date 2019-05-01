package assignment2.model.repository;

import assignment2.model.Item;
 import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by Dali on 4/16/2017.
 */

@RepositoryRestResource(collectionResourceRel = "items", path = "items")

public interface ItemRepo extends CrudRepository<Item,Integer> {
}
