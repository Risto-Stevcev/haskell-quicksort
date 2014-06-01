GHC = ghc

.PHONY:
default: Main

.PHONY:
test: TestQuickSort

Main:
	$(GHC) Main.hs

TestQuickSort:
	$(GHC) TestQuickSort.hs

.PHONY:
all: clean default test

.PHONY:
clean:
	rm -f *.o *.hi *.*~ TestQuickSort Main
