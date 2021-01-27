#line 1 "/usr/grobe0ba/projects/ficl/main.c"

#line 5 "/usr/grobe0ba/projects/ficl/main.c"

#line 39 "/usr/grobe0ba/projects/ficl/main.c"

#line 1 "/sys/include/ape/stdio.h"


#pragma lib "/$M/lib/ape/libap.a"


#line 8 "/sys/include/ape/stdio.h"
#line 1 "/amd64/include/ape/stdarg.h"



typedef char *va_list;


#line 10 "/amd64/include/ape/stdarg.h"


#line 19 "/amd64/include/ape/stdarg.h"

#line 21 "/amd64/include/ape/stdarg.h"


#line 9 "/sys/include/ape/stdio.h"
#line 1 "/amd64/include/ape/stddef.h"



typedef long long _ptrdiff_t;
#line 1 "/sys/include/ape/stddef.h"
















typedef _ptrdiff_t ptrdiff_t;


typedef unsigned long size_t;



typedef unsigned short wchar_t;



#line 6 "/amd64/include/ape/stddef.h"


#line 10 "/sys/include/ape/stdio.h"
#line 1 "/sys/include/ape/sys/types.h"



#pragma lib "/$M/lib/ape/libap.a"
typedef	unsigned short	ino_t;
typedef	unsigned short	dev_t;
typedef	long long		off_t;
typedef unsigned short	mode_t;
typedef short		uid_t;
typedef short		gid_t;
typedef short		nlink_t;
typedef int		pid_t;







typedef long ssize_t;




typedef long time_t;
























#line 11 "/sys/include/ape/stdio.h"

#line 31 "/sys/include/ape/stdio.h"
typedef struct{
	int fd;
	char flags;
	char state;
	char *buf;
	char *rp;
	char *wp;
	char *lp;
	size_t bufl;
	char unbuf[1];
}FILE;
typedef long long fpos_t;








#line 53 "/sys/include/ape/stdio.h"























extern int remove(const char *);
extern int rename(const char *, const char *);
extern FILE *tmpfile(void);
extern char *tmpnam(char *);
extern int fclose(FILE *);
extern int fflush(FILE *);
extern FILE *fopen(const char *, const char *);
extern FILE *freopen(const char *, const char *, FILE *);
extern void setbuf(FILE *, char *);
extern int setvbuf(FILE *, char *, int, size_t);
extern int fprintf(FILE *, const char *, ...);
extern int fscanf(FILE *, const char *, ...);
extern int printf(const char *, ...);
extern int scanf(const char *, ...);
extern int sprintf(char *, const char *, ...);
extern int snprintf(char *, size_t, const char *, ...);
extern int vsnprintf(char *, size_t, const char *, va_list);
extern int sscanf(const char *, const char *, ...);
extern int vfprintf(FILE *, const char *, va_list);
extern int vprintf(const char *, va_list);
extern int vsprintf(char *, const char *, va_list);
extern int vfscanf(FILE *, const char *, va_list);
extern int fgetc(FILE *);
extern char *fgets(char *, int, FILE *);
extern int fputc(int, FILE *);
extern int fputs(const char *, FILE *);
extern int getc(FILE *);

extern int _IO_getc(FILE *f);
extern int getchar(void);

extern char *gets(char *);
extern int putc(int, FILE *);

extern int _IO_putc(int, FILE *);
extern int putchar(int);

extern int puts(const char *);
extern int ungetc(int, FILE *);
extern size_t fread(void *, size_t, size_t, FILE *);
extern size_t fwrite(const void *, size_t, size_t, FILE *);
extern int fgetpos(FILE *, fpos_t *);
extern int fseek(FILE *, long, int);
extern int fseeko(FILE *, off_t, int);
extern int fsetpos(FILE *, const fpos_t *);
extern long ftell(FILE *);
extern off_t ftello(FILE *);
extern void rewind(FILE *);
extern void clearerr(FILE *);
extern int feof(FILE *);
extern int ferror(FILE *);
extern void perror(const char *);
extern FILE _IO_stream[90];























#line 41 "/usr/grobe0ba/projects/ficl/main.c"
#line 1 "/sys/include/ape/stdlib.h"


#pragma lib "/$M/lib/ape/libap.a"

#line 1 "/amd64/include/ape/stddef.h"







#line 6 "/sys/include/ape/stdlib.h"






typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;





extern double atof(const char *);
extern int atoi(const char *);
extern long int atol(const char *);
extern long long atoll(const char *);
extern double strtod(const char *, char **);
extern long int strtol(const char *, char **, int);
extern unsigned long int strtoul(const char *, char **, int);
extern long long int strtoll(const char *, char **, int);
extern unsigned long long int strtoull(const char *, char **, int);
extern int rand(void);
extern void srand(unsigned int seed);
extern void *calloc(size_t, size_t);
extern void free(void *);
extern void *malloc(size_t);
extern void *realloc(void *, size_t);
extern void abort(void);
extern int atexit(void (*func)(void));
extern void exit(int);
extern char *getenv(const char *);
extern int putenv(char *);
extern int system(const char *);
extern void *bsearch(const void *, const void *, size_t, size_t, int (*)(const void *, const void *));
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern int abs(int);
extern div_t div(int, int);
extern long int labs(long int);
extern ldiv_t ldiv(long int, long int);
extern int mblen(const char *, size_t);
extern int mbtowc(wchar_t *, const char *, size_t);
extern int wctomb(char *, wchar_t);
extern size_t mbstowcs(wchar_t *, const char *, size_t);
extern size_t wcstombs(char *, const wchar_t *, size_t);










#line 42 "/usr/grobe0ba/projects/ficl/main.c"

#line 1 "/usr/grobe0ba/projects/ficl/./ficl.h"

#line 43 "/usr/grobe0ba/projects/ficl/./ficl.h"




