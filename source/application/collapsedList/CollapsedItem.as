package application.collapsedList
{
    import application.collapsedList.events.CollapsedItemEvent;
    import application.data.BitmapFonts;

    import com.greensock.TweenMax;

    import feathers.controls.renderers.DefaultListItemRenderer;
    import feathers.controls.text.BitmapFontTextRenderer;
    import feathers.core.ITextRenderer;

    import flash.geom.Rectangle;

    import starling.display.Image;
    import starling.events.Event;
    import starling.textures.Texture;

    public class CollapsedItem extends DefaultListItemRenderer
    {
        private static const FIELD_LABEL:String = "label";
        private static const FIRST_BACKGROUND_COLOR:uint = 0xFFFFEDC5;
        private static const SECOND_BACKGROUND_COLOR:uint = 0xFFC5E9FF;
        private static const FIRST_TEXTURE:Texture = Texture.fromColor(8, 8, FIRST_BACKGROUND_COLOR);
        private static const SECOND_TEXTURE:Texture = Texture.fromColor(8, 8, SECOND_BACKGROUND_COLOR);
        private static const START_WIDTH:uint = 600;
        private static const START_HEIGHT:uint = 100;

        private var _background:Image;
        private var _collapsed:Boolean;
        private var _animationDuration:Number;

        public function CollapsedItem()
        {
            init();
        }

        public function set animationDuration(value:Number):void
        {
            _animationDuration = value;
        }

        private function init():void
        {
            _collapsed = true;
            width = START_WIDTH;
            height = START_HEIGHT;
            labelField = FIELD_LABEL;
            _background = new Image(FIRST_TEXTURE);
            _background.width = START_WIDTH;
            _background.height = START_HEIGHT;
            addChild(_background);
            addEventListener(Event.TRIGGERED, onTriggered);
            super.labelFactory = generateLabel;
        }

        private static function generateLabel():ITextRenderer
        {
            var textField:BitmapFontTextRenderer = new BitmapFontTextRenderer();
            textField.maxWidth = START_WIDTH;
            textField.width = START_WIDTH;
            textField.wordWrap = true;
            textField.clipRect = new Rectangle(0, 0, START_WIDTH, START_HEIGHT);
            textField.textFormat = BitmapFonts.calibriTextFormat;
            return textField;
        }

        override public function set index(value:int):void
        {
            if (_index == value) return;
            _index = value;
            _background.texture = (_index % 2) ? SECOND_TEXTURE : FIRST_TEXTURE;
        }

        override protected function layoutContent() : void
        {
            _background.height = height;
            labelTextRenderer.clipRect.height = height;
        }

        private function onTriggered(event:Event):void
        {
            if (_collapsed)
            {
                _collapsed = false;
                TweenMax.to(this, _animationDuration, {height:labelTextRenderer.height, onUpdate:updateAnimation, overwrite:1});
                var expandedHeight:Number = labelTextRenderer.height - height;
                dispatchEvent(new CollapsedItemEvent(CollapsedItemEvent.START_EXPAND, expandedHeight, y));
            }
            else
            {
                _collapsed = true;
                TweenMax.to(this, _animationDuration, {height:START_HEIGHT, onUpdate:updateAnimation, overwrite:1})
            }
        }

        private function updateAnimation():void
        {
            invalidate(INVALIDATION_FLAG_SIZE);
            dispatchEvent(new CollapsedItemEvent(CollapsedItemEvent.UPDATE_HEIGHT));
        }
    }
}
