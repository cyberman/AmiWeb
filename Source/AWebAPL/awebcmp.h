#ifndef AWEBCMP_H
#define AWEBCMP_H

/* Shared string compare macros.
 *
 * Case-insensitive compares use utility.library.
 * Case-sensitive compares remain standard C.
 *
 * Keep this header minimal on purpose: compare helpers only.
 */

#include <string.h>
#include <proto/utility.h>

#ifndef STRNIEQUAL
#define STRNIEQUAL(a,b,n)  (Strnicmp((a),(b),(n)) == 0)
#endif

#ifndef STRNEQUAL
#define STRNEQUAL(a,b,n)   (strncmp((a),(b),(n)) == 0)
#endif

#ifndef STRIEQUAL
#define STRIEQUAL(a,b)     (Stricmp((a),(b)) == 0)
#endif

#ifndef STREQUAL
#define STREQUAL(a,b)      (strcmp((a),(b)) == 0)
#endif

#endif
