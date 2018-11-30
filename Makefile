SRCDIR = src
BUILDDIR = build
EXECUTABLE = calculator
LIBNAME = calculator_lib

.PHONY: all
all: dir $(BUILDDIR)/$(EXECUTABLE)

.PHONY: dir
dir: 
	mkdir $(BUILDDIR)

$(BUILDDIR)/$(EXECUTABLE): $(SRCDIR)/main.cpp $(BUILDDIR)/$(LIBNAME).a
	g++ $(SRCDIR)/main.cpp $(BUILDDIR)/$(LIBNAME).a -o $(BUILDDIR)/$(EXECUTABLE)

$(BUILDDIR)/$(LIBNAME).o: $(SRCDIR)/calculator.cpp $(SRCDIR)/calculator.h
	g++ -c $(SRCDIR)/calculator.cpp -o $(BUILDDIR)/$(LIBNAME).o

$(BUILDDIR)/$(LIBNAME).a: $(BUILDDIR)/$(LIBNAME).o
	ar rcs $(BUILDDIR)/$(LIBNAME).a $(BUILDDIR)/$(LIBNAME).o
