#!/usr/local/bin/python
'''logger module'''

import logging
time_format = "%Y-%m-%d %H:%M:%S"
logging.basicConfig(filename="logfilename.log", 
                    level=logging.INFO, 
                    filemode='w', force=True, 
                    format='%(asctime)s | %(levelname)s | %(message)s', datefmt=time_format)
logging.info('info')
logging.debug('debug')
logging.warning('warning')
logging.error('error')
logging.critical('crtical')
