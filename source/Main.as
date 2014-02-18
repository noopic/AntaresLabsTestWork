package
{
    import application.StarlingRoot;

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;

    import starling.core.Starling;

    [SWF(width="600", height="600", frameRate="60", backgroundColor="#FFFFFF")]
    public class Main extends Sprite
    {
        public function Main()
        {
            if (stage) init();
            else addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        }

        private function onAddedToStage(event:Event):void
        {
            stage.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
            init();
        }

        private function init():void
        {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
            mouseEnabled = false;
            mouseChildren = false;

            Starling.handleLostContext = true;
            Starling.multitouchEnabled = true;

            var starling:Starling = new Starling(StarlingRoot, this.stage);
            starling.start();
        }
    }
}
