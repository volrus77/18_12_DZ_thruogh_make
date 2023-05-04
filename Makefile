SRC = src/main.cpp src/chat.cpp src/sha1.cpp
TARGET =  chat
PREFIX = /usr/local/bin

chat : $(SRC)
	g++ -o $(TARGET) $(SRC) -std=c++17 -lstdc++fs -Wall -O3

clean: 
	rm -rf *.o *.a *.txt

clean-users-messages:
	rm -rf *.txt 

install:
	install $(TARGET) $(PREFIX)

uninstall:
	rm -rf $(PREFIX)/$(TARGET)