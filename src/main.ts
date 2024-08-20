import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const port = process.env.SERVER_PORT || 3010;
  await app.listen(port);
  console.log("aplicando calor", port)
}
bootstrap();
