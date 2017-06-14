require=(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({"split-image-array":[function(require,module,exports){
exports.splitImageArray = function(array) {
  var count, i, index, layer, len, splitAngle;
  index = 0;
  count = array.length;
  splitAngle = 360 / count;
  for (i = 0, len = array.length; i < len; i++) {
    layer = array[i];
    layer.originX = 0.5;
    layer.originY = 1.5;
    layer.rotationZ = splitAngle * index;
    index++;
  }
  return splitAngle;
};


},{}]},{},[])
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZnJhbWVyLm1vZHVsZXMuanMiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uL1VzZXJzL2F0aW5kZXJwYWwuc2FpbmkvRGVza3RvcC9ldmVyeXRoaW5nL0NPREVCT1gvRnJhbWVyLyMwMDIvTG9hZGluZ1NjcmVlbkljb25zLmZyYW1lci9tb2R1bGVzL3NwbGl0LWltYWdlLWFycmF5LmNvZmZlZSIsIm5vZGVfbW9kdWxlcy9icm93c2VyLXBhY2svX3ByZWx1ZGUuanMiXSwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0cy5zcGxpdEltYWdlQXJyYXkgPSAoYXJyYXkpIC0+XG4gICAgaW5kZXggPSAwXG4gICAgY291bnQgPSBhcnJheS5sZW5ndGhcbiAgICBzcGxpdEFuZ2xlID0gMzYwIC8gY291bnRcbiAgICBmb3IgbGF5ZXIgaW4gYXJyYXlcbiAgICAgICAgbGF5ZXIub3JpZ2luWCA9IDAuNVxuICAgICAgICBsYXllci5vcmlnaW5ZID0gMS41XG4gICAgICAgIGxheWVyLnJvdGF0aW9uWiA9IHNwbGl0QW5nbGUgKiBpbmRleFxuICAgICAgICBpbmRleCsrXG4gICAgcmV0dXJuIHNwbGl0QW5nbGUiLCIoZnVuY3Rpb24gZSh0LG4scil7ZnVuY3Rpb24gcyhvLHUpe2lmKCFuW29dKXtpZighdFtvXSl7dmFyIGE9dHlwZW9mIHJlcXVpcmU9PVwiZnVuY3Rpb25cIiYmcmVxdWlyZTtpZighdSYmYSlyZXR1cm4gYShvLCEwKTtpZihpKXJldHVybiBpKG8sITApO3ZhciBmPW5ldyBFcnJvcihcIkNhbm5vdCBmaW5kIG1vZHVsZSAnXCIrbytcIidcIik7dGhyb3cgZi5jb2RlPVwiTU9EVUxFX05PVF9GT1VORFwiLGZ9dmFyIGw9bltvXT17ZXhwb3J0czp7fX07dFtvXVswXS5jYWxsKGwuZXhwb3J0cyxmdW5jdGlvbihlKXt2YXIgbj10W29dWzFdW2VdO3JldHVybiBzKG4/bjplKX0sbCxsLmV4cG9ydHMsZSx0LG4scil9cmV0dXJuIG5bb10uZXhwb3J0c312YXIgaT10eXBlb2YgcmVxdWlyZT09XCJmdW5jdGlvblwiJiZyZXF1aXJlO2Zvcih2YXIgbz0wO288ci5sZW5ndGg7bysrKXMocltvXSk7cmV0dXJuIHN9KSJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUNBQTtBREFBLE9BQU8sQ0FBQyxlQUFSLEdBQTBCLFNBQUMsS0FBRDtBQUN0QixNQUFBO0VBQUEsS0FBQSxHQUFRO0VBQ1IsS0FBQSxHQUFRLEtBQUssQ0FBQztFQUNkLFVBQUEsR0FBYSxHQUFBLEdBQU07QUFDbkIsT0FBQSx1Q0FBQTs7SUFDSSxLQUFLLENBQUMsT0FBTixHQUFnQjtJQUNoQixLQUFLLENBQUMsT0FBTixHQUFnQjtJQUNoQixLQUFLLENBQUMsU0FBTixHQUFrQixVQUFBLEdBQWE7SUFDL0IsS0FBQTtBQUpKO0FBS0EsU0FBTztBQVRlIn0=
