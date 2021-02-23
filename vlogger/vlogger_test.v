// module vlogger
import vlogger

fn test_logger() {
	mut logger := vlogger.Logger{
		level: .debug
	}

	assert typeof(logger).name == 'vlogger.Logger'

	logger.debug('debug')
	logger.info('info')
	logger.notice('notice')
	logger.warning('warning')
	logger.error('error')
	logger.critical('critical')
	println(logger)
}
