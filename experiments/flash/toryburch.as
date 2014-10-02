package {
	import flash.display.MovieClip;
	import com.shopbeam.*;
	
	public class toryburch extends MovieClip {
		public function toryburch() {

			var shopbeam:Shopbeam = new Shopbeam("e8abf83f-38f2-450b-80e5-32d206ce85e6", this);
			shopbeam.onClickGoToProduct("boots", "9184368");
			shopbeam.onClickGoToProduct("bag", "9184366");
			shopbeam.onClickGoToProduct("shirt", "9184358");
		}
	}
}
