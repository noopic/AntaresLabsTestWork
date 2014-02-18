package application.collapsedList.events
{
    import starling.events.Event;

    public class CollapsedItemEvent extends Event
    {
        public static const START_EXPAND:String = "CollapsedItemEventStartExpand";
        public static const UPDATE_HEIGHT:String = "CollapsedItemEventUpdateHeight";

        private var _expandedHeight:int;
        private var _itemY:int;

        public function CollapsedItemEvent(type:String, bubbles:Boolean = false, expandedHeight:int = 0, itemY:int = 0)
        {
            _expandedHeight = expandedHeight;
            _itemY = itemY;
            super(type, bubbles);
        }

        public function get expandedHeight():int
        {
            return _expandedHeight;
        }

        public function get itemY():int
        {
            return _itemY;
        }
    }
}
