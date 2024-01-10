class QuizQuestion {
  QuizQuestion({required this.text, required this.answers});
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // List.of çağırdığımız listenin bir kopyasını oluşturur.
    shuffledList.shuffle(); // oluşturulan kopya listesini burada shuffle ile karıştırıyoruz.
    return shuffledList;
  }
}
