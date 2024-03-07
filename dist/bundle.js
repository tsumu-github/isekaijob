/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (function() { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./app/javascript/application.js":
/*!***************************************!*\
  !*** ./app/javascript/application.js ***!
  \***************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _js_result_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./js/result.js */ \"./app/javascript/js/result.js\");\n/* harmony import */ var _js_result_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_js_result_js__WEBPACK_IMPORTED_MODULE_0__);\n// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails\n\n\n//# sourceURL=webpack:///./app/javascript/application.js?");

/***/ }),

/***/ "./app/javascript/js/result.js":
/*!*************************************!*\
  !*** ./app/javascript/js/result.js ***!
  \*************************************/
/***/ (function() {

eval("const slide = document.getElementById('slide');\nconst prev = document.getElementById('prev');\nconst next = document.getElementById('next');\nconst indicator = document.getElementById('indicator');\nconst lists = document.querySelectorAll('.list');\nconst totalSlides = lists.length;\nlet count = 0;\nlet autoPlayInterval;\nfunction updateListBackground() {\n  for (let i = 0; i < lists.length; i++) {\n    lists[i].style.backgroundColor = i === count % totalSlides ? '#000' : '#fff';\n  }\n}\nfunction nextClick() {\n  slide.classList.remove(`slide${count % totalSlides + 1}`);\n  count++;\n  slide.classList.add(`slide${count % totalSlides + 1}`);\n  updateListBackground();\n}\nfunction prevClick() {\n  slide.classList.remove(`slide${count % totalSlides + 1}`);\n  count--;\n  if (count < 0) count = totalSlides - 1;\n  slide.classList.add(`slide${count % totalSlides + 1}`);\n  updateListBackground();\n}\nfunction startAutoPlay() {\n  autoPlayInterval = setInterval(nextClick, 25000);\n}\nfunction resetAutoPlayInterval() {\n  clearInterval(autoPlayInterval);\n  startAutoPlay();\n}\nnext.addEventListener('click', () => {\n  nextClick();\n  resetAutoPlayInterval();\n});\nprev.addEventListener('click', () => {\n  prevClick();\n  resetAutoPlayInterval();\n});\nindicator.addEventListener('click', (event) => {\n  if (event.target.classList.contains('list')) {\n    const index = Array.from(lists).indexOf(event.target);\n    slide.classList.remove(`slide${count % totalSlides + 1}`);\n    count = index;\n    slide.classList.add(`slide${count % totalSlides + 1}`);\n    updateListBackground();\n    resetAutoPlayInterval();\n  }\n});\n//startAutoPlay();\n\n\n//# sourceURL=webpack:///./app/javascript/js/result.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	!function() {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = function(module) {
/******/ 			var getter = module && module.__esModule ?
/******/ 				function() { return module['default']; } :
/******/ 				function() { return module; };
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	!function() {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = function(exports, definition) {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	!function() {
/******/ 		__webpack_require__.o = function(obj, prop) { return Object.prototype.hasOwnProperty.call(obj, prop); }
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	!function() {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = function(exports) {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	}();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./app/javascript/application.js");
/******/ 	
/******/ })()
;