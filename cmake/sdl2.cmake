##### Find SDL2 include and libraries #####


find_path(SDL2_INCLUDE_DIR 
  NAMES SDL.h
  PATH_SUFFIXES SDL2 include/SDL2 include
  DOC "Where the SDL2 headers can be found"
  REQUIRED
  )

find_library(SDL2_LIBRARY
  NAMES SDL2
  PATH_SUFFIXES lib
  DOC "Where the SDL2 Library can be found"
  REQUIRED
)

find_library(SDL2_IMAGE_LIBRARY
  NAMES SDL2_image
  PATH_SUFFIXES lib
  DOC "Where the SDL2 Image Library can be found"
  REQUIRED
)

find_library(SDL2_TTF_LIBRARY
  NAMES SDL2_ttf
  PATH_SUFFIXES lib
  DOC "Where the SDL2 TTF Library can be found"
  REQUIRED
)

find_library(SDL2_GFX_LIBRARY
  NAMES SDL2_gfx
  PATH_SUFFIXES lib
  DOC "Where the SDL2 GFX Library can be found"
  REQUIRED
)

### use this variables in your CMakeLists.txt
set(SDL2_ALL_INC ${SDL2_INCLUDE_DIR})
set(SDL2_ALL_LIBS ${SDL2_LIBRARY} ${SDL2_IMAGE_LIBRARY} ${SDL2_TTF_LIBRARY} ${SDL2_GFX_LIBRARY})

###