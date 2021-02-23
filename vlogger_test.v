// module vlogger
import vlogger

fn test_logger() {
	mut logger := vlogger.Logger{
		level: .debug
		// handlers: [vlogger.get_colored_terminal_handler()]
	}
	/*
	logger.add_handler(
		function: fn (value string, level vlogger.Level) {
			println('cazo dici')
		}
	)
	*/
	// logger.add_handler(vlogger.get_colored_terminal_handler())
	// logger = vlogger.new()
	assert typeof(logger).name == 'vlogger.Logger'
	logger.debug('debug')
	logger.info('info')
	logger.notice('notice')
	logger.warning('warning')
	logger.error('error')
	logger.critical('critical')
	// vlogger.default_logger.warning('ass')
	// println(vlogger.default_logger)
}
