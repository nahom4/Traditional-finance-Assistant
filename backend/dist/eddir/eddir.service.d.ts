import { Repository } from 'typeorm';
import { User } from '../typeorm/entities/user.entity';
import { Edir } from './typeorm_entities/edir.entity';
import { Edirmembers } from './typeorm_entities/edir_members.entity';
import { EdirNotifications } from './typeorm_entities/edir_notification.entity';
import { Edirchatroom } from './typeorm_entities/edir_chatroom.entity';
export declare class EddirService {
    private edirRepository;
    private edirMembersRepository;
    private userRepository;
    private notificationRepository;
    private edirchatroomRepository;
    constructor(edirRepository: Repository<Edir>, edirMembersRepository: Repository<Edirmembers>, userRepository: Repository<User>, notificationRepository: Repository<EdirNotifications>, edirchatroomRepository: Repository<Edirchatroom>);
    generateRandomString(length: number): string;
    createEdir(edirdata: any, creator: any): Promise<Edir[]>;
    joinEdir(edirName: any, code: any, username: any): Promise<Edirmembers>;
    leaveEdir(id: any, username: any): Promise<import("typeorm").DeleteResult>;
    deleteEdir(edirId: any): Promise<import("typeorm").DeleteResult>;
    updateEdir(edirId: any, edirdata: any): Promise<import("typeorm").UpdateResult>;
    deleteMember(username: any, edirId: any): Promise<import("typeorm").DeleteResult | "Edir doesn't exist">;
    getAllEdirs(username: string): Promise<any[]>;
    getDataAboutEdir(edirId: any): Promise<Edir>;
    getMembersOfEdir(edirId: any): Promise<Edirmembers[]>;
    getSingleMemberOfEdir(edirId: any, username: any): Promise<Edirmembers>;
    payEdir(username: any, edirName: any): Promise<void>;
    notification(message: string, edirId: any): Promise<void>;
    notifyUnpaidUsers(edirId: any): Promise<void>;
    getNotification(username: any): Promise<EdirNotifications[]>;
    deleteNotification(id: any): Promise<import("typeorm").DeleteResult>;
    getPenalizedUsers(edirId: any): Promise<void>;
    sendMessage(username: any, message: any, edirId: any): Promise<Edirchatroom>;
    getChat(edirId: any): Promise<Edirchatroom[]>;
    dailyFunction(): Promise<void>;
}
