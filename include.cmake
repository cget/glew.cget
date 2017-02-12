if(MSVC)
	# This includes glew
	CGET_HAS_DEPENDENCY(GLUT NUGET_PACKAGE nupengl.core GITHUB dcnieho/FreeGLUT VERSION FG_3_0_0)
	find_package(glew)
else()
    CGET_HAS_DEPENDENCY(glew URL https://glew.s3.amazonaws.com/nigels-com/glew/15/15.1/glew-1.13.0.zip
                             CMAKE_PATH build/cmake OPTIONS -DBUILD_UTILS:BOOL=off )
endif()

