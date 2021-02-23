module vlogger

pub fn (l Logger) debug(value string) {
	l.log(value, .debug)
}

pub fn (l Logger) info(value string) {
	l.log(value, .info)
}

pub fn (l Logger) notice(value string) {
	l.log(value, .notice)
}

pub fn (l Logger) warning(value string) {
	l.log(value, .warning)
}

pub fn (l Logger) error(value string) {
	l.log(value, .error)
}

pub fn (l Logger) critical(value string) {
	l.log(value, .critical)
}
