package com.github.books.web;

import com.github.books.model.Book;
import com.github.books.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookController {
    private BookService bookService;

    @Autowired
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping(value = "/books")
    public String listBooks(@RequestParam(required = false) Integer page, Model model) {
        model.addAttribute("book", new Book());
        List<Book> books = bookService.listBooks();
        setPaging(page, model, books);

        return "/books";
    }

    @PostMapping(value = "/books/add")
    public String addBook(@ModelAttribute("book") Book book) {
        if (book.isNew()) {
            bookService.addBook(book);
        } else {
            bookService.updateBook(book);
        }

        return "redirect:/books";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        bookService.removeBook(id);

        return "redirect:/books";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@RequestParam(required = false) Integer page, @PathVariable("id") int id, Model model) {
        Book book = bookService.getBookById(id);
        bookService.makeRead(true, book);
        model.addAttribute("book", book);
        List<Book> books = bookService.listBooks();
        setPaging(page, model, books);

        return "books";
    }

    @RequestMapping("bookdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model) {
        Book book = bookService.getBookById(id);
        bookService.makeRead(false, book);
        model.addAttribute("book", book);

        return "bookdata";
    }


    @RequestMapping(value = "books/search")
    public String searchUser(@RequestParam("searchTitle") String searchTitle, Model model) {
        Book book = bookService.getBookByName(searchTitle);
        model.addAttribute("book", book);

        return "bookdata";
    }

    private void setPaging(Integer page, Model model, List<Book> books) {
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<>(books);
        pagedListHolder.setPageSize(10);

        model.addAttribute("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount())
            page = 1;

        model.addAttribute("page", page);

        pagedListHolder.setPage(page - 1);
        model.addAttribute("listBooks", pagedListHolder.getPageList());
    }
}





