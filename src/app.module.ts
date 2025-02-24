import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CrewsModule } from './crews/crews.module';

@Module({
  imports: [CrewsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
