package {
	import flash.display.MovieClip;
	import com.shopbeam.*;
	import flash.events.*;
	import flash.external.*;
	import flash.display.Stage;
	import flash.utils.*;
	import flash.media.*;
	import flash.system.Security;

	
	public class chopard extends MovieClip {
		public var playDirection: Number = -1;
		
		public function chopard() {

			var shopbeam:Shopbeam = new Shopbeam("e8abf83f-38f2-450b-80e5-32d206ce85e6", this);
			shopbeam.onClickGoToProduct("mcStainless", "9184115"); 
			shopbeam.onClickGoToProduct("mcGold", "9184116");
			
			var self = this;

			prepareAnimation(this.logo);
			prepareAnimation(this.sbag);
			prepareAnimation(this.gbag);			
			
			this.addEventListener(MouseEvent.MOUSE_OVER, function (e: Event) {
				self.playDirection = 1;
			});

			this.addEventListener(MouseEvent.MOUSE_OUT, function (e: Event) {
				self.playDirection = -1;
			});
	
			
		}
		
		private function prepareAnimation(mc:MovieClip) {
			var self = this;
			
			mc.addEventListener(Event.ENTER_FRAME, function():void {
				if (self.playDirection > 0) {
					if (mc.totalFrames > mc.currentFrame) {
						mc.nextFrame();
					}
				} else if (self.playDirection < 0) {
					if (mc.currentFrame > 1) {
						mc.prevFrame();
					}
				}
			});
		}

	}
}
