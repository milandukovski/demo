import {Component} from '@angular/core';
import {AuthorService} from './services/author.service';
import {BookService} from './services/book.service';
import {Author} from './models/author';
import {Book} from './models/book';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  public authors: Author[];
  public books: Book[];
  public authorBooks: Book[];
  public selectedAuthor: Author;
  public keyword: string;
  public searchBooks: boolean = false;

  constructor(private authService: AuthorService, private bookService: BookService) {
  }

  onSearchChange(searchedValue: string) {
    this.keyword = searchedValue;
    this.fetchData();
  }

  showAuthorBooks(author: Author) {
    if (this.selectedAuthor != author) {
      this.selectedAuthor = author;
      this.bookService.getBooksByAuthor(this.selectedAuthor).subscribe(data => {
        this.authorBooks = data;
      });
    }
  }

  changeSearchBookCb() {
    this.searchBooks = !this.searchBooks;
    this.fetchData()
  }

  displayAuthorName(author: Author) {
    return this.highlightText(author.firstName + ' ' + author.lastName);
  }

  displayAuthorAddress(author: Author) {
    return this.highlightText(author.address + ', ' + author.city);
  }

  highlightText(content: string) {
    return content.replace(new RegExp(this.keyword, 'gi'), match => {
      return '<span class="highlightText">' + match + '</span>';
    });
  }

  fetchData() {
    this.selectedAuthor = null;
    this.authorBooks = null;
    if (this.keyword !== undefined && this.keyword.length > 2) {
      if (this.searchBooks) {
        this.bookService.getBooks(this.keyword).subscribe(data => {
          this.books = data;
          this.authors = [];
        })
      }
      else {
        this.authService.getAuthors(this.keyword).subscribe(data => {
          this.authors = data;
          this.books = null
        });
      }
    }
    else {
      this.books = [];
      this.authors = [];
    }
  }
}
