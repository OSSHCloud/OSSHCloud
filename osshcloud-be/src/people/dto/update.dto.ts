import { Type } from 'class-transformer';
import {
  IsArray,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
  ValidateNested,
} from 'class-validator';

export class UpdateDataPayloadDto {
  @IsNotEmpty()
  @IsNumber()
  peopleId: number;

  @IsNotEmpty()
  @IsString()
  firstName: string;

  @IsOptional()
  @IsString()
  middleName: string;

  @IsNotEmpty()
  @IsString()
  lastName: string;

  @IsOptional()
  @IsString()
  profileImage: string;

  @IsOptional()
  @IsString()
  dateOfBirth: string;

  @IsOptional()
  @IsNumber()
  lovGenderTypeId: number;
}

export class UpdateDto {
  @IsNotEmpty()
  @ValidateNested({ each: true })
  @Type(() => UpdateDataPayloadDto)
  @IsArray()
  data: UpdateDataPayloadDto[];
}
