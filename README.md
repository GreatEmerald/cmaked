

      ____                        __              ____ 
     /\  _`\    /'\_/`\          /\ \            /\  _`\
     \ \ \/\_\ /\      \     __  \ \ \/'\      __\ \ \/\ \
      \ \ \/_/_\ \ \__\ \  /'__`\ \ \ , <    /'__`\ \ \ \ \
       \ \ \L\ \\ \ \_/\ \/\ \L\.\_\ \ \\`\ /\  __/\ \ \_\ \
        \ \____/ \ \_\\ \_\ \__/.\_\\ \_\ \_\ \____\\ \____/
         \/___/   \/_/ \/_/\/__/\/_/ \/_/\/_/\/____/ \/___/
      

  
## CMake module for D Language
Copyright (c) 2007:
-------------------
 * Selman Ulug <selman.ulug@gmail.com>
 * Tim Burrell <tim.burrell@gmail.com>

Copyleft 2013
* for the portage to dmd2 Marc Fuentes <marc.fuentes@inria.fr> 


Features 
--------
 * Linux Platform only (DMD, GDC and LDC). 
 * no Tango support 
 * cmake version >=2.8
 * Windows will come later

News
----
  - currently, we sucessfuly build the HelloPhobos example with :
    * gdc (GCC) 4.7.1
    * DMD64 D Compiler v2.063.2
    * LLVM D compiler (9facd2): based on DMD v2.063.1 and LLVM 3.2svn


TODO
----
  - test CMakeD on a bigger example : like the [scid](https://github.com/aitzkora/scid.git)   

## Installation

 - To compile the Hello Phobos example :
   * cd example/HelloPhobos/
   * mkdir build && cd build
   * env DC=ldmd2 cmake ..  replave ldmd2 by gdc or dmd to test
   * make 

 - system install
   
   * cd cmaked/cmaked
   * mkdir build
   * cd build
   * cmake ..
   * make install (with sudo to install in the system path)

 - for a personal project
   * make a cmake/Modules sub-directory into your project
   * copy all files from cmaked/cmaked into that directory
   * use CMakeLists from HelloPhobos to build your project
   * enjoy 

