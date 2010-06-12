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
  
package com.allanbishop.effect 
{
	import com.allanbishop.model.IModel;

	public class ParallaxLayer 
	{
		private var _zDepth:Number;
		private var _model:IModel;
		private var _originalX:Number;
		private var _originalY:Number;

		public function ParallaxLayer(model:IModel, zDepth:Number) 
		{
			_model = model;
			_zDepth = zDepth;	
			_originalX = _model.x;
			_originalY = _model.y;
		}

		public function get zDepth():Number
		{
			return _zDepth;
		}

		public function moveHorizontal(distance:Number):void 
		{
			_model.x += distance;
		}

		public function moveHorizontalTo(position:Number):void
		{
			_model.x = position;
		}

		public function moveHorizontalBy(position:Number):void
		{
			_model.x = _originalX + position;
		}

		public function moveVertical(distance:Number):void 
		{
			_model.y += distance;
		}

		public function moveVerticalTo(position:Number):void
		{
			_model.y = position;
		}

		public function moveVerticalBy(position:Number):void
		{
			_model.y = _originalY + position;
		}
	}
}
