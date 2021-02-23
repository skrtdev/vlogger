module vlogger

import term

const colors = term.can_show_color_on_stdout()

fn get_level_color(level Level) string {
	if !vlogger.colors {
		return '$level'.to_upper()
	}
	return match level {
		.debug { '\033[90m' }
		.notice { '\033[92m' }
		.info { '\033[94m' }
		.warning { '\033[93m' }
		.error { '\033[91m' }
		.critical { '\033[31m' }
	} + '$level'.to_upper() + '\033[0m'
}

pub fn get_colored_terminal_handler() Handler {
	return Handler{fn (value string, level Level) {
		println(get_level_color(level) + ': $value')
	}}
}
