package za.ac.cput.domain;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import lombok.Getter;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

/**
 * Represents a wishlist entry in the system.
 * Each entry is associated with a user and can have multiple products.
 *
 * This entity class is mapped to the "wishlist" table in the database.
 * It uses Lombok annotations to reduce boilerplate code.
 *
 * Author: Siibusiso Kubalo
 * Student Num: 218316038
 */
@Entity
@Getter
@Table(name = "wishlist")
public class Wishlist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    @JsonIgnoreProperties({"address", "review", "firstName", "lastName", "email", "password", "phoneNumber", "roles", "wishlist", "createdAt", "updatedAt"})
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_id")
    @JsonIncludeProperties({"id", "name", "price", "imagePath"})
    private Product product;

    @CreationTimestamp
    private LocalDateTime createdAt;


    public Wishlist() {
    }


    public Wishlist(Builder builder) {
        this.id = builder.id;
        this.user = builder.user;
        this.product = builder.product;
        this.createdAt = builder.createdAt;
    }

    @Override
    public String toString() {
        return "Wishlist{" +
                "id=" + id +
                ", user=" + user.getFirstName() +
                ", Product=" + product.getName() +
                ", createdAt=" + createdAt +
                "}\n ";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Wishlist wishlist = (Wishlist) o;
        return Objects.equals(id, wishlist.id) &&
                Objects.equals(user, wishlist.user) &&
                Objects.equals(product, wishlist.product) &&
                Objects.equals(createdAt, wishlist.createdAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, user, product, createdAt);
    }

    public static class Builder {
        private Long id;
        private User user;
        private Product product;
        private LocalDateTime createdAt;

        public Builder setId(Long id) {
            this.id = id;
            return this;
        }

        public Builder setUser(User user) {
            this.user = user;
            return this;
        }

        public Builder setProduct(Product product) {
            this.product = product;
            return this;
        }

        public Builder setCreatedAt(LocalDateTime createdAt) {
            this.createdAt = createdAt;
            return this;
        }

        public Builder copy(Wishlist wishlist) {
            this.id = wishlist.getId();
            this.user = wishlist.getUser();
            this.product = wishlist.getProduct();
            this.createdAt = wishlist.getCreatedAt();
            return this;
        }

        public Wishlist build() {
            return new Wishlist(this);
        }
    }
}
