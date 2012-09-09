#----- Outputs -----#
COMPONENT_NAME = LedDriver

#----- Inputs ------#
UNITY_HOME = Unity
CPP_PLATFORM = Gcc
PROJECT_HOME_DIR = .
PROJECT_TEST_DIR = tests
UNITY_BUILD_HOME = Unity/extras/fixture/build
LLVM_GCC_DIR = /usr/llvm-gcc-4.2/lib/gcc/i686-apple-darwin11/4.2.1
VERBOSE = true

#UNITY_CFLAGS += -DUNITY_OUTPUT_CHAR=UnityOutputCharSpy_OutputChar
UNITY_WARNINGFLAGS = -Wall -Wextra -Wswitch-default
UNITY_LDFLAGS += -I$(LLVM_GCC_DIR) -mmacosx-version-min=10.5

SRC_DIRS = \
	$(PROJECT_HOME_DIR)/src/LedDriver\
	$(PROJECT_HOME_DIR)/src/util\

TEST_SRC_DIRS = \
	$(PROJECT_TEST_DIR)\
	$(PROJECT_TEST_DIR)/mocks\
	$(PROJECT_TEST_DIR)/LedDriver\
	$(UNITY_HOME)/src\
	$(UNITY_HOME)/extras/fixture/src\
	$(UNITY_HOME)/extras/fixture/text\

INCLUDE_DIRS=\
	.\
	$(PROJECT_HOME_DIR)/src/LedDriver\
	$(PROJECT_HOME_DIR)/src/util\
	$(PROJECT_TEST_DIR)/mocks\
	$(UNITY_HOME)/src\
	$(UNITY_HOME)/extras/fixture/src\
	$(UNITY_HOME)/extras/fixture/test\
	$(PROJECT_HOME_DIR)/include/LedDriver\

include $(UNITY_BUILD_HOME)/MakefileWorker.mk