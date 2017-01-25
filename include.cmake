if(MSVC)
    CGET_HAS_DEPENDENCY(glew NUGET_PACKAGE glew.${CGET_MSVC_RUNTIME} GITHUB nigels-com/glew VERSION glew-1.11.0)
else()
    CGET_HAS_DEPENDENCY(glew URL https://glew.s3.amazonaws.com/nigels-com/glew/15/15.1/glew-1.13.0.zip
                             CMAKE_PATH glew-1.13.0/build/cmake )
endif()

