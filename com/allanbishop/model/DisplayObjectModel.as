 /*
Copyright (c) 2010 Allan Bishop

 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:

 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
  */

package com.allanbishop.model 
{
	import flash.display.DisplayObject;

	public class DisplayObjectModel implements IModel
	{

		private var _displayObject:DisplayObject;

		public function DisplayObjectModel(displayObject:DisplayObject) 
		{
			_displayObject = displayObject;
		}

		public function get x():Number
		{
			return _displayObject.x;
		}

		public function get y():Number
		{
			return _displayObject.y;
		}

		public function get z():Number
		{
			return 0;
		}

		public function get width():Number
		{
			return _displayObject.width;
		}

		public function get height():Number
		{
			return _displayObject.height;
		}

		public function get depth():Number
		{
			return 0;
		}

		public function set x(value:Number):void
		{
			_displayObject.x = value;
		}

		public function set y(value:Number):void
		{
			_displayObject.y = value;
		}

		public function set z(value:Number):void
		{
			_displayObject.x = 0;
		}
		
		public function rotate(rotation:Number):void
		{
			_displayObject.rotation = rotation;
		}
	}
}
