import { Module } from '@nestjs/common';
import { BankService } from './bank.service';
import { BankController } from './bank.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Bank } from './entities/bank.entity';
import { BankHistory } from './entities/bank-history.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Bank, BankHistory])],
  controllers: [BankController],
  providers: [BankService],
})
export class BankModule {}