#line 138 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 1 "/sys/include/ape/limits.h"



























































































#line 145 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/sys/include/ape/setjmp.h"


#pragma lib "/$M/lib/ape/libap.a"

typedef int jmp_buf[10];








extern int setjmp(jmp_buf);
extern void longjmp(jmp_buf, int);











#line 146 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/amd64/include/ape/stdarg.h"






#line 10 "/amd64/include/ape/stdarg.h"


#line 19 "/amd64/include/ape/stdarg.h"

#line 21 "/amd64/include/ape/stdarg.h"


#line 147 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/amd64/include/ape/stddef.h"







#line 148 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/sys/include/ape/stdio.h"





#line 8 "/sys/include/ape/stdio.h"




#line 31 "/sys/include/ape/stdio.h"




















#line 53 "/sys/include/ape/stdio.h"



































































































#line 149 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/sys/include/ape/stdlib.h"




























































#line 150 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/sys/include/ape/string.h"


#pragma lib "/$M/lib/ape/libap.a"

#line 1 "/amd64/include/ape/stddef.h"







#line 6 "/sys/include/ape/string.h"





extern void *memcpy(void *, const void *, size_t);
extern void *memccpy(void*, void*, int, size_t);
extern void *memmove(void *, const void *, size_t);
extern char *strcpy(char *, const char *);
extern char *strncpy(char *, const char *, size_t);
extern char *strcat(char *, const char *);
extern char *strncat(char *, const char *, size_t);
extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strcoll(const char *, const char *);
extern char *strdup(char*);
extern char *strndup(char*, size_t);
extern int strncmp(const char *, const char *, size_t);
extern size_t strxfrm(char *, const char *, size_t);
extern void *memchr(const void *, int, size_t);
extern char *strchr(const char *, int);
extern size_t strcspn(const char *, const char *);
extern char *strpbrk(const char *, const char *);
extern char *strrchr(const char *, int);
extern size_t strspn(const char *, const char *);
extern char *strstr(const char *, const char *);
extern char *strtok(char *, const char *);
extern void *memset(void *, int, size_t);
extern char *strerror(int);
extern size_t strlen(const char *);
extern size_t strnlen(const char *, size_t);















#line 151 "/usr/grobe0ba/projects/ficl/./ficl.h"


#line 157 "/usr/grobe0ba/projects/ficl/./ficl.h"
#line 1 "/usr/grobe0ba/projects/ficl/./ficllocal.h"

#line 7 "/usr/grobe0ba/projects/ficl/./ficllocal.h"


#line 158 "/usr/grobe0ba/projects/ficl/./ficl.h"











#line 1 "/usr/grobe0ba/projects/ficl/./ficlplatform/ansi.h"
#line 1 "/amd64/include/ape/stdint.h"



typedef long long _intptr_t;
typedef unsigned long long _uintptr_t;

#line 1 "/sys/include/ape/stdint.h"




#line 8 "/sys/include/ape/stdint.h"





typedef char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef long long intmax_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef unsigned long long uintmax_t;

typedef int8_t	int_fast8_t;
typedef int16_t	int_fast16_t;
typedef int32_t	int_fast32_t;
typedef int64_t	int_fast64_t;
;
typedef int8_t	int_least8_t;
typedef int16_t	int_least16_t;
typedef int32_t	int_least32_t;
typedef int64_t	int_least64_t;

typedef uint8_t		uint_fast8_t;
typedef uint16_t	uint_fast16_t;
typedef uint32_t	uint_fast32_t;
typedef uint64_t	uint_fast64_t;

typedef uint8_t		uint_least8_t;
typedef uint16_t	uint_least16_t;
typedef uint32_t	uint_least32_t;
typedef uint64_t	uint_least64_t;

typedef _intptr_t intptr_t;
typedef _uintptr_t uintptr_t;


































































#line 115 "/sys/include/ape/stdint.h"




#line 8 "/amd64/include/ape/stdint.h"


#line 2 "/usr/grobe0ba/projects/ficl/./ficlplatform/ansi.h"

typedef int8_t ficlInteger8;
typedef uint8_t ficlUnsigned8;
typedef int16_t ficlInteger16;
typedef uint16_t ficlUnsigned16;
typedef int32_t ficlInteger32;
typedef uint32_t ficlUnsigned32;

typedef intptr_t ficlInteger;
typedef uintptr_t ficlUnsigned;
typedef float ficlFloat;







#line 170 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 183 "/usr/grobe0ba/projects/ficl/./ficl.h"


#line 188 "/usr/grobe0ba/projects/ficl/./ficl.h"






















#line 214 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 227 "/usr/grobe0ba/projects/ficl/./ficl.h"







#line 252 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 263 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 272 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 280 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 289 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 300 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 309 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 318 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 326 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 341 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 353 "/usr/grobe0ba/projects/ficl/./ficl.h"








#line 365 "/usr/grobe0ba/projects/ficl/./ficl.h"







#line 377 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 383 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 391 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 409 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 426 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 439 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 451 "/usr/grobe0ba/projects/ficl/./ficl.h"







#line 462 "/usr/grobe0ba/projects/ficl/./ficl.h"





















#line 490 "/usr/grobe0ba/projects/ficl/./ficl.h"








#line 502 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 511 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 519 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 528 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 538 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 548 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 556 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 563 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 571 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 579 "/usr/grobe0ba/projects/ficl/./ficl.h"










#line 591 "/usr/grobe0ba/projects/ficl/./ficl.h"
struct ficlWord;
typedef struct ficlWord ficlWord;
struct ficlVm;
typedef struct ficlVm ficlVm;
struct ficlDictionary;
typedef struct ficlDictionary ficlDictionary;
struct ficlSystem;
typedef struct ficlSystem ficlSystem;
struct ficlSystemInformation;
typedef struct ficlSystemInformation ficlSystemInformation;
struct ficlCallback;
typedef struct ficlCallback ficlCallback;
struct ficlCountedString;
typedef struct ficlCountedString ficlCountedString;
struct ficlString;
typedef struct ficlString ficlString;



