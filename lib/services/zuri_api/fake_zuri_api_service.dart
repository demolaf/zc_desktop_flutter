import 'package:intl/intl.dart';

import 'dart:io';

import 'package:zc_desktop_flutter/constants/app_strings.dart';
import 'package:zc_desktop_flutter/model/app_models.dart';
import 'package:zc_desktop_flutter/services/zuri_api/api.dart';

class FakeZuriApiService implements Api {
  @override
  Future<void> addLoggedInUserToOrganization(
      {required String organizationId, required String email, required token}) {
    // TODO: implement addLoggedInUserToOrganization
    throw UnimplementedError();
  }

  @override
  Future invitePeopleToOrganization(
      {required String organizationId,
      required List<String> email,
      required token}) async {
    await Future.delayed(Duration(seconds: 3));
    return {
      'status': 200,
      'message': 'Organization invite operation result',
      'data': {
        'InvalidEmails': null,
        'InviteIDs': [
          null,
          null,
          '6167068467dc381fc3b4db88',
          '6167068667dc381fc3b4db89'
        ]
      }
    };
  }

  @override
  Future<void> addUserToChannel(organizationId, channelId,
      {String? id,
      String? role_id,
      bool? is_admin,
      String? prop1,
      String? prop2,
      String? prop3}) {
    // TODO: implement addUserToChannel
    throw UnimplementedError();
  }

  @override
  Future<void> confirmEmail({required String otpCode}) {
    // TODO: implement confirmEmail
    throw UnimplementedError();
  }

