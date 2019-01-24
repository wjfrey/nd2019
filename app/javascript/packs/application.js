import "bootstrap";

const reserve_btns = document.querySelectorAll('.modal-btn');
reserve_btns.forEach( (btn) => {
  btn.addEventListener('click', myfunction)
})

function myfunction(event) {
  event.preventDefault();
}