#line 620 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern void  ficlCallbackDefaultTextOut(ficlCallback *callback, char *text);
 extern void *ficlMalloc (size_t size);
 extern void  ficlFree   (void *p);
 extern void *ficlRealloc(void *p, size_t size);







#line 633 "/usr/grobe0ba/projects/ficl/./ficl.h"







#line 644 "/usr/grobe0ba/projects/ficl/./ficl.h"


















#line 667 "/usr/grobe0ba/projects/ficl/./ficl.h"










#line 679 "/usr/grobe0ba/projects/ficl/./ficl.h"































typedef struct
{
    ficlUnsigned high;
    ficlUnsigned low;
} ficl2Unsigned;

typedef struct
{
    ficlInteger high;
    ficlInteger low;
} ficl2Integer;
















 extern int                             ficl2IntegerIsNegative(ficl2Integer x);
 extern ficl2Integer                    ficl2IntegerNegate(ficl2Integer x);

 extern ficl2Integer                    ficl2IntegerMultiply(ficlInteger x, ficlInteger y);
 extern ficl2Integer                    ficl2IntegerDecrement(ficl2Integer x);

 extern ficl2Unsigned                   ficl2UnsignedAdd(ficl2Unsigned x, ficl2Unsigned y);
 extern ficl2Unsigned                   ficl2UnsignedSubtract(ficl2Unsigned x, ficl2Unsigned y);
 extern ficl2Unsigned                   ficl2UnsignedMultiply(ficlUnsigned x, ficlUnsigned y);
 extern ficl2Unsigned                   ficl2UnsignedMultiplyAccumulate(ficl2Unsigned u, ficlUnsigned mul, ficlUnsigned add);
 extern ficl2Unsigned                   ficl2UnsignedArithmeticShiftLeft( ficl2Unsigned x );
 extern ficl2Unsigned                   ficl2UnsignedArithmeticShiftRight( ficl2Unsigned x );
 extern int                             ficl2UnsignedCompare(ficl2Unsigned x, ficl2Unsigned y);
 extern ficl2Unsigned                   ficl2UnsignedOr( ficl2Unsigned x, ficl2Unsigned y );



 extern ficl2Integer                    ficl2IntegerAbsoluteValue(ficl2Integer x);


#line 759 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef struct
{
    ficl2Unsigned quotient;
    ficlUnsigned remainder;
} ficl2UnsignedQR;

typedef struct
{
    ficl2Integer quotient;
    ficlInteger remainder;
} ficl2IntegerQR;






#line 782 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficl2IntegerQR   ficl2IntegerDivideFloored(ficl2Integer num, ficlInteger den);
 extern ficl2IntegerQR   ficl2IntegerDivideSymmetric(ficl2Integer num, ficlInteger den);

 extern ficl2UnsignedQR  ficl2UnsignedDivide(ficl2Unsigned q, ficlUnsigned y);







#line 802 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef union ficlCell
{
    ficlInteger i;
    ficlUnsigned u;

    ficlFloat f;

    void *p;
    void (*fn)(void);
} ficlCell;





#line 823 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 834 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 841 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 862 "/usr/grobe0ba/projects/ficl/./ficl.h"

struct ficlCountedString
{
    ficlUnsigned8 length;
    char text[1];
};







struct ficlString
{
    ficlUnsigned length;
    char *text;
};







#line 888 "/usr/grobe0ba/projects/ficl/./ficl.h"

#line 891 "/usr/grobe0ba/projects/ficl/./ficl.h"

#line 893 "/usr/grobe0ba/projects/ficl/./ficl.h"


#line 908 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef struct
{
    ficlInteger index;
    char *end;
    char *text;
} ficlTIB;



#line 925 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef struct ficlStack
{
    ficlUnsigned size;
    ficlCell *frame;
    ficlCell *top;
    ficlVm *vm;
    char *name;
    ficlCell *base;
} ficlStack;


#line 938 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficlStack    *ficlStackCreate       (ficlVm *vm, char *name, unsigned nCells);
 extern void          ficlStackDestroy      (ficlStack *stack);
 extern int           ficlStackDepth        (ficlStack *stack);
 extern void          ficlStackDrop         (ficlStack *stack, int n);
 extern ficlCell      ficlStackFetch        (ficlStack *stack, int n);
 extern ficlCell      ficlStackGetTop       (ficlStack *stack);
 extern void          ficlStackPick         (ficlStack *stack, int n);
 extern ficlCell      ficlStackPop          (ficlStack *stack);
 extern void          ficlStackPush         (ficlStack *stack, ficlCell c);
 extern void          ficlStackReset        (ficlStack *stack);
 extern void          ficlStackRoll         (ficlStack *stack, int n);
 extern void          ficlStackSetTop       (ficlStack *stack, ficlCell c);
 extern void          ficlStackStore        (ficlStack *stack, int n, ficlCell c);


 extern void          ficlStackLink         (ficlStack *stack, int nCells);
 extern void          ficlStackUnlink       (ficlStack *stack);


 extern void         *ficlStackPopPointer   (ficlStack *stack);
 extern ficlUnsigned  ficlStackPopUnsigned  (ficlStack *stack);
 extern ficlInteger   ficlStackPopInteger   (ficlStack *stack);
 extern void          ficlStackPushPointer  (ficlStack *stack, void *ptr);
 extern void          ficlStackPushUnsigned (ficlStack *stack, ficlUnsigned u);
 extern void          ficlStackPushInteger  (ficlStack *stack, ficlInteger i);


 extern ficlFloat     ficlStackPopFloat     (ficlStack *stack);
 extern void          ficlStackPushFloat    (ficlStack *stack, ficlFloat f);


 extern void          ficlStackPush2Integer (ficlStack *stack, ficl2Integer i64);
 extern ficl2Integer  ficlStackPop2Integer  (ficlStack *stack);
 extern void          ficlStackPush2Unsigned(ficlStack *stack, ficl2Unsigned u64);
 extern ficl2Unsigned ficlStackPop2Unsigned (ficlStack *stack);



 extern void        ficlStackCheck    (ficlStack *stack, int popCells, int pushCells);





