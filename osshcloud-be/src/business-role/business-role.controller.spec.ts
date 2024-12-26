import { Test, TestingModule } from '@nestjs/testing';
import { BusinessRoleController } from './business-role.controller';
import { BusinessRoleService } from './business-role.service';

describe('BusinessRoleController', () => {
  let controller: BusinessRoleController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BusinessRoleController],
      providers: [BusinessRoleService],
    }).compile();

    controller = module.get<BusinessRoleController>(BusinessRoleController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
