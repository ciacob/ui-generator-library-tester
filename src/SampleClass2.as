package {
	
	/**
	 * Class with public accessors for testing the UI Generator library.
	 */
	public class SampleClass2 {
		
		private var _myNumber : Number;
		
		public function SampleClass2() {}
		
		// This should render as a custom component of type PickerComponent
		[CustomComponent(classFqn="custom_components.NonEditableNumericStepper",dataproviderName="value","minimum"="-10")]
		public function get myNumber() : Number {
			return _myNumber;
		}
		public function set myNumber (value : Number) : void {
			_myNumber = value;
			_onValueChanged ('myNumber', value);
		}
		
		/**
		 * Test function to print out changes as they are carried out in the generated UI.
		 */
		private function _onValueChanged (name: String, value : Object) : void {
			trace ('SampleClass: value of ' + name + ' changed to: ' + JSON.stringify (value));
		}
	}
}