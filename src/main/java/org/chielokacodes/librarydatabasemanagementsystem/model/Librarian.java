package org.chielokacodes.librarydatabasemanagementsystem.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Librarian {
    private Long id;
    private String name;
    private String email;
    private String days;
    private String type;

    public Librarian(String name, String email, String days, String type) {
        this.name = name;
        this.email = email;
        this.days = days;
        this.type = type;
    }
}
