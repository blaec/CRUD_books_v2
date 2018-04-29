package com.github.books.repository;

import com.github.books.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    private static final Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Book successfully added. Book details: " + book);
    }

    @Override
    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Book successfully updated. Book details: " + book);
    }

    @Override
    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = session.load(Book.class, id);

        if(book != null){
            session.delete(book);
        }

        logger.info("Book successfully removed. Book details: " + book);
    }

    @Override
    public void makeRead(boolean isUpdate, Book book) {
        Session session = this.sessionFactory.getCurrentSession();

        if (isUpdate)
            book.setReadAlready(false);
        else
            book.setReadAlready(true);
        session.update(book);

        logger.info("Book was read. Book details: " + book);
    }

    @Override
    public Book getBookById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Book book = session.load(Book.class, id);
        logger.info("Book successfully loaded by id. Book details: " + book);

        return book;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Book> listBooks() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book").list();

        for(Book book : bookList){
            logger.info("Book list: " + book);
        }

        return bookList;
    }

    @Override
    @SuppressWarnings("unchecked")
    public Book getBookByName(String searchTitle) {
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book where title =:title")
                .setParameter("title", searchTitle)
                .list();

        for (Book book : bookList) {
            logger.info("Book list: " + book);
        }

        // Prevent error page - if nothing found display empty page
        if (bookList.size() > 0)    return bookList.get(0);
        else                        return null;
    }
}
