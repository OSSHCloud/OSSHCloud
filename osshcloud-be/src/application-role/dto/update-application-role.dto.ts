import { PartialType } from '@nestjs/mapped-types';
import { CreateApplicationRoleDto } from './create-application-role.dto';

export class UpdateApplicationRoleDto extends PartialType(CreateApplicationRoleDto) {}
