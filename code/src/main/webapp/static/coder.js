/*
* string to base64  	
*/
function _btoa(str) {
	return window.btoa(unescape(encodeURIComponent(str)));
}
/**
* base64 to string
*/
function _atob(str) {
	return decodeURIComponent(escape(window.atob(str)));
}