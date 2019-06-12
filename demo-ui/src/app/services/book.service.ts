import {Injectable} from '@angular/core';
import {HttpClient, HttpParams} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Book} from '../models/book';
import {Author} from '../models/author';

@Injectable({
  providedIn: 'root'
})
export class BookService {

  private baseUrl = '/api/books/';

  constructor(private httpClient: HttpClient) {
  }

  public getBooks(keyword: string): Observable<Book[]> {
    return this.httpClient.get<Book[]>(this.baseUrl, {params: new HttpParams().set('keyword', keyword)});
  }

  public getBooksByAuthor(author: Author): Observable<Book[]> {
    let url = this.baseUrl + `author/${author.id}`;
    return this.httpClient.get<Book[]>(url);
  }
}