typedef ficlInteger (*ficlStackWalkFunction)(void *constant, ficlCell *cell);
 extern void ficlStackWalk(ficlStack *stack, ficlStackWalkFunction callback, void *context, ficlInteger bottomToTop);
 extern void ficlStackDisplay(ficlStack *stack, ficlStackWalkFunction callback, void *context);


typedef ficlWord **ficlIp;
typedef void (*ficlPrimitive)(ficlVm *vm);
typedef void (*ficlOutputFunction)(ficlCallback *callback, char *text);



#line 1001 "/usr/grobe0ba/projects/ficl/./ficl.h"

struct ficlCallback
{
    void *context;
    ficlOutputFunction textOut;
    ficlOutputFunction errorOut;
    ficlSystem *system;
    ficlVm *vm;
};

 extern void ficlCallbackTextOut(ficlCallback *callback, char *text);
 extern void ficlCallbackErrorOut(ficlCallback *callback, char *text);


#line 1017 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef void (*ficlCompatibilityOutputFunction)(ficlVm *vm, char *text, int newline);
 extern void ficlCompatibilityTextOutCallback(ficlCallback *callback, char *text, ficlCompatibilityOutputFunction oldFunction);




#line 1028 "/usr/grobe0ba/projects/ficl/./ficl.h"
enum ficlInstruction
{


#line 1 "/usr/grobe0ba/projects/ficl/./ficltokens.h"
 ficlInstructionInvalid,
 ficlInstruction1,
 ficlInstruction2,
 ficlInstruction3,
 ficlInstruction4,
 ficlInstruction5,
 ficlInstruction6,
 ficlInstruction7,
 ficlInstruction8,
 ficlInstruction9,
 ficlInstruction10,
 ficlInstruction11,
 ficlInstruction12,
 ficlInstruction13,
 ficlInstruction14,
 ficlInstruction15,
 ficlInstruction16,
 ficlInstruction0,
 ficlInstructionNeg1,
 ficlInstructionNeg2,
 ficlInstructionNeg3,
 ficlInstructionNeg4,
 ficlInstructionNeg5,
 ficlInstructionNeg6,
 ficlInstructionNeg7,
 ficlInstructionNeg8,
 ficlInstructionNeg9,
 ficlInstructionNeg10,
 ficlInstructionNeg11,
 ficlInstructionNeg12,
 ficlInstructionNeg13,
 ficlInstructionNeg14,
 ficlInstructionNeg15,
 ficlInstructionNeg16,

 ficlInstructionF0,
 ficlInstructionF1,
 ficlInstructionFNeg1,

 ficlInstructionPlus,
 ficlInstructionMinus,
 ficlInstruction1Plus,
 ficlInstruction1Minus,
 ficlInstruction2Plus,
 ficlInstruction2Minus,
 ficlInstructionSemiParen,
 ficlInstructionExitParen,
 ficlInstructionDup,
 ficlInstructionSwap,
 ficlInstructionGreaterThan,
 ficlInstructionBranchParenWithCheck,
 ficlInstructionBranchParen,
 ficlInstructionBranch0ParenWithCheck,
 ficlInstructionBranch0Paren,
 ficlInstructionLiteralParen,
 ficlInstructionLoopParen,
 ficlInstructionOfParen,
 ficlInstructionPlusLoopParen,
 ficlInstructionFetch,
 ficlInstructionStore,
 ficlInstructionComma,
 ficlInstructionCComma,
 ficlInstructionCells,
 ficlInstructionCellPlus,
 ficlInstructionNegate,
 ficlInstructionStar,
 ficlInstructionSlash,
 ficlInstructionStarSlash,
 ficlInstructionSlashMod,
 ficlInstructionStarSlashMod,
 ficlInstruction2Star,
 ficlInstruction2Slash,

 ficlInstructionColonParen,
 ficlInstructionVariableParen,
 ficlInstructionConstantParen,
 ficlInstruction2ConstantParen,
 ficlInstruction2LiteralParen,
 ficlInstructionDoDoes,
 ficlInstructionDoParen,
 ficlInstructionDoesParen,
 ficlInstructionQDoParen,
 ficlInstructionCreateParen,
 ficlInstructionStringLiteralParen,
 ficlInstructionCStringLiteralParen,

 ficlInstructionPlusStore,
 ficlInstruction0Less,
 ficlInstruction0Greater,
 ficlInstruction0Equals,
 ficlInstruction2Store,
 ficlInstruction2Fetch,
 ficlInstructionOver,
 ficlInstructionRot,
 ficlInstruction2Drop,
 ficlInstruction2Dup,
 ficlInstruction2Over,
 ficlInstruction2Swap,
 ficlInstructionFromRStack,
 ficlInstructionFetchRStack,
 ficlInstruction2ToR,
 ficlInstruction2RFrom,
 ficlInstruction2RFetch,
 ficlInstructionLess,
 ficlInstructionEquals,
 ficlInstructionToRStack,
 ficlInstructionQuestionDup,
 ficlInstructionAnd,
 ficlInstructionCStore,
 ficlInstructionCFetch,
 ficlInstructionDrop,
 ficlInstructionPick,
 ficlInstructionRoll,
 ficlInstructionMinusRoll,
 ficlInstructionMinusRot,
 ficlInstructionFill,
 ficlInstructionSToD,
 ficlInstructionULess,

