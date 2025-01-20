import { ListOfValues } from 'src/list-of-values/entities/list-of-values.entity';
import { User } from 'src/user/entities/user.entity';
import { LID_CREATED_ID } from 'src/utils/constants';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';

@Entity({ name: 'people_history' })
export class PeopleHistory {
  @PrimaryGeneratedColumn({ name: 'people_history_id' })
  peopleHistoryId: number;

  @Column({ name: 'people_id' })
  peopleId: number;

  @Column({ name: 'full_name' })
  fullName: string;

  @Column({ name: 'description', nullable: true })
  description: string;

  @ManyToOne(() => User, (x) => x.userId)
  @JoinColumn({ name: 'user_id' })
  @Column({
    name: 'user_id',
    nullable: true,
  })
  userId: number;

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
