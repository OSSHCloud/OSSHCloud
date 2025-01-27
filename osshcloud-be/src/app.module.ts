import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ListOfValuesModule } from './list-of-values/list-of-values.module';
import * as dotenv from 'dotenv';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserLogModule } from './user-log/user-log.module';
import { LovCategoryModule } from './lov-category/lov-category.module';
import { ApplicationModule } from './application/application.module';
import { ApplicationRoleModule } from './application-role/application-role.module';
import { BusinessRoleModule } from './business-role/business-role.module';
import { BusinessApplicationRoleModule } from './business-application-role/business-application-role.module';
import { PeopleModule } from './people/people.module';
import { AccountModule } from './account/account.module';
import { BankModule } from './bank/bank.module';
import { CountryModule } from './country/country.module';

dotenv.config();

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: process.env.DB_HOST,
      port: Number(process.env.DB_PORT),
      username: process.env.DB_USER_NAME,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME,
      migrations: [__dirname + '/migrations/*{.ts,.js}'],
      entities: [__dirname + '/**/*.entity{.ts,.js}'],
      synchronize: true,
    }),
    UserModule,
    ListOfValuesModule,
    UserLogModule,
    LovCategoryModule,
    ApplicationModule,
    ApplicationRoleModule,
    BusinessRoleModule,
    BusinessApplicationRoleModule,
    PeopleModule,
    AccountModule,
    BankModule,
    CountryModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
