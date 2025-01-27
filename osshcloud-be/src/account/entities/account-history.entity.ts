import { ListOfValues } from 'src/list-of-values/entities/list-of-values.entity';
import { People } from 'src/people/entities/people.entity';
import { User } from 'src/user/entities/user.entity';
import { LID_CREATED_ID } from 'src/utils/constants';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';

@Entity({ name: 'account_history' })
export class AccountHistory {
  @PrimaryGeneratedColumn({ name: 'account_history_id' })
  accountHistoryId: number;

  @Column({ name: 'account_id' })
  accountId: number;

  @Column({ name: 'title' })
  title: string;

  @Column({ name: 'description', nullable: true })
  description: string;

  // @ManyToOne(() => people, (x) => x.people_id)
  // @JoinColumn({ name: 'people_id' })
  @Column({
    name: 'people_id',
  })
  peopleId: number;

  // @ManyToOne(() => people, (x) => x.people_id)
  // @JoinColumn({ name: 'people_id' })
  @Column({
    name: 'bank_id',
  })
  bankId: number;

  @Column({ name: 'iban', nullable: true })
  iban: string;

  // @Column({ name: 'description', nullable: true })
  // description: string;

  // dml

  @ManyToOne(() => ListOfValues, (x) => x.listOfValuesId)
  @JoinColumn({ name: 'dml_status' })
  @Column({
    name: 'dml_status',
    default: LID_CREATED_ID,
  })
  dmlStatus: number;

  @ManyToOne(() => User, (user) => user.userId)
  @JoinColumn({ name: 'dml_user_id' })
  @Column({ name: 'dml_user_id' })
  dmlUserId: number;

  @Column({ name: 'dml_timestamp', type: 'timestamptz' })
  dmlTimestamp: Date;
}
