import { Type } from 'class-transformer';
import {
  IsArray,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  ValidateNested,
} from 'class-validator';
import { paginationDto } from 'src/utils/commonDtos.dto';

export class FindOneByEmailDataPayloadDto {
  @IsNotEmpty()
  @IsNumber()
  email: string;
}

export class FindOneByEmailDto {
  @IsNotEmpty()
  @ValidateNested({ each: true })
  @Type(() => FindOneByEmailDataPayloadDto)
  @IsArray()
  data: FindOneByEmailDataPayloadDto[];
}
