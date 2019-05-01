package assignment2.model.repository;

import assignment2.model.Loan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by Dali on 4/16/2017.
 */

@RepositoryRestResource(collectionResourceRel = "loans", path = "loans")
public interface LoanRepo extends CrudRepository<Loan,Integer> {


}
