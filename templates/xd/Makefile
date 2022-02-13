CC = g++
CXXFLAGS = -std=c++17
RM = rm

inputs: generate_input.cpp
	@rm -f in/*
	@clear
	@$(CC) -o generate_input generate_input.cpp $(CXXFLAGS)
	@./generate_input
	@$(RM) generate_input
	@echo "inputs have been generated to testng/in"