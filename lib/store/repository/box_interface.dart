abstract interface class BoxInterface {
  Future<void> initBox() async {}
  Future<void> initHive() async {}
  Future<void> addBox(String author, String text) async {}
  Future<void> removeBox(int index) async {}
  Future<void> removeAllBox() async {}
}
