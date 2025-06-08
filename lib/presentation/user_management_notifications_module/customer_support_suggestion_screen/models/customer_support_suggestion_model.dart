class CustomerSupportSuggestionModel {
  String? selectedQuestionType;
  String? problemDescription;
  bool? isDropdownOpen;
  int? characterCount;

  CustomerSupportSuggestionModel({
    this.selectedQuestionType,
    this.problemDescription,
    this.isDropdownOpen,
    this.characterCount,
  });
}
