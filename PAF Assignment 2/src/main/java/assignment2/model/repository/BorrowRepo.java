package assignment2.model.repository;

import assignment2.model.BorrowerInformation;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by Dali on 4/17/2017.
 */
@RepositoryRestResource(collectionResourceRel = "borrowers", path = "borrowers")

public interface BorrowRepo extends CrudRepository<BorrowerInformation, Integer>{
}
