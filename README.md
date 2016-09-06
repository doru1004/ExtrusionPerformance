# ExtrusionPerformance
Test harness for exploring the performance of finite element assembly in Firedrake.

# Dependencies

In order to run the tests a Firedrake installation is needed.

Please follow the installation steps detailed in the Firedrake
release referenced in the paper:

docs/source/download.rst

The meshes used in the experiments have been archived separately.
When running the experiments please un-archive the meshes into

MESHES/

# Running the tests

Set the environment and run test script:

. set.env
cd DATA/SCRIPTS
sh run.sh

# Output

MASS_FRHS_NEW_7MV_2/

The output for generating the results in the paper has been included.

The plots used in the paper are found in:

MASS_FRHS_NEW_7MV_2/ROOFLINE
