package application
{
    import application.collapsedList.CollapsedList;
    import application.data.Collections;

    import starling.display.Sprite;

    public class StarlingRoot extends Sprite
    {
        private static const LIST_WIDTH:int = 600;
        private static const LIST_HEIGHT:int = 600;

        public function StarlingRoot()
        {
            init();
        }

        private function init():void
        {
            var list:CollapsedList = new CollapsedList();
            list.width = LIST_WIDTH;
            list.height = LIST_HEIGHT;
            list.dataProvider = Collections.collapsedList;
            addChild(list);
        }
    }
}
