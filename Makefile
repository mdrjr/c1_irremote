TARGET = odroid_remote

OBJS = irremote.o config.o parsefile.o

.o.c:
	$(CC) $(CFLAGS) -c $<

all: $(OBJS)
	gcc -o $(TARGET) $(OBJS)

clean:
	rm -rf $(OBJS) $(TARGET)

install:
	cp odroid_remote /usr/bin
	cp odroid_remote.conf /etc
	cp odroid_remote_service.conf /etc/init
	