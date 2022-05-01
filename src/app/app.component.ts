import { Component } from '@angular/core';

import { environment as env } from '../environments/environment';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  public title = env.title;
  public description = env.description;
  public test = env.test;
}
