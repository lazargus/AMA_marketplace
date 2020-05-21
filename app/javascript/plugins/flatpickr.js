import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


flatpickr("#start_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#end_date"})]
});


flatpickr(".datepicker", {});
