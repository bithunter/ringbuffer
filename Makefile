CFLAGS += -Wall -Wextra -pedantic -Werror
#LIBS += -lncurses
CC = gcc

%.o: %.c
	$(CC) -c $^


ring: ring.o
	$(CC) $(CFLAGS) $(LIBS) -o ring ring.o

clean:
	rm -f ring *.o

docs:
	@doxygen ringdoxy

# git remote add origin https://github.com/bithunter/myfind.git
# git branch -M main
# git push -u origin main
# git pull

.PHONY: clean docs