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

pub const default_logger = Logger{}

pub struct Logger {
pub mut:
	handlers []Handler = [get_default_handler(.info)]
}

fn is_level_relevant(min_level Level, actual_level Level) bool {
	for level in levels {
		match level {
			min_level { return true }
			actual_level { return false }
			else {}
		}
	}
	return false
}

pub fn new(level Level) Logger {
	return Logger{[get_default_handler(level)]}
}

fn (l Logger) log(value string, level Level) {
	for handler in l.handlers {
		handler.handle(value, level)
	}
}

pub fn (mut l Logger) add_handler(handler Handler) {
	l.handlers << handler
}
