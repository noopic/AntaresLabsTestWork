package application.data
{
    import feathers.text.BitmapFontTextFormat;

    import starling.text.BitmapFont;
    import starling.textures.Texture;

    public class BitmapFonts
    {
        [Embed(source="../../../embeds/calibri.png")]
        private static const CALIBRI_FONT_IMAGE_CLASS:Class;

        [Embed(source="../../../embeds/calibri.fnt", mimeType="application/octet-stream")]
        private static const CALIBRI_FONT_XML:Class;

        private static var _calibriTextFormat:BitmapFontTextFormat;

        public static function get calibriTextFormat():BitmapFontTextFormat
        {
            if (!_calibriTextFormat) _calibriTextFormat = getCalibriTextFormat();
            return _calibriTextFormat;
        }

        private static function getCalibriTextFormat():BitmapFontTextFormat
        {
            var texture:Texture = Texture.fromBitmap(new CALIBRI_FONT_IMAGE_CLASS(), false);
            var font:BitmapFont = new BitmapFont(texture, XML(new CALIBRI_FONT_XML()));
            return new BitmapFontTextFormat(font);
        }
    }
}