 ficlInstructionQuadFetch,
 ficlInstructionQuadStore,
 ficlInstructionWFetch,
 ficlInstructionWStore,

 ficlInstructionInvert,
 ficlInstructionLShift,
 ficlInstructionMax,
 ficlInstructionMin,
 ficlInstructionMove,
 ficlInstructionOr,
 ficlInstructionRShift,
 ficlInstructionXor,

 ficlInstructionI,
 ficlInstructionJ,
 ficlInstructionK,

 ficlInstructionCompare,
 ficlInstructionCompareInsensitive,
 ficlInstructionRandom,
 ficlInstructionSeedRandom,

 ficlInstructionLeave,
 ficlInstructionUnloop,


 ficlInstructionUserParen,



 ficlInstructionLinkParen,
 ficlInstructionUnlinkParen,

 ficlInstructionGetLocalParen,
 ficlInstructionGet2LocalParen,
 ficlInstructionToLocalParen,
 ficlInstructionTo2LocalParen,

 ficlInstructionGetLocal0,
 ficlInstructionGet2Local0,
 ficlInstructionToLocal0,
 ficlInstructionTo2Local0,

 ficlInstructionGetLocal1,
 ficlInstructionToLocal1,


 ficlInstructionGetFLocalParen,
 ficlInstructionGetF2LocalParen,
 ficlInstructionToFLocalParen,
 ficlInstructionToF2LocalParen,





 ficlInstructionFLiteralParen,
 ficlInstructionFConstantParen,
 ficlInstructionF2ConstantParen,

 ficlInstructionFPlus,
 ficlInstructionFMinus,
 ficlInstructionFStar,
 ficlInstructionFSlash,
 ficlInstructionFNegate,
 ficlInstructionFPlusI,
 ficlInstructionFMinusI,
 ficlInstructionFStarI,
 ficlInstructionFSlashI,
 ficlInstructionIMinusF,
 ficlInstructionISlashF,

 ficlInstructionFFrom,
 ficlInstructionToF,
 ficlInstructionIntToFloat,
 ficlInstructionFloatToInt,

 ficlInstructionFFetch,
 ficlInstructionFStore,
 ficlInstructionF2Fetch,
 ficlInstructionF2Store,
 ficlInstructionFPlusStore,

 ficlInstructionFDrop,
 ficlInstructionF2Drop,
 ficlInstructionFDup,
 ficlInstructionF2Dup,
 ficlInstructionFMinusRoll,
 ficlInstructionFMinusRot,
 ficlInstructionFQuestionDup,
 ficlInstructionFOver,
 ficlInstructionF2Over,
 ficlInstructionFPick,
 ficlInstructionFRoll,
 ficlInstructionFRot,
 ficlInstructionFSwap,
 ficlInstructionF2Swap,

 ficlInstructionF0Less,
 ficlInstructionFLess,
 ficlInstructionF0Equals,
 ficlInstructionFEquals,
 ficlInstructionF0Greater,
 ficlInstructionFGreater,



 ficlInstructionExitInnerLoop,
#line 1033 "/usr/grobe0ba/projects/ficl/./ficl.h"



    ficlInstructionLast,

    ficlInstructionFourByteTrick = 0x10000000
};
typedef ficlInteger ficlInstruction;



#line 1054 "/usr/grobe0ba/projects/ficl/./ficl.h"


struct ficlVm
{
    ficlCallback   callback;
    ficlVm        *link;
    jmp_buf       *exceptionHandler;
    short          restart;
    ficlIp         ip;
    ficlWord      *runningWord;
    ficlUnsigned   state;
    ficlUnsigned   base;
    ficlStack     *dataStack;
    ficlStack     *returnStack;

    ficlStack     *floatStack;

    ficlCell       sourceId;
    ficlTIB        tib;

    ficlCell       user[(16)];

    char           pad[(256)];



};



#line 1090 "/usr/grobe0ba/projects/ficl/./ficl.h"






#line 1098 "/usr/grobe0ba/projects/ficl/./ficl.h"











 extern void        ficlVmBranchRelative(ficlVm *vm, int offset);
 extern ficlVm *    ficlVmCreate       (ficlVm *vm, unsigned nPStack, unsigned nRStack);
 extern void        ficlVmDestroy       (ficlVm *vm);
 extern ficlDictionary *ficlVmGetDictionary(ficlVm *vm);
 extern char *      ficlVmGetString    (ficlVm *vm, ficlCountedString *spDest, char delimiter);
 extern ficlString  ficlVmGetWord      (ficlVm *vm);
 extern ficlString  ficlVmGetWord0     (ficlVm *vm);
 extern int         ficlVmGetWordToPad (ficlVm *vm);
 extern void        ficlVmInnerLoop    (ficlVm *vm, ficlWord *word);
 extern ficlString  ficlVmParseString  (ficlVm *vm, char delimiter);
 extern ficlString  ficlVmParseStringEx(ficlVm *vm, char delimiter, char fSkipLeading);
 extern ficlCell    ficlVmPop          (ficlVm *vm);
 extern void        ficlVmPush         (ficlVm *vm, ficlCell c);
 extern void        ficlVmPopIP        (ficlVm *vm);
 extern void        ficlVmPushIP       (ficlVm *vm, ficlIp newIP);
 extern void        ficlVmQuit         (ficlVm *vm);
 extern void        ficlVmReset        (ficlVm *vm);
 extern void        ficlVmSetTextOut   (ficlVm *vm, ficlOutputFunction textOut);
 extern void        ficlVmThrow        (ficlVm *vm, int except);
 extern void        ficlVmThrowError   (ficlVm *vm, char *fmt, ...);
 extern void        ficlVmThrowErrorVararg(ficlVm *vm, char *fmt, va_list list);
 extern void        ficlVmTextOut      (ficlVm *vm, char *text);
 extern void        ficlVmErrorOut     (ficlVm *vm, char *text);







 extern void ficlVmDisplayDataStack(ficlVm *vm);
 extern void ficlVmDisplayDataStackSimple(ficlVm *vm);
 extern void ficlVmDisplayReturnStack(ficlVm *vm);

 extern void ficlVmDisplayFloatStack(ficlVm *vm);



