import { Module } from '@nestjs/common';
import { UserService } from './user.service';
import { UserController } from './user.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from './entities/user.entity';
import { UserHistory } from './entities/user-history.entity';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    TypeOrmModule.forFeature([User, UserHistory]),
    JwtModule.register({
      secret: process.env.JWT_CONSTANT,
      signOptions: { expiresIn: process.env.JWT_EXPIRE_IN },
    }),
    // UserLogModule,
  ],
  controllers: [UserController],
  providers: [UserService],
})
export class UserModule {}
