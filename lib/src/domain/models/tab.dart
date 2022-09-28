class DetailTabModel {
  final int index;
  final String title;

  const DetailTabModel({
    required this.index,
    required this.title,
  }) : assert(index >= 0, 'index cannot be negative');
}
