import { ListOfValues } from 'src/list-of-values/entities/list-of-values.entity';
import { User } from 'src/user/entities/user.entity';
import {
  LID_ACTIVE_ID,
  LID_CREATED_ID,
  LID_NOT_VERIFIED_ID,
} from 'src/utils/constants';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';

@Entity({ name: 'email' })
export class Email {
  @PrimaryGeneratedColumn({ name: 'email_id' })
  emailId: number;

  @ManyToOne(() => User, (x) => x.userId)
  @JoinColumn({ name: 'user_id' })
  @Column({ name: 'user_id' })
  userId: number;

  @Column({ name: 'email' })
  email: string;

  @ManyToOne(() => ListOfValues, (x) => x.listOfValuesId)
  @JoinColumn({ name: 'lov_status_id' })
  @Column({
    name: 'lov_status_id',
    default: LID_ACTIVE_ID,
  })
  lovStatusId: number;

  @ManyToOne(() => ListOfValues, (x) => x.listOfValuesId)
  @JoinColumn({ name: 'lov_verification_id' })
  @Column({
    name: 'lov_verification_id',
    default: LID_NOT_VERIFIED_ID,
  })
  lovVerificationId: number;

  @Column({ name: 'verification_timestamp', nullable: true })
  verificationTimestamp: number;

  // dml

  @ManyToOne(() => ListOfValues, (x) => x.listOfValuesId)
  @JoinColumn({ name: 'dml_status' })
  @Column({
    name: 'dml_status',
    default: LID_CREATED_ID,
  })
  dmlStatus: number;

  @ManyToOne(() => User, (x) => x.userId)
  @JoinColumn({ name: 'dml_user_id' })
  @Column({ name: 'dml_user_id', nullable: true })
  dmlUserId: number;

  @Column({ name: 'dml_timestamp', type: 'timestamptz' })
  dmlTimestamp: Date;
}
