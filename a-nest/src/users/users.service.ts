import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Connection, Repository } from 'typeorm';
import { Users } from '../entities/Users';
import bcrypt from 'bcrypt';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(Users)
    private usersRepository: Repository<Users>,

    private connection: Connection,
  ) {}

  async join(email: string, nickname: string, password: string) {
    const queryRunner = this.connection.createQueryRunner();
    await queryRunner.connect();
    await queryRunner.startTransaction();

    if (!email) {
      throw new Error('이메일을 입력하세요');
    }

    if (!nickname) {
      throw new Error('닉네임을 입력하세요');
    }

    if (!password) {
      throw new Error('패스워드를 입력하세요');
    }
    const user = await queryRunner.manager.getRepository(Users).findOne({
      where: { email },
    });

    if (user) {
      // 이미 존재하는 유저라고 에러
      throw new Error('이미 존재하는 사용자입니다');
    }

    const hashedPassword = await bcrypt.hash(password, 12);

    await queryRunner.manager.getRepository(Users).save({
      email,
      nickname,
      password: hashedPassword,
    });
  }
}
