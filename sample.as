package {
	import flash.display.MovieClip;
	import com.shopbeam.*;
	
	public class sample extends MovieClip {
		public function sample() {
			var shopbeam:Shopbeam = new Shopbeam("e8abf83f-38f2-450b-80e5-32d206ce85e6", this);
			shopbeam.onClickGoToProduct("first", "9184101");
			shopbeam.onClickGoToProduct("second", "9184046");
		}
	}
}
