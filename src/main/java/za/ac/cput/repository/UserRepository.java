package za.ac.cput.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import za.ac.cput.domain.User;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.Set;

/**
 * UserRepository.java
 *
 * Repository interface for User entity.
 *
 * Provides CRUD operations and custom query methods.
 *
 * Author: Rethabile Ntsekhe
 * Student Num: 220455430
 * Date: 24-Jul-24
 */

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    /**
     * Finds a user by their unique username.
     *
     * @param username the username to search for
     * @return an Optional containing the User if found, else empty
     */
    List<User> findByUsername(String username);

    /**
     * Finds users by their last name.
     *
     * @param lastName the last name to search for
     * @return a list of Users with the given last name
     */
    List<User> findByLastName(String lastName);

    /**
     * Finds a user by their unique email.
     *
     * @param email the email to search for
     * @return an Optional containing the User if found, else empty
     */
    List<User> findByEmail(String email);

    /**
     * Finds users who were created on or after the specified date.
     *
     * @param createdAt the date to compare with
     * @return a list of Users created on or after the specified date
     */
    List<User> findByCreatedAtAfter(LocalDate createdAt);

    /**
     * Finds a user by their email and password.
     * <p>
     * **Important:** Storing passwords in plain text is insecure.
     * It's recommended to store hashed passwords and handle authentication securely.
     *
     * @param email    the user's email
     * @param password the user's password
     * @return an Optional containing the User if found, else empty
     */
    User findByEmailAndPassword(String email, String password);


    /**
     * Finds users by their roles.
     *
     * @param role the role to search for
     * @return a list of Users with the given role
     */
    List<User> findByRoles(String role);

    /**
     * Finds a list of users by their avatar image URL or path.
     *
     * @param avatar the avatar image URL or path to search for
     * @return a list of users that match the given avatar
     */
    List<User> findByAvatar(String avatar);
}
