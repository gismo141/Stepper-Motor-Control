# add a target to generate API documentation with Doxygen
FIND_PACKAGE(Doxygen)

IF(DOXYGEN_FOUND)
    SET(DOXYGEN_INPUT ${CMAKE_SOURCE_DIR})
    CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/SOC2014.Doxyfile ${CMAKE_CURRENT_BINARY_DIR}/doxygen.conf)
    ADD_CUSTOM_TARGET(doc ALL
    	${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/doxygen.conf
    	COMMENT "Generating C-Source documentation with Doxygen" VERBATIM
    )

    file(COPY ${CMAKE_SOURCE_DIR}/SoC2014.png DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/html)

ELSE(DOXYGEN_FOUND)
    MESSAGE(STATUS "WARNING: Doxygen not found - Reference manual will not be created")

ENDIF(DOXYGEN_FOUND)