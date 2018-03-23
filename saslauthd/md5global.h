/* GLOBAL.H - RSAREF types and constants
 */
#ifndef MD5GLOBAL_H
#define MD5GLOBAL_H

#ifdef HAVE_STDINT_H
#include <stdint.h>
#endif
#ifdef HAVE_INTTYPES_H
#include <inttypes.h>
#endif

/* PROTOTYPES should be set to one if and only if the compiler supports
  function argument prototyping.
The following makes PROTOTYPES default to 0 if it has not already
  been defined with C compiler flags.
 */
#ifndef PROTOTYPES
#define PROTOTYPES 0
#endif

/* POINTER defines a generic pointer type */
typedef unsigned char *POINTER;

typedef int8_t INT1;		/*  8 bits */
typedef int16_t INT2;		/* 16 bits */
typedef int32_t INT4;		/* 32 bits */
/* There is no 64 bit type */
typedef uint8_t UINT1;		/*  8 bits */
typedef uint16_t UINT2;		/* 16 bits */
typedef uint32_t UINT4;		/* 32 bits */
/* There is no 64 bit type */

/* PROTO_LIST is defined depending on how PROTOTYPES is defined above.
If using PROTOTYPES, then PROTO_LIST returns the list, otherwise it
returns an empty list.
*/
#if PROTOTYPES
#define PROTO_LIST(list) list
#else
#define PROTO_LIST(list) ()
#endif

#endif /* MD5GLOBAL_H */

