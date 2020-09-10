#include <python2.7/Python.h>
#include "test.pb.h"


static PyMethodDef BazMethods[] = {
    {NULL, NULL, 0, NULL}        /* Sentinel */
};

PyMODINIT_FUNC
initbaz(void)
{
    Py_InitModule("baz", BazMethods);
}
