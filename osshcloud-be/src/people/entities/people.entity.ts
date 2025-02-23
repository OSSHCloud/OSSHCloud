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

@Entity({ name: 'people' })
export class People {
  @PrimaryGeneratedColumn({ name: 'people_id' })
  peopleId: number;

  @Column({ name: 'first_name' })
  firstName: string;

  @Column({ name: 'middle_name', nullable: true })
  middleName?: string;

  @Column({ name: 'last_name', nullable: false })
  lastName: string;

  @Column({ name: 'profile_image', nullable: true })
  profileImage?: string;

  @Column({ type: 'date', name: 'date_of_birth', nullable: true })
  dateOfBirth?: string;

  @ManyToOne(() => ListOfValues, (x) => x.listOfValuesId)
  @JoinColumn({ name: 'lov_gender_type_id' })
  @Column({ nullable: true, name: 'lov_gender_type_id' })
  lovGenderTypeId?: number;

  @ManyToOne(() => User, (x) => x.userId)
  @JoinColumn({ name: 'user_id' })
  @Column({
    name: 'user_id',
    nullable: true,
  })
  userId: number;

  @ManyToOne(() => User, (x) => x.userId)
  @JoinColumn({ name: 'created_by_id' })
  @Column({
    name: 'created_by_id',
    nullable: true,
  })
  createdById: number;

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
