
SOURCE  := $(wildcard *.c) $(wildcard *.cpp)
OBJS    := $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))

TARGET = mutilThreadTest

GCC = gcc


CFLAGS  := -o 

$(OBJS):
	$(GCC) $(SOURCE) -c -lpthread

$(TARGET):$(OBJS)
	$(GCC)  $(OBJS)　$(CFLAGS) 　

clean :
	@rm -f *.o $(TARGET)
#gcc main.c -o mutilThreadTest -lpthread
