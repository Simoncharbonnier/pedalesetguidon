import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    minDate: "today",
    defaultDate: "today"
  });
}

export { initFlatpickr };
