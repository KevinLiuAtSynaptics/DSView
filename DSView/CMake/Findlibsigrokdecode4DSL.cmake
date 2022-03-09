
#libsigrokdecode4DSL
#LIBSIGROKDECODE4DSL

FIND_PATH(LIBSIGROKDECODE4DSL_INCLUDE_DIR
		NAMES
			libsigrokdecode.h
			
		PATHS
			/usr/local/include
			/usr/include
			
		PATH_SUFFIXES
			libsigrokdecode4DSL
		 )
	
FIND_LIBRARY(LIBSIGROKDECODE4DSL_LIBRARY
		NAMES
			sigrokdecode4DSL
			
		PATHS
			/usr/local/lib
			/usr/lib
			
		PATH_SUFFIXES
			libsigrokdecode4DSL
		)
		
if (LIBSIGROKDECODE4DSL_INCLUDE_DIR AND LIBSIGROKDECODE4DSL_LIBRARY)
	  set (LIBSIGROKDECODE4DSL_FOUND TRUE)
	  
	  set(LIBSIGROKDECODE4DSL_INCLUDE_DIRS
			${LIBSIGROKDECODE4DSL_INCLUDE_DIR}
		)
		
	  set(LIBSIGROKDECODE4DSL_LIBRARYS
			${LIBSIGROKDECODE4DSL_LIBRARY}
		)
		
	  message(STATUS "Found libsigrokdecode4DSL:")
	  message(STATUS "	- includes: ${LIBSIGROKDECODE4DSL_INCLUDE_DIR}")
	  message(STATUS "	- libraries: ${LIBSIGROKDECODE4DSL_LIBRARY}")
endif(LIBSIGROKDECODE4DSL_INCLUDE_DIR AND LIBSIGROKDECODE4DSL_LIBRARY)

