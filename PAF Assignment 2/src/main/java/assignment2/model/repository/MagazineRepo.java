package assignment2.model.repository;

import assignment2.model.Magazine;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by Dali on 4/16/2017.
 */
@RepositoryRestResource(collectionResourceRel = "magazines", path = "magazines")

public interface MagazineRepo extends CrudRepository<Magazine,Integer> {
}
