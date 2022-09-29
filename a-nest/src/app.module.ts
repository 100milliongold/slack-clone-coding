import { MiddlewareConsumer, Module, NestModule } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { LoggerMiddleware } from './middlewares/logger.middleware';
import { UsersModule } from './users/users.module';
import { WorkspacesModule } from './workspaces/workspaces.module';
import { ChannelsModule } from './channels/channels.module';
import { DmsModule } from './dms/dms.module';

@Module({
  imports: [ConfigModule.forRoot(), UsersModule, WorkspacesModule, ChannelsModule, DmsModule],
  controllers: [AppController],
  providers: [
    {
      provide: AppService, // 고유한 키네임
      useClass: AppService,

      // 별의별 작업 의존성작업ㅂ을 직접 할수도 있다.
      useFactory() {
        return {
          a: 'b',
        };
      },
    },
    {
      provide: 'CUSTOM_KEY',
      useValue: 'CUSTOM_KEY',
    },
    {
      provide: ConfigService,
      useClass: ConfigService,
    },
  ],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer): any {
    consumer.apply(LoggerMiddleware).forRoutes('*');
  }
}
