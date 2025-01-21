import { Module } from '@nestjs/common';
import { PeopleService } from './people.service';
import { PeopleController } from './people.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { People } from './entities/people.entity';
import { PeopleHistory } from './entities/people-history.entity';

@Module({
  imports: [TypeOrmModule.forFeature([People, PeopleHistory])],
  controllers: [PeopleController],
  providers: [PeopleService],
})
export class peopleModule {}
