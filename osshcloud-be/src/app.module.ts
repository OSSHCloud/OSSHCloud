import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ListOfValuesModule } from './list-of-values/list-of-values.module';

@Module({
  imports: [UserModule, ListOfValuesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
