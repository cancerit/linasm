/*                                                                         Key.h
################################################################################
# Encoding: UTF-8                                                  Tab size: 4 #
#                                                                              #
#                    KEY STRUCTURE FOR ABSTRACT DATA TYPES                     #
#                                                                              #
# License: LGPLv3+                               Copyleft (Ɔ) 2016, Jack Black #
################################################################################
*/
# pragma	once
# include	<Types.h>

//****************************************************************************//
//      Abstact data type union                                               //
//****************************************************************************//
union adt_t
{
	// Unsigned integer keys
	uint8_t		uint8;
	uint16_t	uint16;
	uint32_t	uint32;
	uint64_t	uint64;

	// Signed integer keys
	sint8_t		sint8;
	sint16_t	sint16;
	sint32_t	sint32;
	sint64_t	sint64;

	// Floating-point types
	flt32_t		flt32;
	flt64_t		flt64;

	// Other types
	size_t		size;
	time_t		time;

	// Pointer type
	void		*ptr;
};

//****************************************************************************//
//      Pair structure                                                        //
//****************************************************************************//
struct pair_t
{
	union adt_t	key;	// Key field
	union adt_t	data;	// Data field
};

//****************************************************************************//
//      Pair copy function prototype                                          //
//****************************************************************************//
typedef	bool (*CopyFunc) (struct pair_t *target, const struct pair_t *source, void *ptr);

//****************************************************************************//
//      Pair delete function prototype                                        //
//****************************************************************************//
typedef	void (*DelFunc) (struct pair_t *data, void *ptr);

//****************************************************************************//
//      Heap index call back function prototype                               //
//****************************************************************************//
typedef	void (*HeapIndex) (const struct pair_t *data, size_t index);

//****************************************************************************//
//      Hash function prototype                                               //
//****************************************************************************//
typedef	size_t (*HashFunc) (union adt_t key);

//****************************************************************************//
//      Key compare function prototype                                        //
//****************************************************************************//
typedef sint64_t (*KeyCmp) (union adt_t key1, union adt_t key2);

//****************************************************************************//
//      Key compare functions                                                 //
//****************************************************************************//

// Unsigned integer keys
sint64_t CmpUint8 (union adt_t key1, union adt_t key2);
sint64_t CmpUint16 (union adt_t key1, union adt_t key2);
sint64_t CmpUint32 (union adt_t key1, union adt_t key2);
sint64_t CmpUint64 (union adt_t key1, union adt_t key2);

// Signed integer keys
sint64_t CmpSint8 (union adt_t key1, union adt_t key2);
sint64_t CmpSint16 (union adt_t key1, union adt_t key2);
sint64_t CmpSint32 (union adt_t key1, union adt_t key2);
sint64_t CmpSint64 (union adt_t key1, union adt_t key2);

// Floating-point types
sint64_t CmpFlt32 (union adt_t key1, union adt_t key2);
sint64_t CmpFlt64 (union adt_t key1, union adt_t key2);

// Other types
sint64_t CmpSize (union adt_t key1, union adt_t key2);
sint64_t CmpTime (union adt_t key1, union adt_t key2);
/*
################################################################################
#                                 END OF FILE                                  #
################################################################################
*/
