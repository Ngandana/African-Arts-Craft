package za.ac.cput.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import za.ac.cput.domain.Cart;
import za.ac.cput.domain.Users;

import java.util.List;

//Extendind the Jpa repository and applying the CRUD operation
public interface CartRepository extends JpaRepository<Cart, Long> {

    List<Cart> findByUserId(Long userId);


}
