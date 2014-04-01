# gdb_utilities

This package enables a user to add GDB pretty printers for Eigen in catkin develspace.

## Installation

### Python Package
First, make sure that this package's Python code is on your `$PYTHONPATH`.

The easiest way to do this is via `catkin`, either by issuing a `catkin_make --pkg gdb_utilities` in your workspace or building the package:

	roscd gdb_utilities
	mkdir build && cd build
	cmake ..
	source devel/setup.bash
	# Good to go

### .gdbinit
Second, ensure that you have defined your `.gdbinit` script to import the Eigen pretty printers. See `share/gdbinit` for details, including credit for the process of putting this together.

### Verify
To ensure that this is being registered, run `gdb`. After the first details are printed out, you should see `Eigen Pretty Printers registered`.

## Todo

Add `install()` instructions in `CMakeLists.txt`.
