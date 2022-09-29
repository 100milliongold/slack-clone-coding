import { Controller, Get, Post, Req, Res } from '@nestjs/common';

@Controller('users')
export class UsersController {
  @Get()
  getUsers(@Req() req) {
    return req.user;
  }

  @Post()
  postUsers() {}

  @Post('login')
  login() {}

  @Post('logout')
  logOut(@Req() req, @Res() res) {
    req.logOut();
    res.clrearCookie('connect.sid', { httpOnly: true });
    res.send('ok');
  }
}
