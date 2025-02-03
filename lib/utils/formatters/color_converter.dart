
class TColorConverter{
  static int convertOpacityToAlpha(double opacity){
    int alphaValue = (opacity * 255).toInt().clamp(0, 255);
    return alphaValue;
  }
}

