import { Test, TestingModule } from '@nestjs/testing';
import { BusinessApplicationResourceService } from './business-application-resource.service';

describe('BusinessApplicationResourceService', () => {
  let service: BusinessApplicationResourceService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BusinessApplicationResourceService],
    }).compile();

    service = module.get<BusinessApplicationResourceService>(BusinessApplicationResourceService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
