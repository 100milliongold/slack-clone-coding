import { Controller, Get, Post } from '@nestjs/common';
import { AppService } from './app.service';

// req, res 에 대해서 알아요
@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getUser();
  }

  @Post()
  postHello(): string {
    return this.appService.postUser();
  }
}
