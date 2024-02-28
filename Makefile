CPP=clang++ -std=c++17

.PHONY: clean hello

# Build and run all tests.
hello: hello.out
	./hello.out

# Clean outputs.
clean:
	rm -rf *.o hello.out

# Build tests.
#hello.out: *.cpp *.h
#	$(CPP) -O3 -o hello.out $$(ls *.cpp)
#	$(CPP) -O3 -o hello.out hello.cpp func1.cpp

hello.out: hello.o func1.o
	${CPP} -o hello.out hello.o func1.o

hello.o:
	${CPP} -c hello.cpp

func1.o:
	${CPP} -c func1.cpp
