class SliderModel {
  String imageAssetPath;
  String title;

  SliderModel({required this.imageAssetPath, required this.title});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = SliderModel(
    imageAssetPath: 'assets/images/380-3805989_icon-ppe-privacy-policy.png',
    title: 'Privacy incorporated communication services',
  );

  //1
  slides.add(sliderModel);

  sliderModel = SliderModel(
      imageAssetPath: 'assets/images/2328966.png',
      title: 'Personalized analysis');

  //2
  slides.add(sliderModel);

  sliderModel = SliderModel(
      imageAssetPath: 'assets/images/download.png',
      title: 'Your new daily app');

  //3
  slides.add(sliderModel);

  return slides;
}
