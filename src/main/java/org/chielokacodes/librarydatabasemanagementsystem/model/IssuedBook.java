package org.chielokacodes.librarydatabasemanagementsystem.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class IssuedBook {
    private Long id;
    private String fullName;
    private String book;
    private String userName;
    private String issuedDate;
    private String dueDate;
    private String returned;

    public IssuedBook(String fullName, String book, String userName, String issuedDate, String dueDate, String returned) {
        this.fullName = fullName;
        this.book = book;
        this.userName = userName;
        this.issuedDate = issuedDate;
        this.dueDate = dueDate;
        this.returned = returned;
    }
}
