class Category {
  late String title;
  late String description;
  late String route;
  Category(this.title, this.description, this.route);

  @override
  String toString() {
    return title;
  }
}
