module vlogger

// import  as vlogger

fn test_logger() {
	mut logger := new(.debug)

	assert typeof(logger).name == 'vlogger.Logger'

	logger.debug('debug')
	logger.info('info')
	logger.notice('notice')
	logger.warning('warning')
	logger.error('error')
	logger.critical('critical')
	println(logger)

	logger = default_logger

	assert typeof(logger).name == 'vlogger.Logger'

	logger.debug('debug')
	logger.info('info')
	logger.notice('notice')
	logger.warning('warning')
	logger.error('error')
	logger.critical('critical')
	// logger.handlers = []
	logger.handlers[0].level = .debug
	println(logger)
	println(logger.handlers[0])
}
