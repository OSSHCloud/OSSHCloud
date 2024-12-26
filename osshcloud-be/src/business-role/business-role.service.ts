import { Injectable } from '@nestjs/common';
import { CreateBusinessRoleDto } from './dto/create-business-role.dto';
import { UpdateBusinessRoleDto } from './dto/update-business-role.dto';

@Injectable()
export class BusinessRoleService {
  create(createBusinessRoleDto: CreateBusinessRoleDto) {
    return 'This action adds a new businessRole';
  }

  findAll() {
    return `This action returns all businessRole`;
  }

  findOne(id: number) {
    return `This action returns a #${id} businessRole`;
  }

  update(id: number, updateBusinessRoleDto: UpdateBusinessRoleDto) {
    return `This action updates a #${id} businessRole`;
  }

  remove(id: number) {
    return `This action removes a #${id} businessRole`;
  }
}
