package assignment2.model.repository;

import assignment2.model.Reservation;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/**
 * Created by Dali on 4/15/2017.
 */
@RepositoryRestResource(collectionResourceRel = "reservations", path = "reservations")

public interface ReservationRepo extends CrudRepository<Reservation,Integer>{

}
