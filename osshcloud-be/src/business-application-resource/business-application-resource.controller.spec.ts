import { Test, TestingModule } from '@nestjs/testing';
import { BusinessApplicationResourceController } from './business-application-resource.controller';
import { BusinessApplicationResourceService } from './business-application-resource.service';

describe('BusinessApplicationResourceController', () => {
  let controller: BusinessApplicationResourceController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BusinessApplicationResourceController],
      providers: [BusinessApplicationResourceService],
    }).compile();

    controller = module.get<BusinessApplicationResourceController>(BusinessApplicationResourceController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
