

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
This is just a update of the project coming from dsource. 

Features 
--------
 * no Tango support 
 * cmake version >=2.8
 * Linux Platform first (DMD, GDC and LDC). 
 * Windows will come later

News
----
  * currently, we sucessfuly build the HelloPhobos example 
  with DMD and GDC on Linux... LDC support will gone quick

## Installation
 
 - system install
   
   * cd cmaked/cmaked
   * mkdir build
   * cd build
   * cmake ..
   * make install (with sudo to install in the system path)

 - per project install 
   * go to sample/project
   * mkdir build
   * cd build
   * cmake ..
   * make
   If you are satisfied by the compilation of a Project and you want
   distribute files with sources. Just copy the Modules directory into
   your software directories.


