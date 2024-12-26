import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { BusinessApplicationResourceService } from './business-application-resource.service';
import { CreateBusinessApplicationResourceDto } from './dto/create-business-application-resource.dto';
import { UpdateBusinessApplicationResourceDto } from './dto/update-business-application-resource.dto';

@Controller('business-application-resource')
export class BusinessApplicationResourceController {
  constructor(private readonly businessApplicationResourceService: BusinessApplicationResourceService) {}

  @Post()
  create(@Body() createBusinessApplicationResourceDto: CreateBusinessApplicationResourceDto) {
    return this.businessApplicationResourceService.create(createBusinessApplicationResourceDto);
  }

  @Get()
  findAll() {
    return this.businessApplicationResourceService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.businessApplicationResourceService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBusinessApplicationResourceDto: UpdateBusinessApplicationResourceDto) {
    return this.businessApplicationResourceService.update(+id, updateBusinessApplicationResourceDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.businessApplicationResourceService.remove(+id);
  }
}
