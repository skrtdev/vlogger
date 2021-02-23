module vlogger

pub enum Level {
	debug
	info
	notice
	warning
	error
	critical
}

const levels = [Level.debug, .info, .notice, .warning, .error, .critical]

// const default_logger = Logger{}

pub struct Logger {
	level Level = .info
mut:
	handlers []Handler = [get_colored_terminal_handler()]
}

fn is_level_relevant(min_level Level, actual_level Level) bool {
	for level in vlogger.levels {
		match level {
			min_level { return true }
			actual_level { return false }
			else {}
		}
	}
	return false
}

fn (l Logger) is_level_relevant(actual_level Level) bool {
	return is_level_relevant(l.level, actual_level)
}

fn (l Logger) log(value string, level Level) {
	if l.is_level_relevant(level) {
		for handler in l.handlers {
			handler.execute(value, level)
		}
	}
}

pub fn (mut l Logger) add_handler(handler Handler) {
	l.handlers << handler
}
