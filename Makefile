CC = clang
LT = libtool
TARGET = libiboot32patcher.a

CFLAGS = -Wno-multichar -I.

OBJECTS = iBoot32Patcher.o \
		  finders.o \
		  functions.o \
		  patchers.o

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(LT) $(OBJECTS) -o $(TARGET)
	$(CC) $(OBJECTS) -o patcher

%.o : %.c 
	$(CC) -c $(CFLAGS) $< -o $@

clean : 
	rm $(OBJECTS) $(TARGET)