import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final getit = GetIt.instance;
// final get = GetIt.I;
@InjectableInit()
Future<void> congigureInjection() async {
  await $initGetIt(
    getit,
    environment: Environment.prod,
  );
}


//   cached_network_image,  dartz, dio,equatable, flare_flutter,flutter_bloc,  flutter_dotenv,flutter_markdown,
//  flutter_svg,font_awesome_flutter,
//   freezed_annotation,get_it,  google_fonts,  hive,  http,  injectable, 
 
//   json_annotation,  json_serializable,path_provider,

  // build_runner, flutter_launcher_icons, flutter_native_splash,freezed,hive_generator,injectable_generator
 