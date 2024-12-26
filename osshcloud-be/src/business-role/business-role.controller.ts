import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { BusinessRoleService } from './business-role.service';
import { CreateBusinessRoleDto } from './dto/create-business-role.dto';
import { UpdateBusinessRoleDto } from './dto/update-business-role.dto';

@Controller('business-role')
export class BusinessRoleController {
  constructor(private readonly businessRoleService: BusinessRoleService) {}

  @Post()
  create(@Body() createBusinessRoleDto: CreateBusinessRoleDto) {
    return this.businessRoleService.create(createBusinessRoleDto);
  }

  @Get()
  findAll() {
    return this.businessRoleService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.businessRoleService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBusinessRoleDto: UpdateBusinessRoleDto) {
    return this.businessRoleService.update(+id, updateBusinessRoleDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.businessRoleService.remove(+id);
  }
}
