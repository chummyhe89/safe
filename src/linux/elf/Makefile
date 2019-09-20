TOP	=	..
INCLUDE	= 	-I. -I$(TOP) -I$(TOP)/include

include $(TOP)/make.params

S_C	= 
S_ASM	=ini_hello.S 
OBJ	=$(S_C:.c=.o) \
		$(S_ASM:.S=.o)
all: $(OBJ)
	@echo "process object..."

ini_hello: ini_hello.o
	ld -o ini_hello.out $^ 

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $<

%.o: %.S
	$(AS) -o $@ $<

clean:
	/bin/rm -f *.o *.out  ini_hello

.PHONY:	all clean