#line 1154 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern int        ficlVmEvaluate(ficlVm *vm, char *s);


#line 1182 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern int        ficlVmExecuteString(ficlVm *vm, ficlString s);
 extern int        ficlVmExecuteXT(ficlVm *vm, ficlWord *pWord);
 extern void        ficlVmExecuteInstruction(ficlVm *vm, ficlInstruction i);
 extern void        ficlVmExecuteWord(ficlVm *vm, ficlWord *pWord);

 extern void ficlVmDictionaryAllot(ficlVm *vm, ficlDictionary *dictionary, int n);
 extern void ficlVmDictionaryAllotCells(ficlVm *vm, ficlDictionary *dictionary, int cells);

 extern int  ficlVmParseWord(ficlVm *vm, ficlString s);




#line 1204 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern void        ficlVmPushTib  (ficlVm *vm, char *text, ficlInteger nChars, ficlTIB *pSaveTib);
 extern void        ficlVmPopTib   (ficlVm *vm, ficlTIB *pTib);








 extern void        ficlVmDictionaryCheck(ficlVm *vm, ficlDictionary *dictionary, int n);
 extern void        ficlVmDictionarySimpleCheck(ficlVm *vm, ficlDictionary *dictionary, int n);









 extern void ficlPrimitiveLiteralIm(ficlVm *vm);


#line 1238 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1248 "/usr/grobe0ba/projects/ficl/./ficl.h"
struct ficlWord
{
    struct ficlWord *link;
    ficlUnsigned16 hash;
    ficlUnsigned8 flags;
    ficlUnsigned8 length;
    char *name;
    ficlPrimitive code;
    ficlInstruction semiParen;
    ficlCell param[1];
};


#line 1263 "/usr/grobe0ba/projects/ficl/./ficl.h"


#line 1269 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1277 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1285 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1292 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1304 "/usr/grobe0ba/projects/ficl/./ficl.h"



#line 1311 "/usr/grobe0ba/projects/ficl/./ficl.h"





#line 1318 "/usr/grobe0ba/projects/ficl/./ficl.h"

#line 1321 "/usr/grobe0ba/projects/ficl/./ficl.h"

 extern int ficlWordIsImmediate(ficlWord *word);
 extern int ficlWordIsCompileOnly(ficlWord *word);





 extern void ficlCallbackAssert(ficlCallback *callback, int expression, char *expressionString, char *filename, int line);











#line 1344 "/usr/grobe0ba/projects/ficl/./ficl.h"

 extern int        ficlIsPowerOfTwo(ficlUnsigned u);

 extern char       *ficlLtoa(ficlInteger value, char *string, int radix );
 extern char       *ficlUltoa(ficlUnsigned value, char *string, int radix );
 extern char        ficlDigitToCharacter(int value);
 extern char       *ficlStringReverse( char *string );
 extern char       *ficlStringSkipSpace(char *s, char *end);
 extern char       *ficlStringCaseFold(char *s);
 extern int         ficlStrincmp(char *s1, char *s2, ficlUnsigned length);
 extern void       *ficlAlignPointer(void *ptr);



#line 1364 "/usr/grobe0ba/projects/ficl/./ficl.h"

typedef struct ficlHash
{
    struct ficlHash *link;
    char      *name;
    unsigned   size;
    ficlWord *table[1];
} ficlHash;

 extern void        ficlHashForget    (ficlHash *hash, void *where);
 extern ficlUnsigned16 ficlHashCode  (ficlString s);
 extern void        ficlHashInsertWord(ficlHash *hash, ficlWord *word);
 extern ficlWord *ficlHashLookup    (ficlHash *hash, ficlString name, ficlUnsigned16 hashCode);
 extern void        ficlHashReset     (ficlHash *hash);


#line 1410 "/usr/grobe0ba/projects/ficl/./ficl.h"
struct ficlDictionary
{
    ficlCell *here;
	void     *context;
    ficlWord *smudge;
    ficlHash *forthWordlist;
    ficlHash *compilationWordlist;
    ficlHash *wordlists[(16)];
    int        wordlistCount;
    unsigned   size;
	ficlSystem   *system;
    ficlCell       base[1];
};

 extern void        ficlDictionaryAbortDefinition(ficlDictionary *dictionary);
 extern void        ficlDictionaryAlign      (ficlDictionary *dictionary);
 extern void        ficlDictionaryAllot      (ficlDictionary *dictionary, int n);
 extern void        ficlDictionaryAllotCells (ficlDictionary *dictionary, int nCells);
 extern void        ficlDictionaryAppendCell (ficlDictionary *dictionary, ficlCell c);
 extern void        ficlDictionaryAppendCharacter(ficlDictionary *dictionary, char c);
 extern void        ficlDictionaryAppendUnsigned(ficlDictionary *dictionary, ficlUnsigned u);
 extern void       *ficlDictionaryAppendData(ficlDictionary *dictionary, void *data, ficlInteger length);
 extern char       *ficlDictionaryAppendString(ficlDictionary *dictionary, ficlString s);
 extern ficlWord   *ficlDictionaryAppendWord(ficlDictionary *dictionary,
                           ficlString name,
                           ficlPrimitive pCode,
                           ficlUnsigned8 flags);
 extern ficlWord   *ficlDictionaryAppendPrimitive(ficlDictionary *dictionary,
                           char *name,
                           ficlPrimitive pCode,
                           ficlUnsigned8 flags);
 extern ficlWord   *ficlDictionaryAppendInstruction(ficlDictionary *dictionary,
							char *name,
							ficlInstruction i,
							ficlUnsigned8 flags);

 extern ficlWord   *ficlDictionaryAppendConstantInstruction(ficlDictionary *dictionary, ficlString name, ficlInstruction instruction, ficlInteger value);
 extern ficlWord   *ficlDictionaryAppend2ConstantInstruction(ficlDictionary *dictionary, ficlString name, ficlInstruction instruction, ficl2Integer value);

 extern ficlWord   *ficlDictionaryAppendConstant(ficlDictionary *dictionary, char *name, ficlInteger value);
 extern ficlWord   *ficlDictionaryAppend2Constant(ficlDictionary *dictionary, char *name, ficl2Integer value);

