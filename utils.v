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

pub fn debug(value string) {
	default_logger.debug(value)
}

pub fn info(value string) {
	default_logger.info(value)
}

pub fn notice(value string) {
	default_logger.notice(value)
}

pub fn warning(value string) {
	default_logger.warning(value)
}

pub fn error(value string) {
	default_logger.error(value)
}

pub fn critical(value string) {
	default_logger.critical(value)
}
