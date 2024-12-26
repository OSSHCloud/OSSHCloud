import { PartialType } from '@nestjs/mapped-types';
import { CreateBusinessRoleDto } from './create-business-role.dto';

export class UpdateBusinessRoleDto extends PartialType(CreateBusinessRoleDto) {}