#line 1453 "/usr/grobe0ba/projects/ficl/./ficl.h"

 extern ficlWord   *ficlDictionaryAppendFConstant(ficlDictionary *dictionary, char *name, float value);
 extern ficlWord   *ficlDictionaryAppendF2Constant(ficlDictionary *dictionary, char *name, double value);



 extern ficlWord   *ficlDictionarySetConstantInstruction(ficlDictionary *dictionary, ficlString name, ficlInstruction instruction, ficlInteger value);
 extern ficlWord   *ficlDictionarySet2ConstantInstruction(ficlDictionary *dictionary, ficlString name, ficlInstruction instruction, ficl2Integer value);

 extern ficlWord   *ficlDictionarySetConstant(ficlDictionary *dictionary, char *name, ficlInteger value);

#line 1465 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficlWord   *ficlDictionarySet2Constant(ficlDictionary *dictionary, char *name, ficl2Integer value);
 extern ficlWord   *ficlDictionarySetConstantString(ficlDictionary *dictionary, char *name, char *value);
 extern ficlWord   *ficlDictionarySetPrimitive(ficlDictionary *dictionary,
                          char *name,
                          ficlPrimitive code,
                          ficlUnsigned8 flags);
 extern ficlWord   *ficlDictionarySetInstruction(ficlDictionary *dictionary,
                          char *name,
                          ficlInstruction i,
                          ficlUnsigned8 flags);

 extern ficlWord   *ficlDictionarySetFConstant(ficlDictionary *dictionary, char *name, float value);
 extern ficlWord   *ficlDictionarySetF2Constant(ficlDictionary *dictionary, char *name, double value);


 extern int              ficlDictionaryCellsAvailable (ficlDictionary *dictionary);
 extern int              ficlDictionaryCellsUsed  (ficlDictionary *dictionary);
 extern ficlDictionary  *ficlDictionaryCreate(ficlSystem *system, unsigned nCELLS);
 extern ficlDictionary  *ficlDictionaryCreateHashed(ficlSystem *system, unsigned nCells, unsigned nHash);
 extern ficlHash        *ficlDictionaryCreateWordlist(ficlDictionary *dictionary, int nBuckets);
 extern void             ficlDictionaryDestroy     (ficlDictionary *dictionary);
 extern void             ficlDictionaryEmpty      (ficlDictionary *dictionary, unsigned nHash);
 extern int              ficlDictionaryIncludes   (ficlDictionary *dictionary, void *p);
 extern ficlWord        *ficlDictionaryLookup     (ficlDictionary *dictionary, ficlString name);
 extern void             ficlDictionaryResetSearchOrder(ficlDictionary *dictionary);
 extern void             ficlDictionarySetFlags   (ficlDictionary *dictionary, ficlUnsigned8 set);
 extern void             ficlDictionaryClearFlags(ficlDictionary *dictionary, ficlUnsigned8 clear);
 extern void             ficlDictionarySetImmediate(ficlDictionary *dictionary);
 extern void             ficlDictionaryUnsmudge   (ficlDictionary *dictionary);
 extern ficlCell        *ficlDictionaryWhere      (ficlDictionary *dictionary);

 extern int              ficlDictionaryIsAWord(ficlDictionary *dictionary, ficlWord *word);
 extern void             ficlDictionarySee(ficlDictionary *dictionary, ficlWord *word, ficlCallback *callback);
 extern ficlWord        *ficlDictionaryFindEnclosingWord(ficlDictionary *dictionary, ficlCell *cell);


#line 1515 "/usr/grobe0ba/projects/ficl/./ficl.h"









#line 1542 "/usr/grobe0ba/projects/ficl/./ficl.h"

typedef int (*ficlParseStep)(ficlVm *vm, ficlString s);


#line 1555 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef struct ficlBreakpoint
{
    void      *address;
    ficlWord *oldXT;
} ficlBreakpoint;



#line 1571 "/usr/grobe0ba/projects/ficl/./ficl.h"
struct ficlSystemInformation
{
    int size;
    void *context;
    int dictionarySize;
    int stackSize;
    ficlOutputFunction textOut;
    ficlOutputFunction errorOut;
    int environmentSize;
};


#line 1584 "/usr/grobe0ba/projects/ficl/./ficl.h"




struct ficlSystem
{
    ficlCallback callback;
    ficlSystem *link;
    ficlVm *vmList;
    ficlDictionary *dictionary;
    ficlDictionary *environment;

    ficlInstruction interpreterLoop[3];
    ficlWord *parseList[(8)];

    ficlWord *exitInnerWord;
    ficlWord *interpretWord;


    ficlDictionary *locals;
    ficlInteger   localsCount;
    ficlCell *localsFixup;


    ficlInteger stackSize;

    ficlBreakpoint breakpoint;



};






#line 1623 "/usr/grobe0ba/projects/ficl/./ficl.h"

#line 1636 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficlSystem *ficlSystemCreate(ficlSystemInformation *fsi);


#line 1644 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern void       ficlSystemDestroy(ficlSystem *system);


