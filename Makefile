CC = gcc
SOURCES = memorypool.c
MAIN_SOURCES = main.c
MAIN_OUTPUT = main
EXAMPLE_SOURCES = example.c
EXAMPLE_OUTPUT = example

main:
	$(CC) $(MAIN_SOURCES) $(SOURCES) -o $(MAIN_OUTPUT).out
	@echo "main ok!\n"

example:
	$(CC) $(EXAMPLE_SOURCES) $(SOURCES) -o $(EXAMPLE_OUTPUT).out
	@echo "example ok!\n"

run_main:
	./$(MAIN_OUTPUT).out

run_example:
	./$(EXAMPLE_OUTPUT).out

.PHONY: clean
clean:
	rm *.out