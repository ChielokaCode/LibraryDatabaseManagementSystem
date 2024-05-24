package org.chielokacodes.librarydatabasemanagementsystem.model;

import at.favre.lib.crypto.bcrypt.BCrypt;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.UserDto;



@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class User {
    private Long id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Role role;

    public User(UserDto signedUpUser) {
        this.username = signedUpUser.getUsername();
        this.password = BCrypt.withDefaults().hashToString(12, signedUpUser.getPassword().toCharArray());
        this.email = signedUpUser.getEmail();
        this.phone = signedUpUser.getPhone();
    }

    public User(String username, String password, String email, String phone) {
        this.username = username;
        this.password = BCrypt.withDefaults().hashToString(12, password.toCharArray());
        this.email = email;
        this.phone = phone;
    }
}