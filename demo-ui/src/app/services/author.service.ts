import {Injectable} from '@angular/core';
import {HttpClient, HttpParams} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Book} from '../models/book';

@Injectable({
  providedIn: 'root'
})
export class AuthorService {

  private baseUrl = '/api/authors/';

  constructor(private httpClient: HttpClient) {
  }

  public getAuthors(keyword: string): Observable<Book[]> {
    return this.httpClient.get<Book[]>(this.baseUrl, {params: new HttpParams().set('keyword', keyword)});
  }


}
