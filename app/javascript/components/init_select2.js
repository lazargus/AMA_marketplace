import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-placeholder-multiple').select2({
    placeholder: " Which model would you like?"
  });
};

export { initSelect2 };
