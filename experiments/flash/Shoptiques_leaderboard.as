package {
    import flash.display.MovieClip;
    import com.shopbeam.*;
	import flash.events.*;


	public class Shoptiques_leaderboard extends MovieClip {
		public var playDirection: Array = [false, false, false];		
		
		public function Shoptiques_leaderboard() { 

			var shopbeam:Shopbeam = new Shopbeam("e8abf83f-38f2-450b-80e5-32d206ce85e6", this);

			// first argument is a MovieClip name, the second argument is a product ID
			shopbeam.onClickGoToProduct("heel", "9184046"); //"9184143");
			  
			// optional additional call to wire up another MovieClip
			shopbeam.onClickGoToProduct("bag", "9184136"); //"9184143");
			
			prepareAnimation(this.shopbeam_bag, 0);
			prepareAnimation(this.heel, 1);
			prepareAnimation(this.bag, 2);
			
			var self = this;
			
			this.addEventListener(MouseEvent.MOUSE_OVER, function (e: Event) {
				self.playDirection[0] = true;
			});

			this.addEventListener(MouseEvent.MOUSE_OUT, function (e: Event) {
				self.playDirection[0] = false;
			});
			
			this.heel.addEventListener(MouseEvent.MOUSE_OVER, function (e: Event) {
				self.playDirection[1] = true;
			});

			this.heel.addEventListener(MouseEvent.MOUSE_OUT, function (e: Event) {
				self.playDirection[1] = false;
			});
			
			this.bag.addEventListener(MouseEvent.MOUSE_OVER, function (e: Event) {
				self.playDirection[2] = true;
			});

			this.bag.addEventListener(MouseEvent.MOUSE_OUT, function (e: Event) {
				self.playDirection[2] = false;
			});

			
		} 
		
		private function prepareAnimation(mc:MovieClip, i:Number) {
			var self = this;
			
			mc.addEventListener(Event.ENTER_FRAME, function():void {
				if (self.playDirection[i]) {
					if (mc.totalFrames > mc.currentFrame) {
						mc.nextFrame();
					}
				} else {
					if (mc.currentFrame > 1) {
						mc.prevFrame();
					}
				}
			});
		}

	}
}
