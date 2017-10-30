package
{
	import com.greensock.events.TransformEvent;
	import com.greensock.transform.TransformManager;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author ivms
	 */
	public class Main extends HeadMc 
	{
		private var tm:TransformManager;
		private var head:HeadMc = new HeadMc();
		
		public function Main() 
		{
			addChild(head);
			tm = new TransformManager({targetObjects: [head.mc1, head.mc2, head.mc3, head.mc4]});
			//, constrainScale:true, lockRotation:true, allowDelete:true, autoDeselect:true
			
			tm.allowMultiSelect = true;
			tm.addEventListener(TransformEvent.SELECTION_CHANGE, OnUnActive);
		}
		
		private function OnUnActive(e:TransformEvent):void 
		{
			/*if ( (tm.selectedItems.length == 0) && (CurrentSelectText > -1) )
			{
				texts[CurrentSelectText].type = TextFieldType.DYNAMIC;
				texts[CurrentSelectText].selectable = false;
			}*/
			/*if (tm.selectedItems.length == 0)
			{
				CurrentSelectText = -1;
			}*/
		}
	}
	
}