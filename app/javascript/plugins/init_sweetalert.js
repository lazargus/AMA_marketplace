import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  swalButtons.forEach((swalButton) => {
    if (swalButton) { // protect other pages
      swalButton.addEventListener('click', () => {
        swal(options).then(callback); // <-- add the `.then(callback)`
      });
    }
  });
};

export { initSweetalert };
