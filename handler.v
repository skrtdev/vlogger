module vlogger

pub struct Handler {
	function fn (string, Level)
pub mut:
	level Level = .info
}

fn (h Handler) is_level_relevant(level Level) bool {
	return is_level_relevant(h.level, level)
}

fn (h Handler) handle(value string, level Level) {
	if h.is_level_relevant(level) {
		h.function(value, level)
	}
}
