package org.chielokacodes.librarydatabasemanagementsystem.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Purchases {
    private Long id;
    private String fullName;
    private String userName;
    private String book;
    private String country;
    private String address;

    public Purchases(String fullName, String userName, String book, String country, String address) {
        this.fullName = fullName;
        this.userName = userName;
        this.book = book;
        this.country = country;
        this.address = address;
    }
}
