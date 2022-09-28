import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

// 요청 응답에 대해서는 몰라요
@Injectable()
export class AppService {
  constructor(private readonly configService: ConfigService) {}

  getUser(): string {
    return this.configService.get('SECRET');
  }

  postUser(): string {
    return 'Hello World!';
  }
}
