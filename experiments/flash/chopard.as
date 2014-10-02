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
		var forward : Boolean = true;
		
		public function chopard() {

			var shopbeam:Shopbeam = new Shopbeam("e8abf83f-38f2-450b-80e5-32d206ce85e6", this);
			shopbeam.onClickGoToProduct("mcStainless", "9184115"); 
			shopbeam.onClickGoToProduct("mcGold", "9184116");
			
			//var square: MovieClip = this.getChildByName("mcSquare") as MovieClip;
			//var logo: MovieClip = this.getChildByName("logo") as MovieClip;
			//var gbag: MovieClip = this.getChildByName("gbag") as MovieClip;
			//var sbag: MovieClip = this.getChildByName("sbag") as MovieClip;
			var self = this;
			this.logo.gotoAndStop(1);
			this.sbag.gotoAndStop(1);
			this.gbag.gotoAndStop(1);
			
			stopOnEnd(this.logo);
			stopOnEnd(this.sbag);
			stopOnEnd(this.gbag);			
			
			this.addEventListener(MouseEvent.MOUSE_OVER, function (e: Event) {

				e.preventDefault();
				
				self.logo.gotoAndPlay(1);
				self.sbag.gotoAndPlay(1);
				self.gbag.gotoAndPlay(1);

			});

			this.addEventListener(MouseEvent.MOUSE_OUT, function (e: Event) {
				
				e.preventDefault();

				self.logo.gotoAndStop(1);
				self.sbag.gotoAndStop(1);
				self.gbag.gotoAndStop(1);
			
			});
	
			
		}
		
		
		private function stopOnEnd(mc:MovieClip) {
			

			mc.addFrameScript(mc.totalFrames - 1, function():void 
			{
				mc.stop();
			});
		}

	}
}
