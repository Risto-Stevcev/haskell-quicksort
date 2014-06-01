Haskell QuickSort
=================

A quicksort implementation in Haskell. There are three different implementations of quicksort in ``QuickSort.hs``, the
default being the simplest with the first element as the pivot. There are also two different versions of quicksort that
take a random pivot. One of them computes array length using the ``length`` function, which is ``O(n)``, and the other 
takes the length in as a parameter that's passed during execution.  

Strangely, the latter implementation, which should be faster than the one computing length on each call, is actually 
slower, and I don't know why. Haskell is proving to be tricky in terms of reasoning about performance.

``quick_sort`` with the first element as the pivot:

    real    0m1.734s
    user    0m0.660s
    sys     0m0.017s

``quick_sort`` using a random pivot with length computed on each recursive call:

    real    0m1.729s
    user    0m0.803s
    sys     0m0.017s

``quick_sort`` using a random pivot with the length passed into the function:

    real    0m1.745s
    user    0m1.153s
    sys     0m0.023s
