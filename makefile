
SOURCE  := $(wildcard *.c) $(wildcard *.cpp)
OBJS    := $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))

TARGET = multiThreadTest

GCC = gcc

CFLAGS  := -o 

$(TARGET):$(OBJS)
	$(GCC) $(CFLAGS) $(TARGET) $(OBJS)  -lpthread

$(OBJS):$(SOURCE)
	$(GCC) -c $(SOURCE)	
clean :
	@rm -f *.o $(TARGET)
#gcc main.c -o multiThreadTest -lpthread
