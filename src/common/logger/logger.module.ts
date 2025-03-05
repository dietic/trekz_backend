import { Global, Module } from '@nestjs/common';
import { Logger } from './logger.service';

@Global() // Makes this module available in every module without extra imports
@Module({
  providers: [Logger],
  exports: [Logger],
})
export class LoggerModule {}
