import 'package:wasla_driver/app/shared/common/common_libs.dart';

final class HomeContentItem extends Equatable {
  final String title;
  final Widget body;

  const HomeContentItem({required this.title, required this.body});
  HomeContentItem copyWith() => HomeContentItem(title: title, body: body);
  @override
  List<Object> get props => [title, body];
}
