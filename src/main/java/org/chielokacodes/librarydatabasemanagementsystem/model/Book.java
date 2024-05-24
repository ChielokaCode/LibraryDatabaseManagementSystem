package org.chielokacodes.librarydatabasemanagementsystem.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private Long id;
    private String bookName;
    private String author;
    private String genre;
    private BigDecimal price;

    public Book(String bookName, String author, String genre, BigDecimal price) {
        this.bookName = bookName;
        this.author = author;
        this.genre = genre;
        this.price = price;
    }
}
