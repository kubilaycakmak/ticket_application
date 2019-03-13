import 'package:rpc/rpc.dart';
@ApiClass(name: 'echo', version: 'v1')
class FlightAPI{
  String name;
  @ApiMethod(method: 'GET', path: 'identity/{name}')
  FlightAPI identity(String name){
    return new FlightAPI()..name = name;

  }
}