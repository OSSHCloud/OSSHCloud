import { Module } from '@nestjs/common';
import { BusinessApplicationResourceService } from './business-application-resource.service';
import { BusinessApplicationResourceController } from './business-application-resource.controller';

@Module({
  controllers: [BusinessApplicationResourceController],
  providers: [BusinessApplicationResourceService],
})
export class BusinessApplicationResourceModule {}
