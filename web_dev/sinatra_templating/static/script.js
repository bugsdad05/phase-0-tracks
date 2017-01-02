console.log("The script is running!");

Array.prototype.forEach.call(document.querySelectorAll('[data-ripple]'), function(element){
  new RippleEffect(element);
});
