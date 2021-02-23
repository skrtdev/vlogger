module vlogger

pub struct Handler {
	function fn (string, Level)
}

pub fn (h Handler) execute(value string, level Level) {
	h.function(value, level)
}
