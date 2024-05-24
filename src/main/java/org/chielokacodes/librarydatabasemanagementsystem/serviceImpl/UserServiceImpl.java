package org.chielokacodes.librarydatabasemanagementsystem.serviceImpl;

import at.favre.lib.crypto.bcrypt.BCrypt;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.LoginRequestDto;
import org.chielokacodes.librarydatabasemanagementsystem.dtos.UserDto;
import org.chielokacodes.librarydatabasemanagementsystem.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

public class UserServiceImpl {
    public static List<User> savedUser = new ArrayList<>();
    public Function<UserDto, User> saveUserInformation = (userDto -> {
        User user = new User(userDto);
        user.setId(savedUser.isEmpty() ? 1: (long) savedUser.size()+1);
        savedUser.add(user);
        return user;
    });

    public Function<LoginRequestDto, User> findUserByEmail= (loggedInUser)-> savedUser
            .stream()
            .filter(user-> Objects.equals(user.getEmail(), loggedInUser.getEmail()))
            .collect(Collectors.toList()).get(0);

    public Function<LoginRequestDto, Boolean> verifyPassword = (user)-> BCrypt.verifyer()
            .verify(user.getPassword().toCharArray(),
                    user.getHashPassword()).verified;
}