#line 1652 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficlVm   *ficlSystemCreateVm(ficlSystem *system);


#line 1661 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern void ficlSystemDestroyVm(ficlVm *vm);



#line 1669 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern ficlWord *ficlSystemLookup(ficlSystem *system, char *name);


#line 1676 "/usr/grobe0ba/projects/ficl/./ficl.h"
ficlDictionary *ficlSystemGetDictionary(ficlSystem *system);
ficlDictionary *ficlSystemGetEnvironment(ficlSystem *system);

ficlDictionary *ficlSystemGetLocals(ficlSystem *system);



#line 1687 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern void       ficlSystemCompileCore(ficlSystem *system);
 extern void       ficlSystemCompilePrefix(ficlSystem *system);
 extern void       ficlSystemCompileSearch(ficlSystem *system);
 extern void       ficlSystemCompileSoftCore(ficlSystem *system);
 extern void       ficlSystemCompileTools(ficlSystem *system);
 extern void       ficlSystemCompileFile(ficlSystem *system);

 extern void       ficlSystemCompileFloat(ficlSystem *system);
 extern int        ficlVmParseFloatNumber(ficlVm *vm, ficlString s);




 extern void       ficlSystemCompileExtras(ficlSystem *system);


 extern int        ficlVmParsePrefix(ficlVm *vm, ficlString s);


 extern ficlWord  *ficlSystemLookupLocal(ficlSystem *system, ficlString name);



#line 1712 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern int        ficlVmParseNumber(ficlVm *vm, ficlString s);
 extern void       ficlPrimitiveTick(ficlVm *vm);
 extern void       ficlPrimitiveParseStepParen(ficlVm *vm);

 extern void       ficlLocalParen(ficlVm *vm, int isDouble, int isFloat);




#line 1727 "/usr/grobe0ba/projects/ficl/./ficl.h"
 extern int  ficlSystemAddParseStep(ficlSystem *system, ficlWord *word);
 extern void ficlSystemAddPrimitiveParseStep(ficlSystem *system, char *name, ficlParseStep pStep);



#line 1734 "/usr/grobe0ba/projects/ficl/./ficl.h"


#line 1738 "/usr/grobe0ba/projects/ficl/./ficl.h"
typedef enum
{
    FICL_WORDKIND_BRANCH,
    FICL_WORDKIND_BRANCH0,
    FICL_WORDKIND_COLON,
    FICL_WORDKIND_CONSTANT,
    FICL_WORDKIND_2CONSTANT,
    FICL_WORDKIND_CREATE,
    FICL_WORDKIND_DO,
    FICL_WORDKIND_DOES,
    FICL_WORDKIND_LITERAL,
    FICL_WORDKIND_2LITERAL,

    FICL_WORDKIND_FLITERAL,

    FICL_WORDKIND_LOOP,
    FICL_WORDKIND_OF,
    FICL_WORDKIND_PLOOP,
    FICL_WORDKIND_PRIMITIVE,
    FICL_WORDKIND_QDO,
    FICL_WORDKIND_STRING_LITERAL,
    FICL_WORDKIND_CSTRING_LITERAL,

    FICL_WORDKIND_USER,

    FICL_WORDKIND_VARIABLE,
    FICL_WORDKIND_INSTRUCTION,
    FICL_WORDKIND_INSTRUCTION_WORD,
    FICL_WORDKIND_INSTRUCTION_WITH_ARGUMENT,
} ficlWordKind;

ficlWordKind   ficlWordClassify(ficlWord *word);





#line 1777 "/usr/grobe0ba/projects/ficl/./ficl.h"








typedef struct ficlFile
{
    FILE *f;
    char filename[256];
} ficlFile;



 extern int ficlFileTruncate(ficlFile *ff, ficlUnsigned size);


 extern int ficlFileStatus(char *filename, int *status);
 extern long ficlFileSize(ficlFile *ff);



#line 1804 "/usr/grobe0ba/projects/ficl/./ficl.h"


























#line 1833 "/usr/grobe0ba/projects/ficl/./ficl.h"





 extern int ficlBitGet(const unsigned char *bits, size_t index);
 extern void ficlBitSet(unsigned char *bits, size_t size_t, int value);
 extern void ficlBitGetString(unsigned char *destination, const unsigned char *source, int offset, int count, int destAlignment);

 extern ficlUnsigned16 ficlNetworkUnsigned16(ficlUnsigned16 number);
 extern ficlUnsigned32 ficlNetworkUnsigned32(ficlUnsigned32 number);


 extern int ficlLzCompress(const char *uncompressed, size_t uncompressedSize, unsigned char **compressed, size_t *compressedSize);
 extern int ficlLzUncompress(const unsigned char *compressed, char **uncompressed, size_t *uncompressedSize);













#line 44 "/usr/grobe0ba/projects/ficl/main.c"


int main(int argc, char **argv)
{
    int returnValue = 0;
    char buffer[256];
    ficlVm *vm;
	ficlSystem *system;

    system = ficlSystemCreate(((void *)0));
    ficlSystemCompileExtras(system);
    vm = ficlSystemCreateVm(system);

    returnValue = ficlVmEvaluate(vm, ".ver .( " "Jan 27 2021" " ) cr quit");


#line 62 "/usr/grobe0ba/projects/ficl/main.c"
    if (argc  > 1)
    {
        sprintf(buffer, ".( loading %s ) cr load %s\n cr", argv[1], argv[1]);
        returnValue = ficlVmEvaluate(vm, buffer);
    }

    while (returnValue !=(-259))
    {
        fputs("ok> ",(& _IO_stream[1]));
        if (fgets(buffer, sizeof(buffer),(& _IO_stream[0])) ==((void *)0)) break;
        returnValue = ficlVmEvaluate(vm, buffer);
    }

    ficlSystemDestroy(system);
    return 0;
}