  @override
  Future createChannelsUsingOrgId(
      {required sessionId,
      required insertedOrganization,
      String? name,
      String? owner,
      String? description,
      bool? private}) {
    // TODO: implement createChannelsUsingOrgId
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> createOrganizationUsingEmail(
      {required String email, required token}) {
    // TODO: implement createOrganizationUsingEmail
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> createRoom(
      {User? currentUser, Users? user, String? orgId}) async {
    await Future.delayed(Duration(seconds: 2));
    return {'room_id': '6165848888888294bffc7a0d'};
  }

  @override
  Future fetchChannelMessages(
      {required String channelId, required String organizationId}) {
    // TODO: implement fetchChannelMessages
    throw UnimplementedError();
  }

  @override
  Future<String> fetchChannelSocketId(
      {required String channelId,
      required String organizationId,
      required token}) {
    // TODO: implement fetchChannelSocketId
    throw UnimplementedError();
  }

  @override
  Future fetchChannelsListUsingOrgId(
      {required String organizationId, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    List<Channel> channelsList = [
      Channel(
          id: '1',
          name: 'team-falcons',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '2',
          name: 'team-desktop',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '3',
          name: 'test-test',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '4',
          name: 'announcements',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '5', name: 'general', private: false, description: '', owner: ''),
    ];

    return channelsList;
  }

  @override
  Future fetchDMs({orgId, userId}) async {
    await Future.delayed(Duration(seconds: 2));
    return [
      {
        '_id': '6165848888888294bffc7a0d',
        'status': 0,
        'private': true,
        'bookmark': [],
        'starred': [],
        'created_at': DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS")
            .format(DateTime.now())
            .toString(),
        'org_id': '6165856e40029bb67e90deec',
        'pinned': [],
        'room_user_ids': [
          '616584e9f214f294bffc7a0d',
          '6165856e40029bb67e90deed'
        ]
      },
      {
        '_id': '6165899559598294bffc7a0d',
        'status': 0,
        'private': true,
        'bookmark': [],
        'starred': [],
        'created_at': DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS")
            .format(DateTime.now())
            .toString(),
        'org_id': '6165856e40029bb67e90deec',
        'pinned': [],
        'room_user_ids': [
          '616584e9f214f294bffc7a0d',
          '6165856e40029bb67e90deed'
        ]
      },
    ];
  }

  @override
  Future fetchFileListUsingOrgId({required String orgId, required token}) {
    // TODO: implement fetchFileListUsingOrgId
    throw UnimplementedError();
  }

  @override
  Future<List<Users>> fetchMemberListUsingOrgId(
      {required String organizationId, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    List<Users> userList = [
      Users(
        id: '1',
        profileImage: '',
        displayName: 'Eternity',
        name: 'Issac',
        bio: 'Mentor',
      ),
      Users(
        id: '2',
        profileImage: '',
        displayName: 'Kat',
        name: 'Katherine',
        bio: 'Intern',
      ),
      Users(
        id: '3',
        profileImage: '',
        displayName: 'Bernice',
        name: 'Bernice',
        bio: 'Intern',
      ),
      Users(
        id: '4',
        profileImage: '',
        displayName: 'Demmss',
        name: 'Ademola',
        bio: 'Intern',
      ),
      Users(
        id: '5',
        profileImage: '',
        displayName: 'protector',
        name: 'Damilare',
        bio: 'Intern',
      ),
    ];
    return userList;
  }

  @override
  Future<Map<String, dynamic>> fetchOrganizationDetails(
      {required String organizationId, required token}) {
    // TODO: implement fetchOrganizationDetails
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> fetchOrganizationsListFromRemote(
      {required String email, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    Map<String, dynamic> orgList = {
      'status': 200,
      'message': 'user organizations retrieved successfully',
      'data': <Organization>[
        Organization(id: '1', name: 'ZuriChat', workspaceUrl: '', logoUrl: ''),
        Organization(id: '2', name: 'HNGi8', workspaceUrl: '', logoUrl: ''),
        Organization(id: '3', name: 'HNGi9', workspaceUrl: '', logoUrl: ''),
        Organization(id: '4', name: 'Tamborin', workspaceUrl: '', logoUrl: ''),
        Organization(id: '5', name: 'ZuriMain', workspaceUrl: '', logoUrl: ''),
        Organization(
            id: '6', name: 'ZuriDesktop', workspaceUrl: '', logoUrl: ''),
      ].map((e) => e.toJson()).toList(),
    };
    return orgList;
  }

  // @override
  // Future<Map<String, dynamic>> fetchUserDetails({String? userId}) {
  //   // TODO: implement fetchUserDetails
  //   throw UnimplementedError();
  // }

  @override
  Future<Map<String, dynamic>> getRoomInfo({roomId}) {
    // TODO: implement getRoomInfo
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getUserProfile({orgId, memberId}) async {
    await Future.delayed(Duration(seconds: 4));
    return {
      'first_name': 'Borris Mejja',
      'last_name': 'Coco Melon',
      'display_name': 'Sweet Coco',
      'image_url':
          'https://api.zuri.chat/files/profile_image/614679ee1a5607b13c00bcb7/61467e671a5607b13c00bcc9/20210928144813_0.jpg',
      'user_name': 'Sweet Chocolate',
      'phone': 'phone',
      'pronouns': 'pronouns',
      'bio': 'Welcome to Zuri',
      'status': 'status'
    };
  }

  @override
  Future login({required String email, required String password}) async {
    await Future.delayed(Duration(seconds: 3));
    return {
      'code': 200,
      'data': {
        'session_id': 'string',
        'user': User(
                id: '79hdhuisksj',
                firstName: 'John',
                lastName: 'Doe',
                displayName: 'Protector',
                email: email,
                phone: '',
                status: 0,
                timeZone: '',
                createdAt: '',
                updatedAt: '',
                token: 'hkjsliy07oihslkhor7sihlks7')
            .toJson()
      },
      'message': 'string'
    };
  }

  @override
  Future<Map<String, dynamic>> markMessageAsRead(messageId) {
    // TODO: implement markMessageAsRead
    throw UnimplementedError();
  }

  @override
  Future<void> requestPasswordResetCode({required String email}) {
    // TODO: implement requestPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future sendMessageToChannel(
      {channel_id, senderId, message, organization_id}) {
    // TODO: implement sendMessageToChannel
    throw UnimplementedError();
  }

  @override
  Future<void> signOut(String token) {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<void> signup(
      {required String password,
      required String email,
      required String fName,
      required String lName}) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserPassword(
      {required String password, required String code}) {
    // TODO: implement updateUserPassword
    throw UnimplementedError();
  }

  @override
  Future<void> verifyPasswordResetCode({required String resetCode}) {
    // TODO: implement verifyPasswordResetCode
    throw UnimplementedError();
  }

  @override
  Future<void> createTodo(Todo todo, String token) async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<List<Todo>> fetchTodoList() async {
    await Future.delayed(Duration(seconds: 2));
    List<Todo> todoList = [
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
    ];
    return todoList;
  }

  @override
  Future<Member> fetchMemberDetail(
      {required String organizationId,
      required String memberId,
      required String token}) {
    // TODO: implement fetchMemberDetail
    throw UnimplementedError();
  }

  @override
  Future<User> fetchUserDetail({required String userId}) {
    // TODO: implement fetchUserDetail
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getUserDetails({required String userId}) {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }

  @override
  Future<Member> patchProfilePicture(
      {required String organizationId,
      required String memberId,
      required String token}) {
    // TODO: implement patchProfilePicture
    throw UnimplementedError();
  }

  
  

  @override
  Future<Map<String, dynamic>> updateUserDetail({
    required organizationId,
    required memberId,
    required token,
    String? bio,
    String? displayName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? pronoun,
    String? timeZone,
  }) async {
      return{
          'code': 200,
          'data': Member(
            id: 'ttwyrwetufdutef',
            orgId: 'efgyuefuyety',
            bio: 'Mobile Developer(Flutter/Kotlin) /n Data Analyst /n Artist',
            displayName: 'Perpety',
            firstName: 'Perpetua',
            lastName: 'Quarshie',
            phone: '+233 264445649',
            pronouns: 'Her/She',
            timeZone: 'UTC +01:00',
            createdAt: '',
            updatedAt: '',
            
          ).toJson()
      };
  }

  Future<Map<String, dynamic>> fetchRoomMessages({roomId, orgId}) async {
    await Future.delayed(Duration(seconds: 4));
    return {
      'count': 3,
      'next': '0',
      'previous': '0',
      'results': [
        {
          'id': 'j3nj359885j35n0009nu5',
          'created_at': DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS")
              .format(DateTime.now())
              .toString(),
          'media': [],
          'message': 'We have a meeting today',
          'pinned': false,
          'reactions': [],
          'read': false,
          'room_id': '6165848888888294bffc7a0d',
          'saved_by': [],
          'sender_id': '616584e9f214f294bffc7a0d',
          'threads': []
        },
        {
          'id': 'j3nj35590n35n0009nu5',
          'created_at': DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS")
              .format(DateTime.now())
              .toString(),
          'media': [],
          'message': 'Hey Good Morning',
          'pinned': false,
          'reactions': [],
          'read': false,
          'room_id': '6165848888888294bffc7a0d',
          'saved_by': [],
          'sender_id': '616584e9f214f294bffc7a0d',
          'threads': []
        },
      ]
    };
  }

  @override
  Future<Map<String, dynamic>> UpdateUserPicture({
    required organizationId,
    required memberId,
    required token,
    File? img,
  }) async {
    return {
      'status': 200,
      'message': 'user updated successfully',
      'image_url': img,
    };
  }

  @override
  Future<Map<String, dynamic>> getMemberDetails(
      {required String organizationId,
      required String memberId,
      required String token}) async {
    Map<String, dynamic> userDetail = {
      'code': 200,
      'message': 'user details fetched successfully',
      'data': {
        '_id': 1,
        'orgId': 1,
        'name': 'Bernice Quarshie',
        'display_name': 'perp',
        'bio': 'Mobile developer (Flutter)',
        'pronouns': 'her/she',
        'phone': 0264445649,
        'time_zone': 'UTC+ 00',
      }
    };
    return userDetail;
  }

  @override
  Future<Map<String, dynamic>> reactToMessage({orgId, roomId, messageId, required ReactToMessage reactToMessage}) {
    // TODO: implement reactToMessage
    throw UnimplementedError();
  }

  @override
  Future removeUserFromChannel({required organizationId, required channelId, required memberId}) {
    // TODO: implement removeUserFromChannel
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> sendMessageToDM({roomId, senderId, message, orgId}) {
    // TODO: implement sendMessageToDM
    throw UnimplementedError();
  }
}
