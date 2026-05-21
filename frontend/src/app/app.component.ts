import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
})
export class AppComponent {
  // TODO: Build the event check-in UI here.
  // Suggested service: src/app/services/api.service.ts wrapping HttpClient
  // calls against /api/communities, /api/people, /api/check_ins.
}
