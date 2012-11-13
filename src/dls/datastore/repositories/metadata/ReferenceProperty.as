/*
* This file is part of the DataStore package.
*
* @author (c) Tim Shelburne <tim@dontlookstudios.com>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/
package dls.datastore.repositories.metadata {
	
	
	/*
	 * the ReferenceProperty class serves to contain information about properties of IDomainEntity's
	 * which reference 
	 */
	public class ReferenceProperty {
		
		/*=========================================================*
		* PROPERTIES
		*=========================================================*/
		
		private var _name:String;
		public function get name():String { return _name; }
		public function set name(value:String):void {
			if (_name == value)
				return;
			_name = value;
		}
		
		private var _qualifiedClass:String;
		public function get qualifiedClass():String { return _qualifiedClass; }
		public function set qualifiedClass(value:String):void {
			if (_qualifiedClass == value)
				return;
			_qualifiedClass = value;
		}
		
		
		/*=========================================================*
		* FUNCTIONS
		*=========================================================*/
		
		public function ReferenceProperty(name:String, qualifiedClass:String) {
			_name = name;
			_qualifiedClass = qualifiedClass;
		}
	}
}