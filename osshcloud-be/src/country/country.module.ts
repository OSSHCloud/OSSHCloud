import { Module } from '@nestjs/common';
import { CountryService } from './country.service';
import { CountryController } from './country.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Country } from './entities/country.entity';
import { CountryHistory } from './entities/country-history.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Country, CountryHistory])],
  controllers: [CountryController],
  providers: [CountryService],
})
export class CountryModule {}
