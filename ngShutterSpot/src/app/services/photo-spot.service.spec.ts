import { TestBed } from '@angular/core/testing';

import { PhotoSpotService } from './photo-spot.service';

describe('PhotoSpotService', () => {
  let service: PhotoSpotService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PhotoSpotService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
