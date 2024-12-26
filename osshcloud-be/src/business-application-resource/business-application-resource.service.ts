import { Injectable } from '@nestjs/common';
import { CreateBusinessApplicationResourceDto } from './dto/create-business-application-resource.dto';
import { UpdateBusinessApplicationResourceDto } from './dto/update-business-application-resource.dto';

@Injectable()
export class BusinessApplicationResourceService {
  create(createBusinessApplicationResourceDto: CreateBusinessApplicationResourceDto) {
    return 'This action adds a new businessApplicationResource';
  }

  findAll() {
    return `This action returns all businessApplicationResource`;
  }

  findOne(id: number) {
    return `This action returns a #${id} businessApplicationResource`;
  }

  update(id: number, updateBusinessApplicationResourceDto: UpdateBusinessApplicationResourceDto) {
    return `This action updates a #${id} businessApplicationResource`;
  }

  remove(id: number) {
    return `This action removes a #${id} businessApplicationResource`;
  }
}
