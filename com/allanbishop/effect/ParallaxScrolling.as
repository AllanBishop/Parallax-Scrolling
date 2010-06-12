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

	public class ParallaxScrolling 
	{
		private var _layers:Array;
		private var _xSpeed:Number;
		private var _ySpeed:Number;

		public function ParallaxScrolling(xSpeed:Number = 1,ySpeed:Number = 0.5) 
		{
			_layers = new Array();
			_xSpeed = xSpeed;
			_ySpeed = ySpeed;
		}

		public function addLayer(layer:ParallaxLayer):void
		{
			_layers.push(layer);
		}

		public function removeAllLayers():void
		{
			_layers.length = 0;
		}
		
		public function getLayers():Array
		{
			return _layers;
		}

		private function getHorizontalScrollRate(layer:ParallaxLayer):Number
		{
			return _xSpeed / (layer.zDepth);
		}

		private function getVerticalScrollRate(layer:ParallaxLayer):Number 
		{
			return _ySpeed / (layer.zDepth);
		}

		public function updateByDelta(deltaX:Number,deltaY:Number):void
		{
			var layer:ParallaxLayer;
			
			for (var i:int = 0;i < _layers.length;i++) 
			{
				layer = _layers[i] as ParallaxLayer;
				layer.moveHorizontal(deltaX * getHorizontalScrollRate(layer));
				layer.moveVertical(deltaY * getVerticalScrollRate(layer));
			}
		}

		public function updateByPosition(x:Number,y:Number):void
		{
			var layer:ParallaxLayer;
			
			for (var i:int = 0;i < _layers.length;i++) 
			{
				layer = _layers[i] as ParallaxLayer;
				layer.moveHorizontalTo(x * getHorizontalScrollRate(layer));
				layer.moveVerticalTo(y * getVerticalScrollRate(layer));
			}
		}

		public function updateByDisplacement(x:Number,y:Number):void
		{
			var layer:ParallaxLayer;
			
			for (var i:int = 0;i < _layers.length;i++) 
			{
				layer = _layers[i] as ParallaxLayer;
				layer.moveHorizontalBy(x * getHorizontalScrollRate(layer));
				layer.moveVerticalBy(y * getVerticalScrollRate(layer));
			}
		}
	}
}
