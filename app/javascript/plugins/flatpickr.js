import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_orange.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
	altInput: true,
	plugins: [new rangePlugin({ input: "#range_end"})]
	// enableTime: true
});