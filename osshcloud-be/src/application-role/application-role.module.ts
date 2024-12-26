import { Module } from '@nestjs/common';
import { ApplicationRoleService } from './application-role.service';
import { ApplicationRoleController } from './application-role.controller';

@Module({
  controllers: [ApplicationRoleController],
  providers: [ApplicationRoleService],
})
export class ApplicationRoleModule {}
