import { Module } from '@nestjs/common';
import { BusinessRoleService } from './business-role.service';
import { BusinessRoleController } from './business-role.controller';

@Module({
  controllers: [BusinessRoleController],
  providers: [BusinessRoleService],
})
export class BusinessRoleModule {}
