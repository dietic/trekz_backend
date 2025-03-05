import { Logger } from './common/logger/logger.service';
import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller('')
export class AppController {
  constructor(
    private readonly appService: AppService,
    private logger: Logger,
  ) {}

  @Get('cats')
  getHello(): string {
    return this.appService.getHello();
  }
}
