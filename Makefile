VPATH = src:objects
COMPILE = g++

OBJECTS = main.o
LDFLAGS = -lzmq

objects/%.o: %.cpp
	$(COMPILE) -c $^ -o $@

app: objects/$(OBJECTS)
	$(COMPILE) -o $@ $^ $(LDFLAGS)

clean: 
	rm app objects/*.o