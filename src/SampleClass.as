package {
	
	/**
	 * Class with public accessors for testing the UI Generator library.
	 * Each accessor should produce a specific UI Component (provided
	 * that the accessor is of a supported type).
	 */
	public class SampleClass {
		
		private static const _mySelectionSource : Array = ['red', 'green', 'blue'];
		private static const _myOtherSelectionSource : Array = [{label: 'small', value: 1}, {label: 'medium', value: 3}, {label: 'large', value: 5}];
		private static const _myListSource : Array = [{label: 'Bach', value: 3}, {label: 'Haydn', value: 2}, {label: 'Mozart', value: 1}];
		
		private var _myNumber : int = 15;
		private var _myPercent : Number = 0.15;
		private var _iAmHappy : Boolean = true;
		private var _mySelection : Object = _mySelectionSource[1];
		private var _myOtherSelection : Object;
		private var _myList : Array = [_myListSource[0], _myListSource[2]];
		private var _myString : String = 'John Doe';
		
		public function SampleClass () {}
		
		// This should render as a NumericStepper
		[Index(value="0")]
		[Minimum(value="0")]
		[Maximum(value="30")]
		[Description(value="Lorem ipsum dolor")]
		[Bindable]
		public function set myNumber (value : int) : void {
			_myNumber = value;
			_onValueChanged ('myNumber', value);
		}
		public function get myNumber () : int {
			return _myNumber;
		}
		
		// This should render as a HSlider
		[Index(value="1")]
		[Minimum(value="0")]
		[Maximum(value="1")]
		[Description(value="Sit adipiscit elit")]
		[Bindable]
		public function set myPercent (value : Number) : void {
			_myPercent = value;
			_onValueChanged ('myNumber', value);
		}
		public function get myPercent () : Number {
			return _myPercent;
		}
		
		// This should render as a Checkbox
		[Index(value="2")]
		[Description(value="Numquam amavi latinam")]
		[Bindable]
		public function set i_am_happy (value : Boolean) : void {
			_iAmHappy = value;
			_onValueChanged ('i_am_happy', value);
		}
		public function get i_am_happy () : Boolean {
			return _iAmHappy;
		}
		
		// This should render as a Combobox
		[Index(value="3")]
		[Bindable]
		public function set mySelection (value : Object) : void {
			_mySelection = value;
			_onValueChanged ('mySelection', value);
		}
		public function get mySelection () : Object {
			return _mySelection;
		}
		public function get mySelectionSrc () : Object {
			return _mySelectionSource;
		}
		
		// This should also render as a Combobox
		[Index(value="4")]
		[Bindable]
		public function set myOtherSelection (value : Object) : void {
			_myOtherSelection = value;
			_onValueChanged ('_myOtherSelection', value);
		}
		public function get myOtherSelection () : Object {
			return _myOtherSelection;
		}
		public function get myOtherSelectionSrc () : Object {
			return _myOtherSelectionSource;
		}
		
		// This should render as a List
		[Index(value="5")]
		[Bindable]
		public function set myList (value : Array) : void {
			_myList = value;
			_onValueChanged ('_myOtherSelection', value);
		}
		public function get myList() : Array {
			return _myList;
		}
		public function get myListSrc() : Array {
			return _myListSource;
		}

		// This should render as a TextInput
		[Index(value="6")]
		[Bindable]
		public function get myString() : String {
			return _myString;
		}
		public function set myString (value:String) : void {
			_myString = value;
			_onValueChanged ('myString', value);
		}
		
		/**
		 * Test function to print out changes as they are carried out in the generated UI.
		 */
		private function _onValueChanged (name: String, value : Object) : void {
			trace ('SampleClass: value of ' + name + ' changed to: ' + JSON.stringify (value));
		}
	}
}