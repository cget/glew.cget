if(MSVC)
    ADD_DEFINITIONS(-DGLEW_STATIC=1)
    CGET_HAS_DEPENDENCY(glew NUGET_PACKAGE glew.${CGET_MSVC_RUNTIME} GITHUB nigels-com/glew VERSION glew-1.11.0 NUGET_USE_STATIC)
else()
    CGET_HAS_DEPENDENCY(glew URL https://glew.s3.amazonaws.com/nigels-com/glew/15/15.1/glew-1.13.0.zip
                             CMAKE_PATH build/cmake OPTIONS -DBUILD_UTILS:BOOL=off )
endif()

