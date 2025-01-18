# Install script for directory: /home/sauce/playground/cpp/merge_table_cpp/OpenXLSX

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/x86_64-w64-mingw32-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES "/home/sauce/playground/cpp/merge_table_cpp/build/OpenXLSX/OpenXLSX-Exports.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/IZipArchive.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCell.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCellIterator.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCellRange.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCellReference.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCellValue.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLColor.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLColumn.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLCommandQuery.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLComments.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLConstants.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLContentTypes.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLDateTime.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLDocument.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLException.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLFormula.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLIterator.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLMergeCells.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLProperties.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLRelationships.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLRow.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLRowData.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLSharedStrings.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLSheet.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLStyles.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLWorkbook.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLXmlData.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLXmlFile.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLXmlParser.hpp"
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/headers/XLZipArchive.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX" TYPE FILE FILES "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/OpenXLSX.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/sauce/playground/cpp/merge_table_cpp/build/output/libOpenXLSX.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES
    "/home/sauce/playground/cpp/merge_table_cpp/OpenXLSX/OpenXLSXConfig.cmake"
    "/home/sauce/playground/cpp/merge_table_cpp/build/OpenXLSX/OpenXLSX/OpenXLSXConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake"
         "/home/sauce/playground/cpp/merge_table_cpp/build/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "/home/sauce/playground/cpp/merge_table_cpp/build/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "/home/sauce/playground/cpp/merge_table_cpp/build/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets-release.cmake")
  endif()
endif()

