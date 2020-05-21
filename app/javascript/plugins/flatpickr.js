import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
});

flatpickr(".datepicker", {});
