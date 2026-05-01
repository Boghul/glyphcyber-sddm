{
  stdenvNoCC,
  lib,
}:
stdenvNoCC.mkDerivation {
  pname = "Ndot-57-Aligned.ttf";
  version = "0.x";
  src = /home/xenomorph/packages/glyphcyber-sddm/assets/fonts/Ndot-57-Aligned.ttf;

  installPhase = ''
    mkdir -p $out/share/fonts/truetype/
    cp -r $src/*.{ttf,otf} $out/share/fonts/truetype/
  '';

  meta = with lib; {
    description = "Ndot-57-Aligned.ttf";
    homepage = "https://github.com/xeji01/nothingfont/tree/main/fonts";
    platforms = platforms.all;
  };
}
