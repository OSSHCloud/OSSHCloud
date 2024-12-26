import { PartialType } from '@nestjs/mapped-types';
import { CreateBusinessApplicationResourceDto } from './create-business-application-resource.dto';

export class UpdateBusinessApplicationResourceDto extends PartialType(CreateBusinessApplicationResourceDto) {}
