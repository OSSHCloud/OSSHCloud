import { Test, TestingModule } from '@nestjs/testing';
import { ApplicationRoleController } from './application-role.controller';
import { ApplicationRoleService } from './application-role.service';

describe('ApplicationRoleController', () => {
  let controller: ApplicationRoleController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ApplicationRoleController],
      providers: [ApplicationRoleService],
    }).compile();

    controller = module.get<ApplicationRoleController>(ApplicationRoleController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
