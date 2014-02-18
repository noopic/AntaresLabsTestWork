package application.collapsedList
{
    import application.collapsedList.events.CollapsedItemEvent;

    import com.greensock.TweenMax;

    import feathers.controls.List;
    import feathers.controls.renderers.IListItemRenderer;
    import feathers.layout.ILayout;
    import feathers.layout.VerticalLayout;

    public class CollapsedList extends List
    {
        private static const ANIMATION_DURATION:Number = 0.6;

        public function CollapsedList()
        {
            init();
        }

        private function init():void
        {
            layout = getLayout();
            clipContent = true;
            verticalScrollPolicy = "on";
            super.itemRendererFactory = generateItemRenderer;
        }

        private static function getLayout():ILayout
        {
            var layout:VerticalLayout = new VerticalLayout();
            layout.horizontalAlign = "center";
            layout.verticalAlign = "middle";
            layout.useVirtualLayout = false;
            return layout;
        }

        private function generateItemRenderer():IListItemRenderer
        {
            var item:CollapsedItem = new CollapsedItem();
            item.animationDuration = ANIMATION_DURATION;
            item.addEventListener(CollapsedItemEvent.UPDATE_HEIGHT, onItemUpdateHeight);
            item.addEventListener(CollapsedItemEvent.START_EXPAND, onItemStartExpand);
            return item;
        }

        private function onItemUpdateHeight(event:CollapsedItemEvent):void
        {
            dataViewPort.invalidate(INVALIDATION_FLAG_LAYOUT);
        }

        private function onItemStartExpand(event:CollapsedItemEvent):void
        {
            TweenMax.to(this, ANIMATION_DURATION, {verticalScrollPosition:verticalScrollPosition, overwrite:1})
        }
    }
}
