import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { ApplicationRoleService } from './application-role.service';
import { CreateApplicationRoleDto } from './dto/create-application-role.dto';
import { UpdateApplicationRoleDto } from './dto/update-application-role.dto';

@Controller('application-role')
export class ApplicationRoleController {
  constructor(private readonly applicationRoleService: ApplicationRoleService) {}

  @Post()
  create(@Body() createApplicationRoleDto: CreateApplicationRoleDto) {
    return this.applicationRoleService.create(createApplicationRoleDto);
  }

  @Get()
  findAll() {
    return this.applicationRoleService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.applicationRoleService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateApplicationRoleDto: UpdateApplicationRoleDto) {
    return this.applicationRoleService.update(+id, updateApplicationRoleDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.applicationRoleService.remove(+id);
  }
}
