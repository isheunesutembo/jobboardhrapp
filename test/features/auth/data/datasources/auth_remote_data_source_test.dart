import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:jobboardhrapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/models/company_model.dart';
import 'auth_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client, LocalAuthRepository])
void main() {
  late AuthRemoteDataSourceImpl dataSource;
  late MockClient mockClient;
  late MockLocalAuthRepository mockLocalAuthRepository;

  setUp(() {
    mockClient = MockClient();
    mockLocalAuthRepository = MockLocalAuthRepository();
    dataSource = AuthRemoteDataSourceImpl(mockClient, mockLocalAuthRepository);
  });

  group('logInWithEmailAndPassword', () {
    final tEmail = 'test@example.com';
    final tPassword = 'password123';
    
    // ignore: unused_local_variable
    final tCompanyModel = CompanyModel(
      id: '1',
      name: 'Test Company',
      address: 'Test Address',
      phoneNumber: '123456789',
    );
    final String tUrl = AppConfig.baseUrl + AppConfig.logInCompany;
    
    test('should perform a POST request on a URL with email and password endpoint', () async {
      // arrange
      when(mockClient.post(
        any,
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          jsonEncode({
            '_id': '1',
            'accesstoken': 'token123',
            'email': tEmail,
            'name': 'Test Company',
            'address': 'Test Address',
            'phoneNumber': '123456789'
          }),
          200));

      // act
      await dataSource.logInWithEmailAndPassword(email: tEmail, password: tPassword);

      // assert
      verify(mockClient.post(
        Uri.parse(tUrl),
        body: jsonEncode({"email": tEmail, "password": tPassword}),
      ));
    });

    test('should return CompanyModel when the response code is 200 or 201', () async {
      // arrange
      when(mockClient.post(
        any,
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          jsonEncode({
            '_id': '1',
            'accesstoken': 'token123',
            'email': tEmail, // This is in response JSON, but ignored by model if not present in class
            'name': 'Test Company',
            'address': 'Test Address',
            'phoneNumber': '123456789'
          }),
          200));

      // act
      final result = await dataSource.logInWithEmailAndPassword(email: tEmail, password: tPassword);

      // assert
      expect(result, isA<CompanyModel>());
      expect(result.id, '1');
    });

    test('should cache the token and userId when the call is successful', () async {
       // arrange
      when(mockClient.post(
        any,
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          jsonEncode({
            '_id': '1',
            'accesstoken': 'token123',
            'email': tEmail,
            'name': 'Test Company',
            'address': 'Test Address',
            'phoneNumber': '123456789'
          }),
          200));

      // act
      await dataSource.logInWithEmailAndPassword(email: tEmail, password: tPassword);

      // assert
      verify(mockLocalAuthRepository.setUserId('1'));
      verify(mockLocalAuthRepository.setToken('token123'));
    });

    test('should throw an Exception when the response code is not 200 or 201', () async {
      // arrange
      when(mockClient.post(
        any,
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          jsonEncode({'message': 'Login failed'}),
          400));

      // act
      final call = dataSource.logInWithEmailAndPassword;

      // assert
      expect(() => call(email: tEmail, password: tPassword), throwsException);
    });
  });

  group('signUpWithEmailAndPassword', () {
    final tEmail = 'test@example.com';
    final tPassword = 'password123';
    final tName = 'Test Company';
    final tAddress = 'Test Address';
    final tPhoneNumber = '123456789';
    final String tUrl = AppConfig.baseUrl + AppConfig.registerCompany;

    test('should perform a POST request on a URL with registration details', () async {
      // arrange
      when(mockClient.post(
        any,
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          jsonEncode({
            '_id': '1',
            'accesstoken': 'token123',
            'email': tEmail,
            'name': tName,
            'address': tAddress,
            'phoneNumber': tPhoneNumber
          }),
          200));

      // act
      await dataSource.signUpWithEmailAndPassword(
        email: tEmail,
        password: tPassword,
        name: tName,
        address: tAddress,
        phoneNumber: tPhoneNumber,
      );

      // assert
      verify(mockClient.post(
        Uri.parse(tUrl),
        body: jsonEncode({
          "email": tEmail,
          "password": tPassword,
          "name": tName,
          "address": tAddress,
          "phoneNumber": tPhoneNumber,
        }),
      ));
    });
  });
}
