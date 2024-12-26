import { Injectable } from '@nestjs/common';
import { CreateApplicationRoleDto } from './dto/create-application-role.dto';
import { UpdateApplicationRoleDto } from './dto/update-application-role.dto';

@Injectable()
export class ApplicationRoleService {
  create(createApplicationRoleDto: CreateApplicationRoleDto) {
    return 'This action adds a new applicationRole';
  }

  findAll() {
    return `This action returns all applicationRole`;
  }

  findOne(id: number) {
    return `This action returns a #${id} applicationRole`;
  }

  update(id: number, updateApplicationRoleDto: UpdateApplicationRoleDto) {
    return `This action updates a #${id} applicationRole`;
  }

  remove(id: number) {
    return `This action removes a #${id} applicationRole`;
  }
}
