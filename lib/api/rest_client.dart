import 'package:gender/api/models/answer.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.genderize.io")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("")
  Future<Ansewer> getAnsewer(
    @Query("name") String name,
    @Query("country_id") String countryID,
  );
}
