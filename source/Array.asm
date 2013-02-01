;                                                                      Array.asm
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                 COMMON ROUTINES THAT ARE USEFUL FOR ARRAYS                  #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2012, Jack Black #
;###############################################################################
format	ELF64
include	'Macro.inc'

;###############################################################################
;#      Export section                                                         #
;###############################################################################

;******************************************************************************;
;       Order reversing                                                        ;
;******************************************************************************;

; Unsigned integer types
public	Reverse8				as	'Array_Reverse_uint8'
public	Reverse16				as	'Array_Reverse_uint16'
public	Reverse32				as	'Array_Reverse_uint32'
public	Reverse64				as	'Array_Reverse_uint64'
public	Reverse8				as	'_ZN5Array7ReverseEPhm'
public	Reverse16				as	'_ZN5Array7ReverseEPtm'
public	Reverse32				as	'_ZN5Array7ReverseEPjm'
public	Reverse64				as	'_ZN5Array7ReverseEPym'

; Signed integer types
public	Reverse8				as	'Array_Reverse_sint8'
public	Reverse16				as	'Array_Reverse_sint16'
public	Reverse32				as	'Array_Reverse_sint32'
public	Reverse64				as	'Array_Reverse_sint64'
public	Reverse8				as	'_ZN5Array7ReverseEPam'
public	Reverse16				as	'_ZN5Array7ReverseEPsm'
public	Reverse32				as	'_ZN5Array7ReverseEPim'
public	Reverse64				as	'_ZN5Array7ReverseEPxm'

; Floating-point types
public	Reverse32				as	'Array_Reverse_flt32'
public	Reverse64				as	'Array_Reverse_flt64'
public	Reverse32				as	'_ZN5Array7ReverseEPfm'
public	Reverse64				as	'_ZN5Array7ReverseEPdm'

; Other types
public	Reverse64				as	'Array_Reverse_size'
public	Reverse64				as	'_ZN5Array7ReverseEPmm'

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;

; Unsigned integer types
public	Init_int8				as	'Array_Init_uint8'
public	Init_int16				as	'Array_Init_uint16'
public	Init_int32				as	'Array_Init_uint32'
public	Init_int64				as	'Array_Init_uint64'
public	Init_int8				as	'_ZN5Array4InitEPhmh'
public	Init_int16				as	'_ZN5Array4InitEPtmt'
public	Init_int32				as	'_ZN5Array4InitEPjmj'
public	Init_int64				as	'_ZN5Array4InitEPymy'

; Signed integer types
public	Init_int8				as	'Array_Init_sint8'
public	Init_int16				as	'Array_Init_sint16'
public	Init_int32				as	'Array_Init_sint32'
public	Init_int64				as	'Array_Init_sint64'
public	Init_int8				as	'_ZN5Array4InitEPama'
public	Init_int16				as	'_ZN5Array4InitEPsms'
public	Init_int32				as	'_ZN5Array4InitEPimi'
public	Init_int64				as	'_ZN5Array4InitEPxmx'

; Floating-point types
public	Init_int32				as	'Array_Init_flt32'
public	Init_int64				as	'Array_Init_flt64'
public	Init_flt32				as	'_ZN5Array4InitEPfmf'
public	Init_flt64				as	'_ZN5Array4InitEPdmd'

; Other types
public	Init_int64				as	'Array_Init_size'
public	Init_int64				as	'_ZN5Array4InitEPmmm'

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;

; Unsigned integer types
public	CopyFwd8				as	'Array_Copy_uint8'
public	CopyFwd16				as	'Array_Copy_uint16'
public	CopyFwd32				as	'Array_Copy_uint32'
public	CopyFwd64				as	'Array_Copy_uint64'
public	CopyFwd8				as	'_ZN5Array4CopyEPhPKhm'
public	CopyFwd16				as	'_ZN5Array4CopyEPtPKtm'
public	CopyFwd32				as	'_ZN5Array4CopyEPjPKjm'
public	CopyFwd64				as	'_ZN5Array4CopyEPyPKym'

; Signed integer types
public	CopyFwd8				as	'Array_Copy_sint8'
public	CopyFwd16				as	'Array_Copy_sint16'
public	CopyFwd32				as	'Array_Copy_sint32'
public	CopyFwd64				as	'Array_Copy_sint64'
public	CopyFwd8				as	'_ZN5Array4CopyEPaPKam'
public	CopyFwd16				as	'_ZN5Array4CopyEPsPKsm'
public	CopyFwd32				as	'_ZN5Array4CopyEPiPKim'
public	CopyFwd64				as	'_ZN5Array4CopyEPxPKxm'

; Floating-point types
public	CopyFwd32				as	'Array_Copy_flt32'
public	CopyFwd64				as	'Array_Copy_flt64'
public	CopyFwd32				as	'_ZN5Array4CopyEPfPKfm'
public	CopyFwd64				as	'_ZN5Array4CopyEPdPKdm'

; Other types
public	CopyFwd64				as	'Array_Copy_size'
public	CopyFwd8				as	'Array_Copy'
public	CopyFwd64				as	'_ZN5Array4CopyEPmPKmm'
public	CopyFwd8				as	'_ZN5Array4CopyEPvPKvm'

;******************************************************************************;
;       Moving                                                                 ;
;******************************************************************************;

; Unsigned integer types
public	Move8					as	'Array_Move_uint8'
public	Move16					as	'Array_Move_uint16'
public	Move32					as	'Array_Move_uint32'
public	Move64					as	'Array_Move_uint64'
public	Move8					as	'_ZN5Array4MoveEPhPKhm'
public	Move16					as	'_ZN5Array4MoveEPtPKtm'
public	Move32					as	'_ZN5Array4MoveEPjPKjm'
public	Move64					as	'_ZN5Array4MoveEPyPKym'

; Signed integer types
public	Move8					as	'Array_Move_sint8'
public	Move16					as	'Array_Move_sint16'
public	Move32					as	'Array_Move_sint32'
public	Move64					as	'Array_Move_sint64'
public	Move8					as	'_ZN5Array4MoveEPaPKam'
public	Move16					as	'_ZN5Array4MoveEPsPKsm'
public	Move32					as	'_ZN5Array4MoveEPiPKim'
public	Move64					as	'_ZN5Array4MoveEPxPKxm'

; Floating-point types
public	Move32					as	'Array_Move_flt32'
public	Move64					as	'Array_Move_flt64'
public	Move32					as	'_ZN5Array4MoveEPfPKfm'
public	Move64					as	'_ZN5Array4MoveEPdPKdm'

; Other types
public	Move64					as	'Array_Move_size'
public	Move8					as	'Array_Move'
public	Move64					as	'_ZN5Array4MoveEPmPKmm'
public	Move8					as	'_ZN5Array4MoveEPvPKvm'

;******************************************************************************;
;       Pattern cloning                                                        ;
;******************************************************************************;

; Unsigned integer types
public	Clone8					as	'Array_Clone_uint8'
public	Clone16					as	'Array_Clone_uint16'
public	Clone32					as	'Array_Clone_uint32'
public	Clone64					as	'Array_Clone_uint64'
public	Clone8					as	'_ZN5Array5CloneEPhmm'
public	Clone16					as	'_ZN5Array5CloneEPtmm'
public	Clone32					as	'_ZN5Array5CloneEPjmm'
public	Clone64					as	'_ZN5Array5CloneEPymm'

; Signed integer types
public	Clone8					as	'Array_Clone_sint8'
public	Clone16					as	'Array_Clone_sint16'
public	Clone32					as	'Array_Clone_sint32'
public	Clone64					as	'Array_Clone_sint64'
public	Clone8					as	'_ZN5Array5CloneEPamm'
public	Clone16					as	'_ZN5Array5CloneEPsmm'
public	Clone32					as	'_ZN5Array5CloneEPimm'
public	Clone64					as	'_ZN5Array5CloneEPxmm'

; Floating-point types
public	Clone32					as	'Array_Clone_flt32'
public	Clone64					as	'Array_Clone_flt64'
public	Clone32					as	'_ZN5Array5CloneEPfmm'
public	Clone64					as	'_ZN5Array5CloneEPdmm'

; Other types
public	Clone64					as	'Array_Clone_size'
public	Clone8					as	'Array_Clone'
public	Clone64					as	'_ZN5Array5CloneEPmmm'
public	Clone8					as	'_ZN5Array5CloneEPvmm'

;******************************************************************************;
;       Data conversion                                                        ;
;******************************************************************************;

; Conversion between floating-point types
public	ConvertFlt32ToFlt64		as	'Array_ConvertFlt32ToFlt64'
public	ConvertFlt64ToFlt32		as	'Array_ConvertFlt64ToFlt32'
public	ConvertFlt32ToFlt64		as	'_ZN5Array7ConvertEPdPKfm'
public	ConvertFlt64ToFlt32		as	'_ZN5Array7ConvertEPfPKdm'

; Conversion from signed integer types to floating-point types
public	ConvertSint32ToFlt32	as	'Array_ConvertSint32ToFlt32'
public	ConvertSint32ToFlt64	as	'Array_ConvertSint32ToFlt64'
public	ConvertSint64ToFlt32	as	'Array_ConvertSint64ToFlt32'
public	ConvertSint64ToFlt64	as	'Array_ConvertSint64ToFlt64'
public	ConvertSint32ToFlt32	as	'_ZN5Array7ConvertEPfPKim'
public	ConvertSint32ToFlt64	as	'_ZN5Array7ConvertEPdPKim'
public	ConvertSint64ToFlt32	as	'_ZN5Array7ConvertEPfPKxm'
public	ConvertSint64ToFlt64	as	'_ZN5Array7ConvertEPdPKxm'

; Conversion from floating-point types to signed integer types
public	ConvertFlt32ToSint32	as	'Array_ConvertFlt32ToSint32'
public	ConvertFlt32ToSint64	as	'Array_ConvertFlt32ToSint64'
public	ConvertFlt64ToSint32	as	'Array_ConvertFlt64ToSint32'
public	ConvertFlt64ToSint64	as	'Array_ConvertFlt64ToSint64'
public	ConvertFlt32ToSint32	as	'_ZN5Array7ConvertEPiPKfm'
public	ConvertFlt32ToSint64	as	'_ZN5Array7ConvertEPxPKfm'
public	ConvertFlt64ToSint32	as	'_ZN5Array7ConvertEPiPKdm'
public	ConvertFlt64ToSint64	as	'_ZN5Array7ConvertEPxPKdm'

; Truncating from floating-point types to signed integer types
public	TruncateFlt32ToSint32	as	'Array_TruncateFlt32ToSint32'
public	TruncateFlt32ToSint64	as	'Array_TruncateFlt32ToSint64'
public	TruncateFlt64ToSint32	as	'Array_TruncateFlt64ToSint32'
public	TruncateFlt64ToSint64	as	'Array_TruncateFlt64ToSint64'
public	TruncateFlt32ToSint32	as	'_ZN5Array8TruncateEPiPKfm'
public	TruncateFlt32ToSint64	as	'_ZN5Array8TruncateEPxPKfm'
public	TruncateFlt64ToSint32	as	'_ZN5Array8TruncateEPiPKdm'
public	TruncateFlt64ToSint64	as	'_ZN5Array8TruncateEPxPKdm'

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;

; Unsigned integer types
public	Not8					as	'Array_Not_uint8'
public	Not16					as	'Array_Not_uint16'
public	Not32					as	'Array_Not_uint32'
public	Not64					as	'Array_Not_uint64'
public	Not8					as	'_ZN5Array3NotEPhm'
public	Not16					as	'_ZN5Array3NotEPtm'
public	Not32					as	'_ZN5Array3NotEPjm'
public	Not64					as	'_ZN5Array3NotEPym'

; Signed integer types
public	Not8					as	'Array_Not_sint8'
public	Not16					as	'Array_Not_sint16'
public	Not32					as	'Array_Not_sint32'
public	Not64					as	'Array_Not_sint64'
public	Not8					as	'_ZN5Array3NotEPam'
public	Not16					as	'_ZN5Array3NotEPsm'
public	Not32					as	'_ZN5Array3NotEPim'
public	Not64					as	'_ZN5Array3NotEPxm'

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndS8					as	'Array_AndScalar_uint8'
public	AndS16					as	'Array_AndScalar_uint16'
public	AndS32					as	'Array_AndScalar_uint32'
public	AndS64					as	'Array_AndScalar_uint64'
public	AndS8					as	'_ZN5Array3AndEPhmh'
public	AndS16					as	'_ZN5Array3AndEPtmt'
public	AndS32					as	'_ZN5Array3AndEPjmj'
public	AndS64					as	'_ZN5Array3AndEPymy'

; Signed integer types
public	AndS8					as	'Array_AndScalar_sint8'
public	AndS16					as	'Array_AndScalar_sint16'
public	AndS32					as	'Array_AndScalar_sint32'
public	AndS64					as	'Array_AndScalar_sint64'
public	AndS8					as	'_ZN5Array3AndEPama'
public	AndS16					as	'_ZN5Array3AndEPsms'
public	AndS32					as	'_ZN5Array3AndEPimi'
public	AndS64					as	'_ZN5Array3AndEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise AND                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	AndV8					as	'Array_AndVector_uint8'
public	AndV16					as	'Array_AndVector_uint16'
public	AndV32					as	'Array_AndVector_uint32'
public	AndV64					as	'Array_AndVector_uint64'
public	AndV8					as	'_ZN5Array3AndEPhPKhm'
public	AndV16					as	'_ZN5Array3AndEPtPKtm'
public	AndV32					as	'_ZN5Array3AndEPjPKjm'
public	AndV64					as	'_ZN5Array3AndEPyPKym'

; Signed integer types
public	AndV8					as	'Array_AndVector_sint8'
public	AndV16					as	'Array_AndVector_sint16'
public	AndV32					as	'Array_AndVector_sint32'
public	AndV64					as	'Array_AndVector_sint64'
public	AndV8					as	'_ZN5Array3AndEPaPKam'
public	AndV16					as	'_ZN5Array3AndEPsPKsm'
public	AndV32					as	'_ZN5Array3AndEPiPKim'
public	AndV64					as	'_ZN5Array3AndEPxPKxm'

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrS8					as	'Array_OrScalar_uint8'
public	OrS16					as	'Array_OrScalar_uint16'
public	OrS32					as	'Array_OrScalar_uint32'
public	OrS64					as	'Array_OrScalar_uint64'
public	OrS8					as	'_ZN5Array2OrEPhmh'
public	OrS16					as	'_ZN5Array2OrEPtmt'
public	OrS32					as	'_ZN5Array2OrEPjmj'
public	OrS64					as	'_ZN5Array2OrEPymy'

; Signed integer types
public	OrS8					as	'Array_OrScalar_sint8'
public	OrS16					as	'Array_OrScalar_sint16'
public	OrS32					as	'Array_OrScalar_sint32'
public	OrS64					as	'Array_OrScalar_sint64'
public	OrS8					as	'_ZN5Array2OrEPama'
public	OrS16					as	'_ZN5Array2OrEPsms'
public	OrS32					as	'_ZN5Array2OrEPimi'
public	OrS64					as	'_ZN5Array2OrEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise OR                                                      ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	OrV8					as	'Array_OrVector_uint8'
public	OrV16					as	'Array_OrVector_uint16'
public	OrV32					as	'Array_OrVector_uint32'
public	OrV64					as	'Array_OrVector_uint64'
public	OrV8					as	'_ZN5Array2OrEPhPKhm'
public	OrV16					as	'_ZN5Array2OrEPtPKtm'
public	OrV32					as	'_ZN5Array2OrEPjPKjm'
public	OrV64					as	'_ZN5Array2OrEPyPKym'

; Signed integer types
public	OrV8					as	'Array_OrVector_sint8'
public	OrV16					as	'Array_OrVector_sint16'
public	OrV32					as	'Array_OrVector_sint32'
public	OrV64					as	'Array_OrVector_sint64'
public	OrV8					as	'_ZN5Array2OrEPaPKam'
public	OrV16					as	'_ZN5Array2OrEPsPKsm'
public	OrV32					as	'_ZN5Array2OrEPiPKim'
public	OrV64					as	'_ZN5Array2OrEPxPKxm'

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Scalar bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorS8					as	'Array_XorScalar_uint8'
public	XorS16					as	'Array_XorScalar_uint16'
public	XorS32					as	'Array_XorScalar_uint32'
public	XorS64					as	'Array_XorScalar_uint64'
public	XorS8					as	'_ZN5Array3XorEPhmh'
public	XorS16					as	'_ZN5Array3XorEPtmt'
public	XorS32					as	'_ZN5Array3XorEPjmj'
public	XorS64					as	'_ZN5Array3XorEPymy'

; Signed integer types
public	XorS8					as	'Array_XorScalar_sint8'
public	XorS16					as	'Array_XorScalar_sint16'
public	XorS32					as	'Array_XorScalar_sint32'
public	XorS64					as	'Array_XorScalar_sint64'
public	XorS8					as	'_ZN5Array3XorEPama'
public	XorS16					as	'_ZN5Array3XorEPsms'
public	XorS32					as	'_ZN5Array3XorEPimi'
public	XorS64					as	'_ZN5Array3XorEPxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Vector bitwise XOR                                                     ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	XorV8					as	'Array_XorVector_uint8'
public	XorV16					as	'Array_XorVector_uint16'
public	XorV32					as	'Array_XorVector_uint32'
public	XorV64					as	'Array_XorVector_uint64'
public	XorV8					as	'_ZN5Array3XorEPhPKhm'
public	XorV16					as	'_ZN5Array3XorEPtPKtm'
public	XorV32					as	'_ZN5Array3XorEPjPKjm'
public	XorV64					as	'_ZN5Array3XorEPyPKym'

; Signed integer types
public	XorV8					as	'Array_XorVector_sint8'
public	XorV16					as	'Array_XorVector_sint16'
public	XorV32					as	'Array_XorVector_sint32'
public	XorV64					as	'Array_XorVector_sint64'
public	XorV8					as	'_ZN5Array3XorEPaPKam'
public	XorV16					as	'_ZN5Array3XorEPsPKsm'
public	XorV32					as	'_ZN5Array3XorEPiPKim'
public	XorV64					as	'_ZN5Array3XorEPxPKxm'

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unitary operations                                                     ;
;==============================================================================;

; Negative value
public	Neg_flt32				as	'Array_Neg_flt32'
public	Neg_flt64				as	'Array_Neg_flt64'
public	Neg_flt32				as	'_ZN5Array3NegEPfm'
public	Neg_flt64				as	'_ZN5Array3NegEPdm'

; Absolute value
public	Abs_flt32				as	'Array_Abs_flt32'
public	Abs_flt64				as	'Array_Abs_flt64'
public	Abs_flt32				as	'_ZN5Array3AbsEPfm'
public	Abs_flt64				as	'_ZN5Array3AbsEPdm'

; Negative absolute value
public	NegAbs_flt32			as	'Array_NegAbs_flt32'
public	NegAbs_flt64			as	'Array_NegAbs_flt64'
public	NegAbs_flt32			as	'_ZN5Array6NegAbsEPfm'
public	NegAbs_flt64			as	'_ZN5Array6NegAbsEPdm'

; Square
public	Sqr_flt32				as	'Array_Sqr_flt32'
public	Sqr_flt64				as	'Array_Sqr_flt64'
public	Sqr_flt32				as	'_ZN5Array3SqrEPfm'
public	Sqr_flt64				as	'_ZN5Array3SqrEPdm'

; Square root
public	Sqrt_flt32				as	'Array_Sqrt_flt32'
public	Sqrt_flt64				as	'Array_Sqrt_flt64'
public	Sqrt_flt32				as	'_ZN5Array4SqrtEPfm'
public	Sqrt_flt64				as	'_ZN5Array4SqrtEPdm'

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar addition                                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	AddS8					as	'Array_AddScalar_uint8'
public	AddS16					as	'Array_AddScalar_uint16'
public	AddS32					as	'Array_AddScalar_uint32'
public	AddS64					as	'Array_AddScalar_uint64'
public	AddS8					as	'_ZN5Array3AddEPhmh'
public	AddS16					as	'_ZN5Array3AddEPtmt'
public	AddS32					as	'_ZN5Array3AddEPjmj'
public	AddS64					as	'_ZN5Array3AddEPymy'

; Signed integer types
public	AddS8					as	'Array_AddScalar_sint8'
public	AddS16					as	'Array_AddScalar_sint16'
public	AddS32					as	'Array_AddScalar_sint32'
public	AddS64					as	'Array_AddScalar_sint64'
public	AddS8					as	'_ZN5Array3AddEPama'
public	AddS16					as	'_ZN5Array3AddEPsms'
public	AddS32					as	'_ZN5Array3AddEPimi'
public	AddS64					as	'_ZN5Array3AddEPxmx'

; Floating-point types
public	AddS_flt32				as	'Array_AddScalar_flt32'
public	AddS_flt64				as	'Array_AddScalar_flt64'
public	AddS_flt32				as	'_ZN5Array3AddEPfmf'
public	AddS_flt64				as	'_ZN5Array3AddEPdmd'

; Other types
public	AddS64					as	'Array_AddScalar_size'
public	AddS64					as	'_ZN5Array3AddEPmmm'

;------------------------------------------------------------------------------;
;       Vector addition                                                        ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	AddV8					as	'Array_AddVector_uint8'
public	AddV16					as	'Array_AddVector_uint16'
public	AddV32					as	'Array_AddVector_uint32'
public	AddV64					as	'Array_AddVector_uint64'
public	AddV8					as	'_ZN5Array3AddEPhPKhm'
public	AddV16					as	'_ZN5Array3AddEPtPKtm'
public	AddV32					as	'_ZN5Array3AddEPjPKjm'
public	AddV64					as	'_ZN5Array3AddEPyPKym'

; Signed integer types
public	AddV8					as	'Array_AddVector_sint8'
public	AddV16					as	'Array_AddVector_sint16'
public	AddV32					as	'Array_AddVector_sint32'
public	AddV64					as	'Array_AddVector_sint64'
public	AddV8					as	'_ZN5Array3AddEPaPKam'
public	AddV16					as	'_ZN5Array3AddEPsPKsm'
public	AddV32					as	'_ZN5Array3AddEPiPKim'
public	AddV64					as	'_ZN5Array3AddEPxPKxm'

; Floating-point types
public	AddV_flt32				as	'Array_AddVector_flt32'
public	AddV_flt64				as	'Array_AddVector_flt64'
public	AddV_flt32				as	'_ZN5Array3AddEPfPKfm'
public	AddV_flt64				as	'_ZN5Array3AddEPdPKdm'

; Other types
public	AddV64					as	'Array_AddVector_size'
public	AddV64					as	'_ZN5Array3AddEPmPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar subtraction                                                     ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	SubS8					as	'Array_SubScalar_uint8'
public	SubS16					as	'Array_SubScalar_uint16'
public	SubS32					as	'Array_SubScalar_uint32'
public	SubS64					as	'Array_SubScalar_uint64'
public	SubS8					as	'_ZN5Array3SubEPhmh'
public	SubS16					as	'_ZN5Array3SubEPtmt'
public	SubS32					as	'_ZN5Array3SubEPjmj'
public	SubS64					as	'_ZN5Array3SubEPymy'

; Signed integer types
public	SubS8					as	'Array_SubScalar_sint8'
public	SubS16					as	'Array_SubScalar_sint16'
public	SubS32					as	'Array_SubScalar_sint32'
public	SubS64					as	'Array_SubScalar_sint64'
public	SubS8					as	'_ZN5Array3SubEPama'
public	SubS16					as	'_ZN5Array3SubEPsms'
public	SubS32					as	'_ZN5Array3SubEPimi'
public	SubS64					as	'_ZN5Array3SubEPxmx'

; Floating-point types
public	SubS_flt32				as	'Array_SubScalar_flt32'
public	SubS_flt64				as	'Array_SubScalar_flt64'
public	SubS_flt32				as	'_ZN5Array3SubEPfmf'
public	SubS_flt64				as	'_ZN5Array3SubEPdmd'

; Other types
public	SubS64					as	'Array_SubScalar_size'
public	SubS64					as	'_ZN5Array3SubEPmmm'

;------------------------------------------------------------------------------;
;       Vector subtraction                                                     ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	SubV8					as	'Array_SubVector_uint8'
public	SubV16					as	'Array_SubVector_uint16'
public	SubV32					as	'Array_SubVector_uint32'
public	SubV64					as	'Array_SubVector_uint64'
public	SubV8					as	'_ZN5Array3SubEPhPKhm'
public	SubV16					as	'_ZN5Array3SubEPtPKtm'
public	SubV32					as	'_ZN5Array3SubEPjPKjm'
public	SubV64					as	'_ZN5Array3SubEPyPKym'

; Signed integer types
public	SubV8					as	'Array_SubVector_sint8'
public	SubV16					as	'Array_SubVector_sint16'
public	SubV32					as	'Array_SubVector_sint32'
public	SubV64					as	'Array_SubVector_sint64'
public	SubV8					as	'_ZN5Array3SubEPaPKam'
public	SubV16					as	'_ZN5Array3SubEPsPKsm'
public	SubV32					as	'_ZN5Array3SubEPiPKim'
public	SubV64					as	'_ZN5Array3SubEPxPKxm'

; Floating-point types
public	SubV_flt32				as	'Array_SubVector_flt32'
public	SubV_flt64				as	'Array_SubVector_flt64'
public	SubV_flt32				as	'_ZN5Array3SubEPfPKfm'
public	SubV_flt64				as	'_ZN5Array3SubEPdPKdm'

; Other types
public	SubV64					as	'Array_SubVector_size'
public	SubV64					as	'_ZN5Array3SubEPmPKmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar multiplication                                                  ;
;------------------------------------------------------------------------------;
public	MulS_flt32				as	'Array_MulScalar_flt32'
public	MulS_flt64				as	'Array_MulScalar_flt64'
public	MulS_flt32				as	'_ZN5Array3MulEPfmf'
public	MulS_flt64				as	'_ZN5Array3MulEPdmd'

;------------------------------------------------------------------------------;
;       Vector multiplication                                                  ;
;------------------------------------------------------------------------------;
public	MulV_flt32				as	'Array_MulVector_flt32'
public	MulV_flt64				as	'Array_MulVector_flt64'
public	MulV_flt32				as	'_ZN5Array3MulEPfPKfm'
public	MulV_flt64				as	'_ZN5Array3MulEPdPKdm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar division                                                        ;
;------------------------------------------------------------------------------;
public	DivS_flt32				as	'Array_DivScalar_flt32'
public	DivS_flt64				as	'Array_DivScalar_flt64'
public	DivS_flt32				as	'_ZN5Array3DivEPfmf'
public	DivS_flt64				as	'_ZN5Array3DivEPdmd'

;------------------------------------------------------------------------------;
;       Vector division                                                        ;
;------------------------------------------------------------------------------;
public	DivV_flt32				as	'Array_DivVector_flt32'
public	DivV_flt64				as	'Array_DivVector_flt64'
public	DivV_flt32				as	'_ZN5Array3DivEPfPKfm'
public	DivV_flt64				as	'_ZN5Array3DivEPdPKdm'

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;

; Sum of elements
public	Sum_flt32				as	'Array_Sum_flt32'
public	Sum_flt64				as	'Array_Sum_flt64'
public	Sum_flt32				as	'_ZN5Array3SumEPKfm'
public	Sum_flt64				as	'_ZN5Array3SumEPKdm'

; Sum of squares
public	SumSqr_flt32			as	'Array_SumSqr_flt32'
public	SumSqr_flt64			as	'Array_SumSqr_flt64'
public	SumSqr_flt32			as	'_ZN5Array6SumSqrEPKfm'
public	SumSqr_flt64			as	'_ZN5Array6SumSqrEPKdm'

; Sum of absolute values
public	SumAbs_flt32			as	'Array_SumAbs_flt32'
public	SumAbs_flt64			as	'Array_SumAbs_flt64'
public	SumAbs_flt32			as	'_ZN5Array6SumAbsEPKfm'
public	SumAbs_flt64			as	'_ZN5Array6SumAbsEPKdm'

; Sum of multiplied elements
public	SumMul_flt32			as	'Array_SumMul_flt32'
public	SumMul_flt64			as	'Array_SumMul_flt64'
public	SumMul_flt32			as	'_ZN5Array6SumMulEPKfS1_m'
public	SumMul_flt64			as	'_ZN5Array6SumMulEPKdS1_m'

;******************************************************************************;
;       Minimum and maximum values                                             ;
;******************************************************************************;

; Minimum value
public	Min_flt32				as	'Array_Min_flt32'
public	Min_flt64				as	'Array_Min_flt64'
public	Min_flt32				as	'_ZN5Array3MinEPKfm'
public	Min_flt64				as	'_ZN5Array3MinEPKdm'

; Minimum absolute value
public	MinAbs_flt32			as	'Array_MinAbs_flt32'
public	MinAbs_flt64			as	'Array_MinAbs_flt64'
public	MinAbs_flt32			as	'_ZN5Array6MinAbsEPKfm'
public	MinAbs_flt64			as	'_ZN5Array6MinAbsEPKdm'

; Maximum value
public	Max_flt32				as	'Array_Max_flt32'
public	Max_flt64				as	'Array_Max_flt64'
public	Max_flt32				as	'_ZN5Array3MaxEPKfm'
public	Max_flt64				as	'_ZN5Array3MaxEPKdm'

; Maximum absolute value
public	MaxAbs_flt32			as	'Array_MaxAbs_flt32'
public	MaxAbs_flt64			as	'Array_MaxAbs_flt64'
public	MaxAbs_flt32			as	'_ZN5Array6MaxAbsEPKfm'
public	MaxAbs_flt64			as	'_ZN5Array6MaxAbsEPKdm'

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;

; Round down (floor)
public	RoundDown_flt32			as	'Array_RoundDown_flt32'
public	RoundDown_flt64			as	'Array_RoundDown_flt64'
public	RoundDown_flt32			as	'_ZN5Array9RoundDownEPfm'
public	RoundDown_flt64			as	'_ZN5Array9RoundDownEPdm'

; Round up (ceil)
public	RoundUp_flt32			as	'Array_RoundUp_flt32'
public	RoundUp_flt64			as	'Array_RoundUp_flt64'
public	RoundUp_flt32			as	'_ZN5Array7RoundUpEPfm'
public	RoundUp_flt64			as	'_ZN5Array7RoundUpEPdm'

; Round to nearest even integer
public	RoundInt_flt32			as	'Array_RoundInt_flt32'
public	RoundInt_flt64			as	'Array_RoundInt_flt64'
public	RoundInt_flt32			as	'_ZN5Array8RoundIntEPfm'
public	RoundInt_flt64			as	'_ZN5Array8RoundIntEPdm'

; Round to nearest integer, away from zero
public	RoundRound_flt32		as	'Array_Round_flt32'
public	RoundRound_flt64		as	'Array_Round_flt64'
public	RoundRound_flt32		as	'_ZN5Array5RoundEPfm'
public	RoundRound_flt64		as	'_ZN5Array5RoundEPdm'

; Round to nearest integer, toward zero (truncation)
public	RoundTrunc_flt32		as	'Array_Truncate_flt32'
public	RoundTrunc_flt64		as	'Array_Truncate_flt64'
public	RoundTrunc_flt32		as	'_ZN5Array8TruncateEPfm'
public	RoundTrunc_flt64		as	'_ZN5Array8TruncateEPdm'

; Fractional part
public	RoundFrac_flt32			as	'Array_Frac_flt32'
public	RoundFrac_flt64			as	'Array_Frac_flt64'
public	RoundFrac_flt32			as	'_ZN5Array4FracEPfm'
public	RoundFrac_flt64			as	'_ZN5Array4FracEPdm'

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;

; Unsigned integer types
public	Replace8				as	'Array_Replace_uint8'
public	Replace16				as	'Array_Replace_uint16'
public	Replace32				as	'Array_Replace_uint32'
public	Replace64				as	'Array_Replace_uint64'
public	Replace8				as	'_ZN5Array7ReplaceEPhmhh'
public	Replace16				as	'_ZN5Array7ReplaceEPtmtt'
public	Replace32				as	'_ZN5Array7ReplaceEPjmjj'
public	Replace64				as	'_ZN5Array7ReplaceEPymyy'

; Signed integer types
public	Replace8				as	'Array_Replace_sint8'
public	Replace16				as	'Array_Replace_sint16'
public	Replace32				as	'Array_Replace_sint32'
public	Replace64				as	'Array_Replace_sint64'
public	Replace8				as	'_ZN5Array7ReplaceEPamaa'
public	Replace16				as	'_ZN5Array7ReplaceEPsmss'
public	Replace32				as	'_ZN5Array7ReplaceEPimii'
public	Replace64				as	'_ZN5Array7ReplaceEPxmxx'

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindFwd8				as	'Array_FindFwd_uint8'
public	FindFwd16				as	'Array_FindFwd_uint16'
public	FindFwd32				as	'Array_FindFwd_uint32'
public	FindFwd64				as	'Array_FindFwd_uint64'
public	FindFwd8				as	'_ZN5Array7FindFwdEPKhmh'
public	FindFwd16				as	'_ZN5Array7FindFwdEPKtmt'
public	FindFwd32				as	'_ZN5Array7FindFwdEPKjmj'
public	FindFwd64				as	'_ZN5Array7FindFwdEPKymy'

; Signed integer types
public	FindFwd8				as	'Array_FindFwd_sint8'
public	FindFwd16				as	'Array_FindFwd_sint16'
public	FindFwd32				as	'Array_FindFwd_sint32'
public	FindFwd64				as	'Array_FindFwd_sint64'
public	FindFwd8				as	'_ZN5Array7FindFwdEPKama'
public	FindFwd16				as	'_ZN5Array7FindFwdEPKsms'
public	FindFwd32				as	'_ZN5Array7FindFwdEPKimi'
public	FindFwd64				as	'_ZN5Array7FindFwdEPKxmx'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindBwd8				as	'Array_FindBwd_uint8'
public	FindBwd16				as	'Array_FindBwd_uint16'
public	FindBwd32				as	'Array_FindBwd_uint32'
public	FindBwd64				as	'Array_FindBwd_uint64'
public	FindBwd8				as	'_ZN5Array7FindBwdEPKhmh'
public	FindBwd16				as	'_ZN5Array7FindBwdEPKtmt'
public	FindBwd32				as	'_ZN5Array7FindBwdEPKjmj'
public	FindBwd64				as	'_ZN5Array7FindBwdEPKymy'

; Signed integer types
public	FindBwd8				as	'Array_FindBwd_sint8'
public	FindBwd16				as	'Array_FindBwd_sint16'
public	FindBwd32				as	'Array_FindBwd_sint32'
public	FindBwd64				as	'Array_FindBwd_sint64'
public	FindBwd8				as	'_ZN5Array7FindBwdEPKama'
public	FindBwd16				as	'_ZN5Array7FindBwdEPKsms'
public	FindBwd32				as	'_ZN5Array7FindBwdEPKimi'
public	FindBwd64				as	'_ZN5Array7FindBwdEPKxmx'

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindAsc_uint8			as	'Array_FindAsc_uint8'
public	FindAsc_uint16			as	'Array_FindAsc_uint16'
public	FindAsc_uint32			as	'Array_FindAsc_uint32'
public	FindAsc_uint64			as	'Array_FindAsc_uint64'
public	FindAsc_uint8			as	'_ZN5Array7FindAscEPKhmh'
public	FindAsc_uint16			as	'_ZN5Array7FindAscEPKtmt'
public	FindAsc_uint32			as	'_ZN5Array7FindAscEPKjmj'
public	FindAsc_uint64			as	'_ZN5Array7FindAscEPKymy'

; Signed integer types
public	FindAsc_sint8			as	'Array_FindAsc_sint8'
public	FindAsc_sint16			as	'Array_FindAsc_sint16'
public	FindAsc_sint32			as	'Array_FindAsc_sint32'
public	FindAsc_sint64			as	'Array_FindAsc_sint64'
public	FindAsc_sint8			as	'_ZN5Array7FindAscEPKama'
public	FindAsc_sint16			as	'_ZN5Array7FindAscEPKsms'
public	FindAsc_sint32			as	'_ZN5Array7FindAscEPKimi'
public	FindAsc_sint64			as	'_ZN5Array7FindAscEPKxmx'

; Other types
public	FindAsc_uint64			as	'Array_FindAsc_size'
public	FindAsc_uint64			as	'_ZN5Array7FindAscEPKmmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	FindDsc_uint8			as	'Array_FindDsc_uint8'
public	FindDsc_uint16			as	'Array_FindDsc_uint16'
public	FindDsc_uint32			as	'Array_FindDsc_uint32'
public	FindDsc_uint64			as	'Array_FindDsc_uint64'
public	FindDsc_uint8			as	'_ZN5Array7FindDscEPKhmh'
public	FindDsc_uint16			as	'_ZN5Array7FindDscEPKtmt'
public	FindDsc_uint32			as	'_ZN5Array7FindDscEPKjmj'
public	FindDsc_uint64			as	'_ZN5Array7FindDscEPKymy'

; Signed integer types
public	FindDsc_sint8			as	'Array_FindDsc_sint8'
public	FindDsc_sint16			as	'Array_FindDsc_sint16'
public	FindDsc_sint32			as	'Array_FindDsc_sint32'
public	FindDsc_sint64			as	'Array_FindDsc_sint64'
public	FindDsc_sint8			as	'_ZN5Array7FindDscEPKama'
public	FindDsc_sint16			as	'_ZN5Array7FindDscEPKsms'
public	FindDsc_sint32			as	'_ZN5Array7FindDscEPKimi'
public	FindDsc_sint64			as	'_ZN5Array7FindDscEPKxmx'

; Other types
public	FindDsc_uint64			as	'Array_FindDsc_size'
public	FindDsc_uint64			as	'_ZN5Array7FindDscEPKmmm'

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Mapping functions                                                      ;
;==============================================================================;
public	Map_flt32				as	'_Map_flt32'
public	Map_flt64				as	'_Map_flt64'

;==============================================================================;
;       Quick sort                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortAsc_uint8		as	'Array_QuickSortAsc_uint8'
public	QuickSortAsc_uint16		as	'Array_QuickSortAsc_uint16'
public	QuickSortAsc_uint32		as	'Array_QuickSortAsc_uint32'
public	QuickSortAsc_uint64		as	'Array_QuickSortAsc_uint64'
public	QuickSortAsc_uint8		as	'_ZN5Array12QuickSortAscEPhm'
public	QuickSortAsc_uint16		as	'_ZN5Array12QuickSortAscEPtm'
public	QuickSortAsc_uint32		as	'_ZN5Array12QuickSortAscEPjm'
public	QuickSortAsc_uint64		as	'_ZN5Array12QuickSortAscEPym'

; Signed integer types
public	QuickSortAsc_sint8		as	'Array_QuickSortAsc_sint8'
public	QuickSortAsc_sint16		as	'Array_QuickSortAsc_sint16'
public	QuickSortAsc_sint32		as	'Array_QuickSortAsc_sint32'
public	QuickSortAsc_sint64		as	'Array_QuickSortAsc_sint64'
public	QuickSortAsc_sint8		as	'_ZN5Array12QuickSortAscEPam'
public	QuickSortAsc_sint16		as	'_ZN5Array12QuickSortAscEPsm'
public	QuickSortAsc_sint32		as	'_ZN5Array12QuickSortAscEPim'
public	QuickSortAsc_sint64		as	'_ZN5Array12QuickSortAscEPxm'

; Floating-point types
public	QuickSortAsc_flt32		as	'Array_QuickSortAsc_flt32'
public	QuickSortAsc_flt64		as	'Array_QuickSortAsc_flt64'
public	QuickSortAsc_flt32		as	'_ZN5Array12QuickSortAscEPfm'
public	QuickSortAsc_flt64		as	'_ZN5Array12QuickSortAscEPdm'

; Other types
public	QuickSortAsc_uint64		as	'Array_QuickSortAsc_size'
public	QuickSortAsc_uint64		as	'_ZN5Array12QuickSortAscEPmm'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortDsc_uint8		as	'Array_QuickSortDsc_uint8'
public	QuickSortDsc_uint16		as	'Array_QuickSortDsc_uint16'
public	QuickSortDsc_uint32		as	'Array_QuickSortDsc_uint32'
public	QuickSortDsc_uint64		as	'Array_QuickSortDsc_uint64'
public	QuickSortDsc_uint8		as	'_ZN5Array12QuickSortDscEPhm'
public	QuickSortDsc_uint16		as	'_ZN5Array12QuickSortDscEPtm'
public	QuickSortDsc_uint32		as	'_ZN5Array12QuickSortDscEPjm'
public	QuickSortDsc_uint64		as	'_ZN5Array12QuickSortDscEPym'

; Signed integer types
public	QuickSortDsc_sint8		as	'Array_QuickSortDsc_sint8'
public	QuickSortDsc_sint16		as	'Array_QuickSortDsc_sint16'
public	QuickSortDsc_sint32		as	'Array_QuickSortDsc_sint32'
public	QuickSortDsc_sint64		as	'Array_QuickSortDsc_sint64'
public	QuickSortDsc_sint8		as	'_ZN5Array12QuickSortDscEPam'
public	QuickSortDsc_sint16		as	'_ZN5Array12QuickSortDscEPsm'
public	QuickSortDsc_sint32		as	'_ZN5Array12QuickSortDscEPim'
public	QuickSortDsc_sint64		as	'_ZN5Array12QuickSortDscEPxm'

; Floating-point types
public	QuickSortDsc_flt32		as	'Array_QuickSortDsc_flt32'
public	QuickSortDsc_flt64		as	'Array_QuickSortDsc_flt64'
public	QuickSortDsc_flt32		as	'_ZN5Array12QuickSortDscEPfm'
public	QuickSortDsc_flt64		as	'_ZN5Array12QuickSortDscEPdm'

; Other types
public	QuickSortDsc_uint64		as	'Array_QuickSortDsc_size'
public	QuickSortDsc_uint64		as	'_ZN5Array12QuickSortDscEPmm'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortKeyAsc_uint8	as	'Array_QuickSortKeyAsc_uint8'
public	QuickSortKeyAsc_uint16	as	'Array_QuickSortKeyAsc_uint16'
public	QuickSortKeyAsc_uint32	as	'Array_QuickSortKeyAsc_uint32'
public	QuickSortKeyAsc_uint64	as	'Array_QuickSortKeyAsc_uint64'
public	QuickSortKeyAsc_uint8	as	'_ZN5Array12QuickSortAscEPhPPKvm'
public	QuickSortKeyAsc_uint16	as	'_ZN5Array12QuickSortAscEPtPPKvm'
public	QuickSortKeyAsc_uint32	as	'_ZN5Array12QuickSortAscEPjPPKvm'
public	QuickSortKeyAsc_uint64	as	'_ZN5Array12QuickSortAscEPyPPKvm'

; Signed integer types
public	QuickSortKeyAsc_sint8	as	'Array_QuickSortKeyAsc_sint8'
public	QuickSortKeyAsc_sint16	as	'Array_QuickSortKeyAsc_sint16'
public	QuickSortKeyAsc_sint32	as	'Array_QuickSortKeyAsc_sint32'
public	QuickSortKeyAsc_sint64	as	'Array_QuickSortKeyAsc_sint64'
public	QuickSortKeyAsc_sint8	as	'_ZN5Array12QuickSortAscEPaPPKvm'
public	QuickSortKeyAsc_sint16	as	'_ZN5Array12QuickSortAscEPsPPKvm'
public	QuickSortKeyAsc_sint32	as	'_ZN5Array12QuickSortAscEPiPPKvm'
public	QuickSortKeyAsc_sint64	as	'_ZN5Array12QuickSortAscEPxPPKvvm'

; Floating-point types
public	QuickSortKeyAsc_flt32	as	'Array_QuickSortKeyAsc_flt32'
public	QuickSortKeyAsc_flt64	as	'Array_QuickSortKeyAsc_flt64'
public	QuickSortKeyAsc_flt32	as	'_ZN5Array12QuickSortAscEPfPPKvm'
public	QuickSortKeyAsc_flt64	as	'_ZN5Array12QuickSortAscEPdPPKvm'

; Other types
public	QuickSortKeyAsc_uint64	as	'Array_QuickSortKeyAsc_size'
public	QuickSortKeyAsc_uint64	as	'_ZN5Array12QuickSortAscEPmPPKvm'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	QuickSortKeyDsc_uint8	as	'Array_QuickSortKeyDsc_uint8'
public	QuickSortKeyDsc_uint16	as	'Array_QuickSortKeyDsc_uint16'
public	QuickSortKeyDsc_uint32	as	'Array_QuickSortKeyDsc_uint32'
public	QuickSortKeyDsc_uint64	as	'Array_QuickSortKeyDsc_uint64'
public	QuickSortKeyDsc_uint8	as	'_ZN5Array12QuickSortDscEPhPPKvm'
public	QuickSortKeyDsc_uint16	as	'_ZN5Array12QuickSortDscEPtPPKvm'
public	QuickSortKeyDsc_uint32	as	'_ZN5Array12QuickSortDscEPjPPKvm'
public	QuickSortKeyDsc_uint64	as	'_ZN5Array12QuickSortDscEPyPPKvm'

; Signed integer types
public	QuickSortKeyDsc_sint8	as	'Array_QuickSortKeyDsc_sint8'
public	QuickSortKeyDsc_sint16	as	'Array_QuickSortKeyDsc_sint16'
public	QuickSortKeyDsc_sint32	as	'Array_QuickSortKeyDsc_sint32'
public	QuickSortKeyDsc_sint64	as	'Array_QuickSortKeyDsc_sint64'
public	QuickSortKeyDsc_sint8	as	'_ZN5Array12QuickSortDscEPaPPKvm'
public	QuickSortKeyDsc_sint16	as	'_ZN5Array12QuickSortDscEPsPPKvm'
public	QuickSortKeyDsc_sint32	as	'_ZN5Array12QuickSortDscEPiPPKvm'
public	QuickSortKeyDsc_sint64	as	'_ZN5Array12QuickSortDscEPxPPKvm'

; Floating-point types
public	QuickSortKeyDsc_flt32	as	'Array_QuickSortKeyDsc_flt32'
public	QuickSortKeyDsc_flt64	as	'Array_QuickSortKeyDsc_flt64'
public	QuickSortKeyDsc_flt32	as	'_ZN5Array12QuickSortDscEPfPPKvm'
public	QuickSortKeyDsc_flt64	as	'_ZN5Array12QuickSortDscEPdPPKvm'

; Other types
public	QuickSortKeyDsc_uint64	as	'Array_QuickSortKeyDsc_size'
public	QuickSortKeyDsc_uint64	as	'_ZN5Array12QuickSortDscEPmPPKvm'

;==============================================================================;
;       Radix sort                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortAsc_uint8		as	'Array_RadixSortAsc_uint8'
public	RadixSortAsc_uint16		as	'Array_RadixSortAsc_uint16'
public	RadixSortAsc_uint32		as	'Array_RadixSortAsc_uint32'
public	RadixSortAsc_uint64		as	'Array_RadixSortAsc_uint64'
public	RadixSortAsc_uint8		as	'_ZN5Array12RadixSortAscEPhS0_m'
public	RadixSortAsc_uint16		as	'_ZN5Array12RadixSortAscEPtS0_m'
public	RadixSortAsc_uint32		as	'_ZN5Array12RadixSortAscEPjS0_m'
public	RadixSortAsc_uint64		as	'_ZN5Array12RadixSortAscEPyS0_m'

; Signed integer types
public	RadixSortAsc_sint8		as	'Array_RadixSortAsc_sint8'
public	RadixSortAsc_sint16		as	'Array_RadixSortAsc_sint16'
public	RadixSortAsc_sint32		as	'Array_RadixSortAsc_sint32'
public	RadixSortAsc_sint64		as	'Array_RadixSortAsc_sint64'
public	RadixSortAsc_sint8		as	'_ZN5Array12RadixSortAscEPaS0_m'
public	RadixSortAsc_sint16		as	'_ZN5Array12RadixSortAscEPsS0_m'
public	RadixSortAsc_sint32		as	'_ZN5Array12RadixSortAscEPiS0_m'
public	RadixSortAsc_sint64		as	'_ZN5Array12RadixSortAscEPxS0_m'

; Floating-point types
public	RadixSortAsc_flt32		as	'Array_RadixSortAsc_flt32'
public	RadixSortAsc_flt64		as	'Array_RadixSortAsc_flt64'
public	RadixSortAsc_flt32		as	'_ZN5Array12RadixSortAscEPfS0_m'
public	RadixSortAsc_flt64		as	'_ZN5Array12RadixSortAscEPdS0_m'

; Other types
public	RadixSortAsc_uint64		as	'Array_RadixSortAsc_size'
public	RadixSortAsc_uint64		as	'_ZN5Array12RadixSortAscEPmS0_m'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortDsc_uint8		as	'Array_RadixSortDsc_uint8'
public	RadixSortDsc_uint16		as	'Array_RadixSortDsc_uint16'
public	RadixSortDsc_uint32		as	'Array_RadixSortDsc_uint32'
public	RadixSortDsc_uint64		as	'Array_RadixSortDsc_uint64'
public	RadixSortDsc_uint8		as	'_ZN5Array12RadixSortDscEPhS0_m'
public	RadixSortDsc_uint16		as	'_ZN5Array12RadixSortDscEPtS0_m'
public	RadixSortDsc_uint32		as	'_ZN5Array12RadixSortDscEPjS0_m'
public	RadixSortDsc_uint64		as	'_ZN5Array12RadixSortDscEPyS0_m'

; Signed integer types
public	RadixSortDsc_sint8		as	'Array_RadixSortDsc_sint8'
public	RadixSortDsc_sint16		as	'Array_RadixSortDsc_sint16'
public	RadixSortDsc_sint32		as	'Array_RadixSortDsc_sint32'
public	RadixSortDsc_sint64		as	'Array_RadixSortDsc_sint64'
public	RadixSortDsc_sint8		as	'_ZN5Array12RadixSortDscEPaS0_m'
public	RadixSortDsc_sint16		as	'_ZN5Array12RadixSortDscEPsS0_m'
public	RadixSortDsc_sint32		as	'_ZN5Array12RadixSortDscEPiS0_m'
public	RadixSortDsc_sint64		as	'_ZN5Array12RadixSortDscEPxS0_m'

; Floating-point types
public	RadixSortDsc_flt32		as	'Array_RadixSortDsc_flt32'
public	RadixSortDsc_flt64		as	'Array_RadixSortDsc_flt64'
public	RadixSortDsc_flt32		as	'_ZN5Array12RadixSortDscEPfS0_m'
public	RadixSortDsc_flt64		as	'_ZN5Array12RadixSortDscEPdS0_m'

; Other types
public	RadixSortDsc_uint64		as	'Array_RadixSortDsc_size'
public	RadixSortDsc_uint64		as	'_ZN5Array12RadixSortDscEPmS0_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortKeyAsc_uint8	as	'Array_RadixSortKeyAsc_uint8'
public	RadixSortKeyAsc_uint16	as	'Array_RadixSortKeyAsc_uint16'
public	RadixSortKeyAsc_uint32	as	'Array_RadixSortKeyAsc_uint32'
public	RadixSortKeyAsc_uint64	as	'Array_RadixSortKeyAsc_uint64'
public	RadixSortKeyAsc_uint8	as	'_ZN5Array12RadixSortAscEPhS0_PPKvS3_m'
public	RadixSortKeyAsc_uint16	as	'_ZN5Array12RadixSortAscEPtS0_PPKvS3_m'
public	RadixSortKeyAsc_uint32	as	'_ZN5Array12RadixSortAscEPjS0_PPKvS3_m'
public	RadixSortKeyAsc_uint64	as	'_ZN5Array12RadixSortAscEPyS0_PPKvS3_m'

; Signed integer types
public	RadixSortKeyAsc_sint8	as	'Array_RadixSortKeyAsc_sint8'
public	RadixSortKeyAsc_sint16	as	'Array_RadixSortKeyAsc_sint16'
public	RadixSortKeyAsc_sint32	as	'Array_RadixSortKeyAsc_sint32'
public	RadixSortKeyAsc_sint64	as	'Array_RadixSortKeyAsc_sint64'
public	RadixSortKeyAsc_sint8	as	'_ZN5Array12RadixSortAscEPaS0_PPKvS3_m'
public	RadixSortKeyAsc_sint16	as	'_ZN5Array12RadixSortAscEPsS0_PPKvS3_m'
public	RadixSortKeyAsc_sint32	as	'_ZN5Array12RadixSortAscEPiS0_PPKvS3_m'
public	RadixSortKeyAsc_sint64	as	'_ZN5Array12RadixSortAscEPxS0_PPKvS3_m'

; Floating-point types
public	RadixSortKeyAsc_flt32	as	'Array_RadixSortKeyAsc_flt32'
public	RadixSortKeyAsc_flt64	as	'Array_RadixSortKeyAsc_flt64'
public	RadixSortKeyAsc_flt32	as	'_ZN5Array12RadixSortAscEPfS0_PPKvS3_m'
public	RadixSortKeyAsc_flt64	as	'_ZN5Array12RadixSortAscEPdS0_PPKvS3_m'

; Other types
public	RadixSortKeyAsc_uint64	as	'Array_RadixSortKeyAsc_size'
public	RadixSortKeyAsc_uint64	as	'_ZN5Array12RadixSortAscEPmS0_PPKvS3_m'

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
public	RadixSortKeyDsc_uint8	as	'Array_RadixSortKeyDsc_uint8'
public	RadixSortKeyDsc_uint16	as	'Array_RadixSortKeyDsc_uint16'
public	RadixSortKeyDsc_uint32	as	'Array_RadixSortKeyDsc_uint32'
public	RadixSortKeyDsc_uint64	as	'Array_RadixSortKeyDsc_uint64'
public	RadixSortKeyDsc_uint8	as	'_ZN5Array12RadixSortDscEPhS0_PPKvS3_m'
public	RadixSortKeyDsc_uint16	as	'_ZN5Array12RadixSortDscEPtS0_PPKvS3_m'
public	RadixSortKeyDsc_uint32	as	'_ZN5Array12RadixSortDscEPjS0_PPKvS3_m'
public	RadixSortKeyDsc_uint64	as	'_ZN5Array12RadixSortDscEPyS0_PPKvS3_m'

; Signed integer types
public	RadixSortKeyDsc_sint8	as	'Array_RadixSortKeyDsc_sint8'
public	RadixSortKeyDsc_sint16	as	'Array_RadixSortKeyDsc_sint16'
public	RadixSortKeyDsc_sint32	as	'Array_RadixSortKeyDsc_sint32'
public	RadixSortKeyDsc_sint64	as	'Array_RadixSortKeyDsc_sint64'
public	RadixSortKeyDsc_sint8	as	'_ZN5Array12RadixSortDscEPaS0_PPKvS3_m'
public	RadixSortKeyDsc_sint16	as	'_ZN5Array12RadixSortDscEPsS0_PPKvS3_m'
public	RadixSortKeyDsc_sint32	as	'_ZN5Array12RadixSortDscEPiS0_PPKvS3_m'
public	RadixSortKeyDsc_sint64	as	'_ZN5Array12RadixSortDscEPxS0_PPKvS3_m'

; Floating-point types
public	RadixSortKeyDsc_flt32	as	'Array_RadixSortKeyDsc_flt32'
public	RadixSortKeyDsc_flt64	as	'Array_RadixSortKeyDsc_flt64'
public	RadixSortKeyDsc_flt32	as	'_ZN5Array12RadixSortDscEPfS0_PPKvS3_m'
public	RadixSortKeyDsc_flt64	as	'_ZN5Array12RadixSortDscEPdS0_PPKvS3_m'

; Other types
public	RadixSortKeyDsc_uint64	as	'Array_RadixSortKeyDsc_size'
public	RadixSortKeyDsc_uint64	as	'_ZN5Array12RadixSortDscEPmS0_PPKvS3_m'

;******************************************************************************;
;       Merging of sorted arrays                                               ;
;******************************************************************************;

;==============================================================================;
;       Array merging                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeAsc_uint8			as	'Array_MergeAsc_uint8'
public	MergeAsc_uint16			as	'Array_MergeAsc_uint16'
public	MergeAsc_uint32			as	'Array_MergeAsc_uint32'
public	MergeAsc_uint64			as	'Array_MergeAsc_uint64'
public	MergeAsc_uint8			as	'_ZN5Array8MergeAscEPhPKhmS2_m'
public	MergeAsc_uint16			as	'_ZN5Array8MergeAscEPtPKtmS2_m'
public	MergeAsc_uint32			as	'_ZN5Array8MergeAscEPjPKjmS2_m'
public	MergeAsc_uint64			as	'_ZN5Array8MergeAscEPyPKymS2_m'

; Signed integer types
public	MergeAsc_sint8			as	'Array_MergeAsc_sint8'
public	MergeAsc_sint16			as	'Array_MergeAsc_sint16'
public	MergeAsc_sint32			as	'Array_MergeAsc_sint32'
public	MergeAsc_sint64			as	'Array_MergeAsc_sint64'
public	MergeAsc_sint8			as	'_ZN5Array8MergeAscEPaPKamS2_m'
public	MergeAsc_sint16			as	'_ZN5Array8MergeAscEPsPKsmS2_m'
public	MergeAsc_sint32			as	'_ZN5Array8MergeAscEPiPKimS2_m'
public	MergeAsc_sint64			as	'_ZN5Array8MergeAscEPxPKxmS2_m'

; Other types
public	MergeAsc_uint64			as	'Array_MergeAsc_size'
public	MergeAsc_uint64			as	'_ZN5Array8MergeAscEPmPKmmS2_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeDsc_uint8			as	'Array_MergeDsc_uint8'
public	MergeDsc_uint16			as	'Array_MergeDsc_uint16'
public	MergeDsc_uint32			as	'Array_MergeDsc_uint32'
public	MergeDsc_uint64			as	'Array_MergeDsc_uint64'
public	MergeDsc_uint8			as	'_ZN5Array8MergeDscEPhPKhmS2_m'
public	MergeDsc_uint16			as	'_ZN5Array8MergeDscEPtPKtmS2_m'
public	MergeDsc_uint32			as	'_ZN5Array8MergeDscEPjPKjmS2_m'
public	MergeDsc_uint64			as	'_ZN5Array8MergeDscEPyPKymS2_m'

; Signed integer types
public	MergeDsc_sint8			as	'Array_MergeDsc_sint8'
public	MergeDsc_sint16			as	'Array_MergeDsc_sint16'
public	MergeDsc_sint32			as	'Array_MergeDsc_sint32'
public	MergeDsc_sint64			as	'Array_MergeDsc_sint64'
public	MergeDsc_sint8			as	'_ZN5Array8MergeDscEPaPKamS2_m'
public	MergeDsc_sint16			as	'_ZN5Array8MergeDscEPsPKsmS2_m'
public	MergeDsc_sint32			as	'_ZN5Array8MergeDscEPiPKimS2_m'
public	MergeDsc_sint64			as	'_ZN5Array8MergeDscEPxPKxmS2_m'

; Other types
public	MergeDsc_uint64			as	'Array_MergeDsc_size'
public	MergeDsc_uint64			as	'_ZN5Array8MergeDscEPmPKmmS2_m'

;==============================================================================;
;       Key merging                                                            ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeKeyAsc_uint8			as	'Array_MergeKeyAsc_uint8'
public	MergeKeyAsc_uint16			as	'Array_MergeKeyAsc_uint16'
public	MergeKeyAsc_uint32			as	'Array_MergeKeyAsc_uint32'
public	MergeKeyAsc_uint64			as	'Array_MergeKeyAsc_uint64'
public	MergeKeyAsc_uint8			as	'_ZN5Array8MergeAscEPhPPKvPKhS3_mS5_S3_m'
public	MergeKeyAsc_uint16			as	'_ZN5Array8MergeAscEPtPPKvPKtS3_mS5_S3_m'
public	MergeKeyAsc_uint32			as	'_ZN5Array8MergeAscEPjPPKvPKjS3_mS5_S3_m'
public	MergeKeyAsc_uint64			as	'_ZN5Array8MergeAscEPyPPKvPKyS3_mS5_S3_m'

; Signed integer types
public	MergeKeyAsc_sint8			as	'Array_MergeKeyAsc_sint8'
public	MergeKeyAsc_sint16			as	'Array_MergeKeyAsc_sint16'
public	MergeKeyAsc_sint32			as	'Array_MergeKeyAsc_sint32'
public	MergeKeyAsc_sint64			as	'Array_MergeKeyAsc_sint64'
public	MergeKeyAsc_sint8			as	'_ZN5Array8MergeAscEPaPPKvPKaS3_mS5_S3_m'
public	MergeKeyAsc_sint16			as	'_ZN5Array8MergeAscEPsPPKvPKsS3_mS5_S3_m'
public	MergeKeyAsc_sint32			as	'_ZN5Array8MergeAscEPiPPKvPKiS3_mS5_S3_m'
public	MergeKeyAsc_sint64			as	'_ZN5Array8MergeAscEPxPPKvPKxS3_mS5_S3_m'

; Other types
public	MergeKeyAsc_uint64			as	'Array_MergeKeyAsc_size'
public	MergeKeyAsc_uint64			as	'_ZN5Array8MergeAscEPmPPKvPKmS3_mS5_S3_m'

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
public	MergeKeyDsc_uint8			as	'Array_MergeKeyDsc_uint8'
public	MergeKeyDsc_uint16			as	'Array_MergeKeyDsc_uint16'
public	MergeKeyDsc_uint32			as	'Array_MergeKeyDsc_uint32'
public	MergeKeyDsc_uint64			as	'Array_MergeKeyDsc_uint64'
public	MergeKeyDsc_uint8			as	'_ZN5Array8MergeDscEPhPPKvPKhS3_mS5_S3_m'
public	MergeKeyDsc_uint16			as	'_ZN5Array8MergeDscEPtPPKvPKtS3_mS5_S3_m'
public	MergeKeyDsc_uint32			as	'_ZN5Array8MergeDscEPjPPKvPKjS3_mS5_S3_m'
public	MergeKeyDsc_uint64			as	'_ZN5Array8MergeDscEPyPPKvPKyS3_mS5_S3_m'

; Signed integer types
public	MergeKeyDsc_sint8			as	'Array_MergeKeyDsc_sint8'
public	MergeKeyDsc_sint16			as	'Array_MergeKeyDsc_sint16'
public	MergeKeyDsc_sint32			as	'Array_MergeKeyDsc_sint32'
public	MergeKeyDsc_sint64			as	'Array_MergeKeyDsc_sint64'
public	MergeKeyDsc_sint8			as	'_ZN5Array8MergeDscEPaPPKvPKaS3_mS5_S3_m'
public	MergeKeyDsc_sint16			as	'_ZN5Array8MergeDscEPsPPKvPKsS3_mS5_S3_m'
public	MergeKeyDsc_sint32			as	'_ZN5Array8MergeDscEPiPPKvPKiS3_mS5_S3_m'
public	MergeKeyDsc_sint64			as	'_ZN5Array8MergeDscEPxPPKvPKxS3_mS5_S3_m'

; Other types
public	MergeKeyDsc_uint64			as	'Array_MergeKeyDsc_size'
public	MergeKeyDsc_uint64			as	'_ZN5Array8MergeDscEPmPPKvPKmS3_mS5_S3_m'


;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;

; Unsigned integer types
public	Unique8					as	'Array_Unique_uint8'
public	Unique16				as	'Array_Unique_uint16'
public	Unique32				as	'Array_Unique_uint32'
public	Unique64				as	'Array_Unique_uint64'
public	Unique8					as	'_ZN5Array6UniqueEPhPKhm'
public	Unique16				as	'_ZN5Array6UniqueEPtPKtm'
public	Unique32				as	'_ZN5Array6UniqueEPjPKjm'
public	Unique64				as	'_ZN5Array6UniqueEPyPKym'

; Signed integer types
public	Unique8					as	'Array_Unique_sint8'
public	Unique16				as	'Array_Unique_sint16'
public	Unique32				as	'Array_Unique_sint32'
public	Unique64				as	'Array_Unique_sint64'
public	Unique8					as	'_ZN5Array6UniqueEPaPKam'
public	Unique16				as	'_ZN5Array6UniqueEPsPKsm'
public	Unique32				as	'_ZN5Array6UniqueEPiPKim'
public	Unique64				as	'_ZN5Array6UniqueEPxPKxm'

; Other types
public	Unique64				as	'Array_Unique_size'
public	Unique64				as	'_ZN5Array6UniqueEPmPKmm'

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;

; Unsigned integer types
public	Duplicates8				as	'Array_Duplicates_uint8'
public	Duplicates16			as	'Array_Duplicates_uint16'
public	Duplicates32			as	'Array_Duplicates_uint32'
public	Duplicates64			as	'Array_Duplicates_uint64'
public	Duplicates8				as	'_ZN5Array10DuplicatesEPhPmPKhm'
public	Duplicates16			as	'_ZN5Array10DuplicatesEPtPmPKtm'
public	Duplicates32			as	'_ZN5Array10DuplicatesEPjPmPKjm'
public	Duplicates64			as	'_ZN5Array10DuplicatesEPyPmPKym'

; Signed integer types
public	Duplicates8				as	'Array_Duplicates_sint8'
public	Duplicates16			as	'Array_Duplicates_sint16'
public	Duplicates32			as	'Array_Duplicates_sint32'
public	Duplicates64			as	'Array_Duplicates_sint64'
public	Duplicates8				as	'_ZN5Array10DuplicatesEPaPmPKam'
public	Duplicates16			as	'_ZN5Array10DuplicatesEPsPmPKsm'
public	Duplicates32			as	'_ZN5Array10DuplicatesEPiPmPKim'
public	Duplicates64			as	'_ZN5Array10DuplicatesEPxPmPKxm'

; Other types
public	Duplicates64			as	'Array_Duplicates_size'
public	Duplicates64			as	'_ZN5Array10DuplicatesEPmPmPKmm'

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;

; Unsigned integer types
public	CheckDup8				as	'Array_CheckDup_uint8'
public	CheckDup16				as	'Array_CheckDup_uint16'
public	CheckDup32				as	'Array_CheckDup_uint32'
public	CheckDup64				as	'Array_CheckDup_uint64'
public	CheckDup8				as	'_ZN5Array8CheckDupEPKhm'
public	CheckDup16				as	'_ZN5Array8CheckDupEPKtm'
public	CheckDup32				as	'_ZN5Array8CheckDupEPKjm'
public	CheckDup64				as	'_ZN5Array8CheckDupEPKym'

; Signed integer types
public	CheckDup8				as	'Array_CheckDup_sint8'
public	CheckDup16				as	'Array_CheckDup_sint16'
public	CheckDup32				as	'Array_CheckDup_sint32'
public	CheckDup64				as	'Array_CheckDup_sint64'
public	CheckDup8				as	'_ZN5Array8CheckDupEPKam'
public	CheckDup16				as	'_ZN5Array8CheckDupEPKsm'
public	CheckDup32				as	'_ZN5Array8CheckDupEPKim'
public	CheckDup64				as	'_ZN5Array8CheckDupEPKxm'

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
public	CheckInf_flt32			as	'Array_CheckInf_flt32'
public	CheckInf_flt64			as	'Array_CheckInf_flt64'
public	CheckInf_flt32			as	'_ZN5Array8CheckInfEPKfm'
public	CheckInf_flt64			as	'_ZN5Array8CheckInfEPKdm'

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
public	CheckNaN_flt32			as	'Array_CheckNaN_flt32'
public	CheckNaN_flt64			as	'Array_CheckNaN_flt64'
public	CheckNaN_flt32			as	'_ZN5Array8CheckNaNEPKfm'
public	CheckNaN_flt64			as	'_ZN5Array8CheckNaNEPKdm'

;==============================================================================;
;       Check for equality                                                     ;
;==============================================================================;

; Unsigned integer types
public	CheckEqual8				as	'Array_CheckEqual_uint8'
public	CheckEqual16			as	'Array_CheckEqual_uint16'
public	CheckEqual32			as	'Array_CheckEqual_uint32'
public	CheckEqual64			as	'Array_CheckEqual_uint64'
public	CheckEqual8				as	'_ZN5Array10CheckEqualEPKhS1_m'
public	CheckEqual16			as	'_ZN5Array10CheckEqualEPKtS1_m'
public	CheckEqual32			as	'_ZN5Array10CheckEqualEPKjS1_m'
public	CheckEqual64			as	'_ZN5Array10CheckEqualEPKyS1_m'

; Signed integer types
public	CheckEqual8				as	'Array_CheckEqual_sint8'
public	CheckEqual16			as	'Array_CheckEqual_sint16'
public	CheckEqual32			as	'Array_CheckEqual_sint32'
public	CheckEqual64			as	'Array_CheckEqual_sint64'
public	CheckEqual8				as	'_ZN5Array10CheckEqualEPKaS1_m'
public	CheckEqual16			as	'_ZN5Array10CheckEqualEPKsS1_m'
public	CheckEqual32			as	'_ZN5Array10CheckEqualEPKiS1_m'
public	CheckEqual64			as	'_ZN5Array10CheckEqualEPKxS1_m'

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;

; Unsigned integer types
public	Overlap8				as	'Array_Overlap_uint8'
public	Overlap16				as	'Array_Overlap_uint16'
public	Overlap32				as	'Array_Overlap_uint32'
public	Overlap64				as	'Array_Overlap_uint64'
public	Overlap8				as	'_ZN5Array7OverlapEPKhmS1_m'
public	Overlap16				as	'_ZN5Array7OverlapEPKtmS1_m'
public	Overlap32				as	'_ZN5Array7OverlapEPKjmS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKymS1_m'

; Signed integer types
public	Overlap8				as	'Array_Overlap_sint8'
public	Overlap16				as	'Array_Overlap_sint16'
public	Overlap32				as	'Array_Overlap_sint32'
public	Overlap64				as	'Array_Overlap_sint64'
public	Overlap8				as	'_ZN5Array7OverlapEPKamS1_m'
public	Overlap16				as	'_ZN5Array7OverlapEPKsmS1_m'
public	Overlap32				as	'_ZN5Array7OverlapEPKimS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKxmS1_m'

; Floating-point types
public	Overlap32				as	'Array_Overlap_flt32'
public	Overlap64				as	'Array_Overlap_flt64'
public	Overlap32				as	'_ZN5Array7OverlapEPKfmS1_m'
public	Overlap64				as	'_ZN5Array7OverlapEPKdmS1_m'

; Other types
public	Overlap64				as	'Array_Overlap_size'
public	Overlap64				as	'_ZN5Array7OverlapEPKmmS1_m'

;###############################################################################
;#      Code section                                                           #
;###############################################################################
section	'.text'		executable align 16

;******************************************************************************;
;       Consts                                                                 ;
;******************************************************************************;

; flt32_t
PINF_FLT32	= 0x7F800000					; +inf
MINF_FLT32	= 0xFF800000					; -inf

; flt64_t
PINF_FLT64	= 0x7FF0000000000000			; +inf
MINF_FLT64	= 0xFFF0000000000000			; -inf

;******************************************************************************;
;       Order reversing                                                        ;
;******************************************************************************;
macro	REVERSE	temp1, temp2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ 	rax							; pointer to last element of array
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		lea		ptr, [array + size * bytes]	; ptr = array + size
		shr		size, 1						; size >>= 1
		jz		.exit						; if (size == 0), then go to exit
;---[Swap loop]----------------------------
@@:		sub		ptr, bytes					; ptr--
		mov		temp1, [array]				; temp1 = array[0]
		mov		temp2, [ptr]				; temp2 = ptr[0]
		xchg	temp1, temp2				; exchange temp1 and temp2
		mov		[array], temp1				; array[0] = temp2
		mov		[ptr], temp2				; ptr[0] = temp1
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Reverse8:	REVERSE		cl, dl, 0
Reverse16:	REVERSE		cx, dx, 1
Reverse32:	REVERSE		ecx, edx, 2
Reverse64:	REVERSE		rcx, rdx, 3

;******************************************************************************;
;       Initialization                                                         ;
;******************************************************************************;
macro	INIT	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; register which holds value
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
vector	equ		xmm2						; value to process with
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		movq	vector, value				; vector = value
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		clone	vector, scale				; duplicate value through the entire register
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movdqa	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	data, vector				; data = vector
	pblendvb	data, [array]				; blend value with original data
		movdqa	[array], data				; array[0] = vector
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	[ptr + 1*VSIZE], vector		; ptr[1] = vector
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	[ptr + 2*VSIZE], vector		; ptr[2] = vector
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	[ptr + 3*VSIZE], vector		; ptr[3] = vector
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	[ptr + 4*VSIZE], vector		; ptr[4] = vector
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		pandn	blend, dqword [maskS2 + size]
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, vector				; blend value with original data
		movdqa	[array + index], data		; array[index] = vector
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		[array], reg				; array[0] = reg
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INIT_FLT	x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; register which holds value
;---[Internal variables]-------------------
reg		equ		rdx							; register which holds value
if x eq s
func	= Init_int32						; function to call
else if x eq d
func	= Init_int64						; function to call
end if
;------------------------------------------
		movq	reg, value					; load mask
		jmp		func						; call appropriate function
}

; Integer types
Init_int8:	INIT	dl, b
Init_int16:	INIT	dx, w
Init_int32:	INIT	edx, d
Init_int64:	INIT	rdx, q

; Floating-point types
Init_flt32:	INIT_FLT	s
Init_flt64:	INIT_FLT	d

;******************************************************************************;
;       Copying                                                                ;
;******************************************************************************;
macro	COPY_FWD	reg, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
temp	equ		xmm0						; temporary register #1
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		index, target
		and		index, VMASK
		neg 	index						; get array offset from vector boundary
		lea		ptr2, [source + index]		; ptr2 = source + index
		lea		ptr1, [target + index]		; ptr1 = target + index
;---[Unaligned operation]------------------
		sub		size, index					; size -= index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [source]				; temp = source[0]
		movdqu	[target], temp				; target[0] = temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 + 1*VSIZE]		; temp = ptr2[1]
		movdqa	[ptr1 + 1*VSIZE], temp		; ptr1[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 + 2*VSIZE]		; temp = ptr2[2]
		movdqa	[ptr1 + 2*VSIZE], temp		; ptr1[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 + 3*VSIZE]		; temp = ptr2[3]
		movdqa	[ptr1 + 3*VSIZE], temp		; ptr1[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 + 4*VSIZE]		; temp = ptr2[4]
		movdqa	[ptr1 + 4*VSIZE], temp		; ptr1[4] = temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		movdqu	temp, [source + index]		; temp = source[index]
		movdqu	[target + index], temp		; target[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [source]				; reg = source[0]
		mov		[target], reg				; target[0] = reg
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	COPY_BWD	reg, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
temp	equ		xmm0						; temporary register #1
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		lea		source, [source + size * bytes]
		lea		target, [target + size * bytes]
	prefetchnta	[source]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		sub		source, VSIZE				; source -= VSIZE
		sub		target, VSIZE				; target -= VSIZE
		mov		index, target
		neg		index
		and 	index, VMASK				; get array offset from vector boundary
		lea		ptr2, [source + index]		; ptr2 = source + index
		lea		ptr1, [target + index]		; ptr1 = target + index
;---[Unaligned operation]------------------
		add		size, index					; size += index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [source]				; temp = source[0]
		movdqu	[target], temp				; target[0] = temp
;---[Vector loop]--------------------------
.vloop:	sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 - 1*VSIZE]		; temp = ptr2[-1]
		movdqa	[ptr1 - 1*VSIZE], temp		; ptr1[-1] = temp
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 - 2*VSIZE]		; temp = ptr2[-2]
		movdqa	[ptr1 - 2*VSIZE], temp		; ptr1[-2] = temp
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 - 3*VSIZE]		; temp = ptr2[-3]
		movdqa	[ptr1 - 3*VSIZE], temp		; ptr1[-3] = temp
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	temp, [ptr2 - 4*VSIZE]		; temp = ptr2[-4]
		movdqa	[ptr1 - 4*VSIZE], temp		; ptr1[-4] = temp
	prefetchnta	[ptr2 - PSTEP]				; prefetch next portion of temp
		sub		ptr2, 4 * VSIZE				; ptr2 -= 4 * VSIZE
		sub		ptr1, 4 * VSIZE				; ptr1 -= 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	sub		index, size					; index -= size
		movdqu	temp, [source + index]		; temp = source[index]
		movdqu	[target + index], temp		; target[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	sub		source, bytes				; source--
		sub		target, bytes				; target--
		mov		reg, [source]				; reg = source[0]
		mov		[target], reg				; target[0] = reg
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Copying arrays in forward direction
CopyFwd8:	COPY_FWD	al, b
CopyFwd16:	COPY_FWD	ax, w
CopyFwd32:	COPY_FWD	eax, d
CopyFwd64:	COPY_FWD	rax, q

; Copying arrays in backward direction
CopyBwd8:	COPY_BWD	al, b
CopyBwd16:	COPY_BWD	ax, w
CopyBwd32:	COPY_BWD	eax, d
CopyBwd64:	COPY_BWD	rax, q

;******************************************************************************;
;       Moving                                                                 ;
;******************************************************************************;
macro	MOVE	x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ 	rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
if x eq b
CopyFwd	= CopyFwd8							; Copy in forward direction function
CopyBwd	= CopyBwd8							; Copy in backward direction function
else if x eq w
CopyFwd	= CopyFwd16							; Copy in forward direction function
CopyBwd	= CopyBwd16							; Copy in backward direction function
else if x eq d
CopyFwd	= CopyFwd32							; Copy in forward direction function
CopyBwd	= CopyBwd32							; Copy in backward direction function
else if x eq q
CopyFwd	= CopyFwd64							; Copy in forward direction function
CopyBwd	= CopyBwd64							; Copy in backward direction function
end if
;------------------------------------------
		cmp		target, source
		je		.exit						; if (target == source), then go to exit
		jb		CopyFwd						; if (target <= source), then copy in forward direction
		ja		CopyBwd						; if (target > source), then copy in backward direction
.exit:	ret
}
Move8:	MOVE	b
Move16:	MOVE	w
Move32:	MOVE	d
Move64:	MOVE	q

;******************************************************************************;
;       Pattern cloning                                                        ;
;******************************************************************************;
macro	CLONE	temp, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
psize	equ		rdx							; pattern size (count of elements)
;---[Internal variables]-------------------
ptr		equ 	psize						; pointer to first element after pattern
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	psize, psize				; if (psize == 0)
		jz		.exit						;     then go to exit
		sub		size, psize					; size -= psize
		jbe		.exit						; if (size <= psize), then go to exit
		lea		ptr, [array+psize*bytes]	; ptr = array + psize
;---[Cloning loop]-------------------------
.loop:	mov		temp, [array]				; temp = array[0]
		mov		[ptr], temp					; ptr[0] = temp
		add		array, bytes				; array++
		add		ptr, bytes					; ptr++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
Clone8:		CLONE	al, 0
Clone16:	CLONE	ax, 1
Clone32:	CLONE	eax, 2
Clone64:	CLONE	rax, 3

;******************************************************************************;
;       Data conversion                                                        ;
;******************************************************************************;
macro	CONVERT_VECTOR_FLT32_TO_FLT64
{
;---[Loop]---------------------------------
@@:		movlps	temp0, [source + 0x00]		; temp0 = source[0]
	cvtps2pd	temp0, temp0				; convert flt32_t to flt64_t
		movlps	temp1, [source + 0x08]		; temp1 = source[8]
	cvtps2pd	temp1, temp1				; convert flt32_t to flt64_t
		movlps	temp2, [source + 0x10]		; temp2 = source[16]
	cvtps2pd	temp2, temp2				; convert flt32_t to flt64_t
		movlps	temp3, [source + 0x18]		; temp3 = source[24]
	cvtps2pd	temp3, temp3				; convert flt32_t to flt64_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movapd	[target + 0x00], temp0		; target[0] = temp0
		movapd	[target + 0x10], temp1		; target[16] = temp1
		movapd	[target + 0x20], temp2		; target[32] = temp2
		movapd	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT64_TO_FLT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvtpd2ps	temp0, temp0				; convert flt64_t to flt32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvtpd2ps	temp1, temp1				; convert flt64_t to flt32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvtpd2ps	temp2, temp2				; convert flt64_t to flt32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvtpd2ps	temp3, temp3				; convert flt64_t to flt32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvtpd2ps	temp4, temp4				; convert flt64_t to flt32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvtpd2ps	temp5, temp5				; convert flt64_t to flt32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvtpd2ps	temp6, temp6				; convert flt64_t to flt32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvtpd2ps	temp7, temp7				; convert flt64_t to flt32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movlps	[target + 0x00], temp0		; target[0] = temp0
		movlps	[target + 0x08], temp1		; target[8] = temp1
		movlps	[target + 0x10], temp2		; target[16] = temp2
		movlps	[target + 0x18], temp3		; target[24] = temp3
		movlps	[target + 0x20], temp4		; target[32] = temp4
		movlps	[target + 0x28], temp5		; target[40] = temp5
		movlps	[target + 0x30], temp6		; target[48] = temp6
		movlps	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_SINT32_TO_FLT32
{
;---[Loop]---------------------------------
@@:		movdqu	temp0, [source + 0x00]		; temp0 = source[0]
	cvtdq2ps	temp0, temp0				; convert sint32_t to flt32_t
		movdqu	temp1, [source + 0x10]		; temp1 = source[16]
	cvtdq2ps	temp1, temp1				; convert sint32_t to flt32_t
		movdqu	temp2, [source + 0x20]		; temp2 = source[32]
	cvtdq2ps	temp2, temp2				; convert sint32_t to flt32_t
		movdqu	temp3, [source + 0x30]		; temp3 = source[48]
	cvtdq2ps	temp3, temp3				; convert sint32_t to flt32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movaps	[target + 0x00], temp0		; target[0] = temp0
		movaps	[target + 0x10], temp1		; target[16] = temp1
		movaps	[target + 0x20], temp2		; target[32] = temp2
		movaps	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_SINT32_TO_FLT64
{
;---[Loop]---------------------------------
@@:		movq	temp0, [source + 0x00]		; temp0 = source[0]
	cvtdq2pd	temp0, temp0				; convert sint32_t to flt64_t
		movq	temp1, [source + 0x08]		; temp1 = source[8]
	cvtdq2pd	temp1, temp1				; convert sint32_t to flt64_t
		movq	temp2, [source + 0x10]		; temp2 = source[16]
	cvtdq2pd	temp2, temp2				; convert sint32_t to flt64_t
		movq	temp3, [source + 0x18]		; temp3 = source[24]
	cvtdq2pd	temp3, temp3				; convert sint32_t to flt64_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movapd	[target + 0x00], temp0		; target[0] = temp0
		movapd	[target + 0x10], temp1		; target[16] = temp1
		movapd	[target + 0x20], temp2		; target[32] = temp2
		movapd	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT32_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movups	temp0, [source + 0x00]		; temp0 = source[0]
	cvtps2dq	temp0, temp0				; convert flt32_t to sint32_t
		movups	temp1, [source + 0x10]		; temp1 = source[16]
	cvtps2dq	temp1, temp1				; convert flt32_t to sint32_t
		movups	temp2, [source + 0x20]		; temp2 = source[32]
	cvtps2dq	temp2, temp2				; convert flt32_t to sint32_t
		movups	temp3, [source + 0x30]		; temp3 = source[48]
	cvtps2dq	temp3, temp3				; convert flt32_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_VECTOR_FLT64_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvtpd2dq	temp0, temp0				; convert flt64_t to sint32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvtpd2dq	temp1, temp1				; convert flt64_t to sint32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvtpd2dq	temp2, temp2				; convert flt64_t to sint32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvtpd2dq	temp3, temp3				; convert flt64_t to sint32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvtpd2dq	temp4, temp4				; convert flt64_t to sint32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvtpd2dq	temp5, temp5				; convert flt64_t to sint32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvtpd2dq	temp6, temp6				; convert flt64_t to sint32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvtpd2dq	temp7, temp7				; convert flt64_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movq	[target + 0x00], temp0		; target[0] = temp0
		movq	[target + 0x08], temp1		; target[8] = temp1
		movq	[target + 0x10], temp2		; target[16] = temp2
		movq	[target + 0x18], temp3		; target[24] = temp3
		movq	[target + 0x20], temp4		; target[32] = temp4
		movq	[target + 0x28], temp5		; target[40] = temp5
		movq	[target + 0x30], temp6		; target[48] = temp6
		movq	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_VECTOR_FLT32_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movups	temp0, [source + 0x00]		; temp0 = source[0]
	cvttps2dq	temp0, temp0				; truncate flt32_t to sint32_t
		movups	temp1, [source + 0x10]		; temp1 = source[16]
	cvttps2dq	temp1, temp1				; truncate flt32_t to sint32_t
		movups	temp2, [source + 0x20]		; temp2 = source[32]
	cvttps2dq	temp2, temp2				; truncate flt32_t to sint32_t
		movups	temp3, [source + 0x30]		; temp3 = source[48]
	cvttps2dq	temp3, temp3				; truncate flt32_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movdqa	[target + 0x00], temp0		; target[0] = temp0
		movdqa	[target + 0x10], temp1		; target[16] = temp1
		movdqa	[target + 0x20], temp2		; target[32] = temp2
		movdqa	[target + 0x30], temp3		; target[48] = temp3
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_VECTOR_FLT64_TO_SINT32
{
;---[Loop]---------------------------------
@@:		movupd	temp0, [source + 0x00]		; temp0 = source[0]
	cvttpd2dq	temp0, temp0				; truncate flt64_t to sint32_t
		movupd	temp1, [source + 0x10]		; temp1 = source[16]
	cvttpd2dq	temp1, temp1				; truncate flt64_t to sint32_t
		movupd	temp2, [source + 0x20]		; temp2 = source[32]
	cvttpd2dq	temp2, temp2				; truncate flt64_t to sint32_t
		movupd	temp3, [source + 0x30]		; temp3 = source[48]
	cvttpd2dq	temp3, temp3				; truncate flt64_t to sint32_t
		movupd	temp4, [source + 0x40]		; temp4 = source[64]
	cvttpd2dq	temp4, temp4				; truncate flt64_t to sint32_t
		movupd	temp5, [source + 0x50]		; temp5 = source[80]
	cvttpd2dq	temp5, temp5				; truncate flt64_t to sint32_t
		movupd	temp6, [source + 0x60]		; temp6 = source[96]
	cvttpd2dq	temp6, temp6				; truncate flt64_t to sint32_t
		movupd	temp7, [source + 0x70]		; temp7 = source[112]
	cvttpd2dq	temp7, temp7				; truncate flt64_t to sint32_t
	prefetchnta	[source + PSTEP]			; prefetch next portion of data
		movq	[target + 0x00], temp0		; target[0] = temp0
		movq	[target + 0x08], temp1		; target[8] = temp1
		movq	[target + 0x10], temp2		; target[16] = temp2
		movq	[target + 0x18], temp3		; target[24] = temp3
		movq	[target + 0x20], temp4		; target[32] = temp4
		movq	[target + 0x28], temp5		; target[40] = temp5
		movq	[target + 0x30], temp6		; target[48] = temp6
		movq	[target + 0x38], temp7		; target[56] = temp7
		add		source, block2				; source += block2
		add		target, block1				; target += block1
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT32_TO_FLT64	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtss2sd	reg, [source]				; reg = convert (source[0])
		movsd	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT64_TO_FLT32	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsd2ss	reg, [source]				; reg = convert (source[0])
		movss	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_SINT32_TO_FLT32	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsi2ss	reg, dword [source]			; reg = convert (source[0])
		movss	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_SINT32_TO_FLT64	counter
{
;---[Internal variables]-------------------
reg		equ		xmm0						; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsi2sd	reg, dword [source]			; reg = convert (source[0])
		movsd	[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT32_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtss2si	reg, [source]				; reg = convert (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT_SCALAR_FLT64_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvtsd2si	reg, [source]				; reg = convert (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_SCALAR_FLT32_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvttss2si	reg, [source]				; reg = truncate (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	TRUNCATE_SCALAR_FLT64_TO_SINT32	counter
{
;---[Internal variables]-------------------
reg		equ		eax							; temporary register for data conversion
;---[Loop]---------------------------------
@@:	cvttsd2si	reg, [source]				; reg = truncate (source[0])
		mov		[target], reg				; target[0] = reg
		add		source, bytes2				; source++
		add		target, bytes1				; target++
		sub		counter, 1					; counter--
		jnz		@b							; do while (counter != 0)
;------------------------------------------
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT1	vcode, scalar, scale1, scale2, bscale1, bscale2
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
count	equ		r8							; count of elements to align target
temp	equ		r9							; temporary register
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
temp2	equ		xmm2						; temporary register #3
temp3	equ		xmm3						; temporary register #4
temp4	equ		xmm4						; temporary register #5
temp5	equ		xmm5						; temporary register #6
temp6	equ		xmm6						; temporary register #7
temp7	equ		xmm7						; temporary register #8
amask	= VSIZE - 1							; align mask
bytes1	= 1 shl scale1						; size of target array element (bytes)
bytes2	= 1 shl scale2						; size of source array element (bytes)
block1	= 1 shl bscale1						; block size of target array (bytes)
block2	= 1 shl bscale2						; block size of source array (bytes)
step	= 1 shl (bscale1 - scale1)			; step size (bytes)
;------------------------------------------
	prefetchnta	[source]					; prefetch data
		test	target, bytes1 - 1			; if (target & (bytes1 - 1))
		jnz		.sclr						;     then skip vector code
		mov		count, target
		neg		count
		and		count, amask
		shr		count, scale1				; count = (-target & amask) >> scale1
		lea		temp, [count + step]
		cmp		size, temp					; if (size < count + step)
		jb		.sclr						;     then skip vector code
		sub		size, count					; size -= count
		mov		temp, size					; temp = size
		shr		size, bscale1 - scale1		; size = size / step
		and		temp, step - 1				; temp = size % step
		test	count, count				; if (count == 0)
		jz		.vloop						;     then skip aligning loop
;---[Aligning loop]------------------------
		scalar	count						; invoke aligning code
;---[Vector loop]--------------------------
.vloop:	vcode								; invoke vector code
;------------------------------------------
		mov		size, temp					; size = temp
.sclr:	test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Scalar loop]--------------------------
		scalar	size						; invoke scalar code
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT2	convert, move, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		xmm0						; temporary register
bytes	= 1 shl scale						; size of target array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	convert	temp, qword [source]		; temp = convert (source[0])
		move	[target], temp				; target[0] = temp
		add		source, 8					; source++
		add		target, bytes				; target++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	CONVERT3	convert, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
bytes	= 1 shl scale						; size of source array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
;---[Loop]---------------------------------
.loop:	convert	temp, [source]				; temp = convert (source[0])
		mov		[target], temp				; target[0] = temp
		add		source, bytes				; source++
		add		target, 8					; target++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
.exit:	ret
}

; Conversion between floating-point types
ConvertFlt32ToFlt64:	CONVERT1	CONVERT_VECTOR_FLT32_TO_FLT64, CONVERT_SCALAR_FLT32_TO_FLT64, 3, 2, 6, 5
ConvertFlt64ToFlt32:	CONVERT1	CONVERT_VECTOR_FLT64_TO_FLT32, CONVERT_SCALAR_FLT64_TO_FLT32, 2, 3, 6, 7

; Conversion from signed integer types to floating-point types
ConvertSint32ToFlt32:	CONVERT1	CONVERT_VECTOR_SINT32_TO_FLT32, CONVERT_SCALAR_SINT32_TO_FLT32, 2, 2, 6, 6
ConvertSint32ToFlt64:	CONVERT1	CONVERT_VECTOR_SINT32_TO_FLT64, CONVERT_SCALAR_SINT32_TO_FLT64, 3, 2, 6, 5
ConvertSint64ToFlt32:	CONVERT2	cvtsi2ss, movss, 2
ConvertSint64ToFlt64:	CONVERT2	cvtsi2sd, movsd, 3

; Conversion from floating-point types to signed integer types
ConvertFlt32ToSint32:	CONVERT1	CONVERT_VECTOR_FLT32_TO_SINT32, CONVERT_SCALAR_FLT32_TO_SINT32, 2, 2, 6, 6
ConvertFlt32ToSint64:	CONVERT3	cvtss2si, 2
ConvertFlt64ToSint32:	CONVERT1	CONVERT_VECTOR_FLT64_TO_SINT32, CONVERT_SCALAR_FLT64_TO_SINT32, 2, 3, 6, 7
ConvertFlt64ToSint64:	CONVERT3	cvtsd2si, 3

; Truncating from floating-point types to signed integer types
TruncateFlt32ToSint32:	CONVERT1	TRUNCATE_VECTOR_FLT32_TO_SINT32, TRUNCATE_SCALAR_FLT32_TO_SINT32, 2, 2, 6, 6
TruncateFlt32ToSint64:	CONVERT3	cvttss2si, 2
TruncateFlt64ToSint32:	CONVERT1	TRUNCATE_VECTOR_FLT64_TO_SINT32, TRUNCATE_SCALAR_FLT64_TO_SINT32, 2, 3, 6, 7
TruncateFlt64ToSint64:	CONVERT3	cvttsd2si, 3

;******************************************************************************;
;       Bitwise operations                                                     ;
;******************************************************************************;
macro	INT_SCALAR	op, reg, type, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		rdx							; register which holds value
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
vector	equ		xmm2						; value to process with
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		movq	vector, value				; vector = value
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		clone	vector, scale				; duplicate value through the entire register
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movdqa	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [array]				; temp = array[0]
		movdqa	data, temp					; data = temp
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
		movdqa	[ptr + 1*VSIZE], temp		; ptr[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
		movdqa	[ptr + 2*VSIZE], temp		; ptr[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
		movdqa	[ptr + 3*VSIZE], temp		; ptr[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
		movdqa	[ptr + 4*VSIZE], temp		; ptr[4] = temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		pandn	blend, dqword [maskS2 + size]
		movdqa	temp, [array + index]		; temp = array[index]
		movdqa	data, temp					; data = temp
if type = 1
		p#op#x	temp, vector				; do operation to temp value
else
		p#op	temp, vector				; do operation to temp value
end if
	pblendvb	data, temp					; blend temp with original data
		movdqa	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	op		[array], reg				; do operation to array[0] value
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	INT_VECTOR	op, reg, type, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
aindex	equ		rcx							; array offset from vector boundary
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
blend	equ		xmm0						; blending mask
a1temp	equ		xmm1						; temporary register #1
a2temp	equ		xmm2						; temporary register #2
data	equ		xmm3						; register which holds original data
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		mov		aindex, target
		and		aindex, VMASK				; get array offset from vector boundary
		sub		ptr2, aindex				; ptr2 = source - aindex
		sub		ptr1, aindex				; ptr1 = target - aindex
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		shl		aindex, 4					; compute shift in mask array
		movdqa	blend, dqword [maskV1 + aindex]
		movdqu	a2temp, [source]			; a2temp = source[0]
		movdqu	a1temp, [target]			; a1temp = target[0]
		movdqa	data, a1temp				; data = a1temp
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
	pblendvb	a1temp, data				; blend a1temp with original data
		movdqu	[target], a1temp			; target[0] = a1temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		movdqa	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
		movdqa	[ptr1 + 1*VSIZE], a1temp	; ptr1[1] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		movdqa	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
		movdqa	[ptr1 + 2*VSIZE], a1temp	; ptr1[2] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		movdqa	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
		movdqa	[ptr1 + 3*VSIZE], a1temp	; ptr1[3] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movdqu	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		movdqa	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
		movdqa	[ptr1 + 4*VSIZE], a1temp	; ptr1[4] = a1temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, 4						; compute shift in mask array
		movdqa	blend, dqword [maskV2 + size]
		movdqu	a2temp, [source + index]	; a2temp = source[index]
		movdqu	a1temp, [target + index]	; a1temp = target[index]
		movdqa	data, a1temp				; data = a1temp
if type = 1
		p#op#x	a1temp, a2temp				; do operation to temp value
else
		p#op	a1temp, a2temp				; do operation to temp value
end if
	pblendvb	data, a1temp				; blend a1temp with original data
		movdqu	[target + index], data		; target[index] = a1temp
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		reg, [source]				; reg = source[0]
		op		[target], reg				; do operation to target[0] value
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;==============================================================================;
;       Bitwise NOT                                                            ;
;==============================================================================;
macro	NOT		reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
if x eq b
func	= XorS8								; function to call
mask	= 0xFF								; mask to apply to all elements
else if x eq w
func	= XorS16							; function to call
mask	= 0xFFFF							; mask to apply to all elements
else if x eq d
func	= XorS32							; function to call
mask	= 0xFFFFFFFF						; mask to apply to all elements
else if x eq q
func	= XorS64							; function to call
mask	= 0xFFFFFFFFFFFFFFFF				; mask to apply to all elements
end if
;------------------------------------------
		mov		reg, mask					; load mask
		jmp		func						; call appropriate function
}
Not8:	NOT		dl, b
Not16:	NOT		dx, w
Not32:	NOT		edx, d
Not64:	NOT		rdx, q

;==============================================================================;
;       Bitwise AND                                                            ;
;==============================================================================;

; Scalar bitwise AND
AndS8:	INT_SCALAR	and, dl, 0, b
AndS16:	INT_SCALAR	and, dx, 0, w
AndS32:	INT_SCALAR	and, edx, 0, d
AndS64:	INT_SCALAR	and, rdx, 0, q

; Vector bitwise AND
AndV8:	INT_VECTOR	and, al, 0, b
AndV16:	INT_VECTOR	and, ax, 0, w
AndV32:	INT_VECTOR	and, eax, 0, d
AndV64:	INT_VECTOR	and, rax, 0, q

;==============================================================================;
;       Bitwise OR                                                             ;
;==============================================================================;

; Scalar bitwise OR
OrS8:	INT_SCALAR	or, dl, 0, b
OrS16:	INT_SCALAR	or, dx, 0, w
OrS32:	INT_SCALAR	or, edx, 0, d
OrS64:	INT_SCALAR	or, rdx, 0, q

; Vector bitwise OR
OrV8:	INT_VECTOR	or, al, 0, b
OrV16:	INT_VECTOR	or, ax, 0, w
OrV32:	INT_VECTOR	or, eax, 0, d
OrV64:	INT_VECTOR	or, rax, 0, q

;==============================================================================;
;       Bitwise XOR                                                            ;
;==============================================================================;

; Scalar bitwise XOR
XorS8:	INT_SCALAR	xor, dl, 0, b
XorS16:	INT_SCALAR	xor, dx, 0, w
XorS32:	INT_SCALAR	xor, edx, 0, d
XorS64:	INT_SCALAR	xor, rdx, 0, q

; Vector bitwise XOR
XorV8:	INT_VECTOR	xor, al, 0, b
XorV16:	INT_VECTOR	xor, ax, 0, w
XorV32:	INT_VECTOR	xor, eax, 0, d
XorV64:	INT_VECTOR	xor, rax, 0, q

;******************************************************************************;
;       Arithmetic operations                                                  ;
;******************************************************************************;

;==============================================================================;
;       Unitary operations                                                     ;
;==============================================================================;
macro	SIGN	func, reg, mask
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;------------------------------------------
		mov		reg, mask					; load mask
		jmp		func						; call appropriate function
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	SQR		op, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
data	equ		xmm2						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
		op#p#x	temp, temp					; do operation to temp value
	pblendvb	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
		op#p#x	temp, temp					; do operation to temp value
		movap#x	[ptr + 1*VSIZE], temp		; ptr[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
		op#p#x	temp, temp					; do operation to temp value
		movap#x	[ptr + 2*VSIZE], temp		; ptr[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
		op#p#x	temp, temp					; do operation to temp value
		movap#x	[ptr + 3*VSIZE], temp		; ptr[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
		op#p#x	temp, temp					; do operation to temp value
		movap#x	[ptr + 4*VSIZE], temp		; ptr[4] = temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
		op#p#x	temp, temp					; do operation to temp value
	pblendvb	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op#s#x	temp, temp					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Negative value
Neg_flt32:		SIGN	XorS32, edx, SMASK_FLT32
Neg_flt64:		SIGN	XorS64, rdx, SMASK_FLT64

; Absolute value
Abs_flt32:		SIGN	AndS32, edx, DMASK_FLT32
Abs_flt64:		SIGN	AndS64, rdx, DMASK_FLT64

; Negative absolute value
NegAbs_flt32:	SIGN	OrS32, edx, SMASK_FLT32
NegAbs_flt64:	SIGN	OrS64, rdx, SMASK_FLT64

; Square
Sqr_flt32:		SQR		mul, s
Sqr_flt64:		SQR		mul, d

; Square root
Sqrt_flt32:		SQR		sqrt, s
Sqrt_flt64:		SQR		sqrt, d

;==============================================================================;
;       Binary operations                                                      ;
;==============================================================================;
macro	FLT_SCALAR	op, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
value	equ		xmm0						; value to process with
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
vector	equ		xmm2						; value to process with
data	equ		xmm3						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		movap#x	vector, value				; vector = value
		shufp#x	vector, vector, 0x0			; duplicate value through the entire register
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
		op#p#x	temp, vector				; do operation to temp value
	pblendvb	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
		op#p#x	temp, vector				; do operation to temp value
		movap#x	[ptr + 1*VSIZE], temp		; ptr[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
		op#p#x	temp, vector				; do operation to temp value
		movap#x	[ptr + 2*VSIZE], temp		; ptr[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
		op#p#x	temp, vector				; do operation to temp value
		movap#x	[ptr + 3*VSIZE], temp		; ptr[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
		op#p#x	temp, vector				; do operation to temp value
		movap#x	[ptr + 4*VSIZE], temp		; ptr[4] = temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
		op#p#x	temp, vector				; do operation to temp value
	pblendvb	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
		op#s#x	temp, value					; do operation to temp value
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	FLT_VECTOR	op, x
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source	equ		rsi							; pointer to source array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
aindex	equ		rcx							; array offset from vector boundary
ptr1	equ		r10							; temporary pointer to target array
ptr2	equ		r11							; temporary pointer to source array
blend	equ		xmm0						; blending mask
a1temp	equ		xmm1						; temporary register #1
a2temp	equ		xmm2						; temporary register #2
data	equ		xmm3						; register which holds original data
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[source]					; prefetch data
	prefetchnta	[target]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	source, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	target, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, source				; ptr2 = source
		mov		ptr1, target				; ptr1 = target
		mov		aindex, target
		and		aindex, VMASK				; get array offset from vector boundary
		sub		ptr2, aindex				; ptr2 = source - aindex
		sub		ptr1, aindex				; ptr1 = target - aindex
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskV1 + aindex]
		movup#x	a2temp, [source]			; a2temp = source[0]
		movup#x	a1temp, [target]			; a1temp = target[0]
		movap#x	data, a1temp				; data = a1temp
		op#p#x	a1temp, a2temp				; do operation to temp value
	pblendvb	a1temp, data				; blend a1temp with original data
		movup#x	[target], a1temp			; target[0] = a1temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		movap#x	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
		op#p#x	a1temp, a2temp				; do operation to temp value
		movap#x	[ptr1 + 1*VSIZE], a1temp	; ptr1[1] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		movap#x	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
		op#p#x	a1temp, a2temp				; do operation to temp value
		movap#x	[ptr1 + 2*VSIZE], a1temp	; ptr1[2] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		movap#x	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
		op#p#x	a1temp, a2temp				; do operation to temp value
		movap#x	[ptr1 + 3*VSIZE], a1temp	; ptr1[3] = a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		movap#x	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
		op#p#x	a1temp, a2temp				; do operation to temp value
		movap#x	[ptr1 + 4*VSIZE], a1temp	; ptr1[4] = a1temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, 4						; compute shift in mask array
		movap#x	blend, dqword [maskV2 + size]
		movup#x	a2temp, [source + index]	; a2temp = source[index]
		movup#x	a1temp, [target + index]	; a1temp = target[index]
		movap#x	data, a1temp				; data = a1temp
		op#p#x	a1temp, a2temp				; do operation to temp value
	pblendvb	data, a1temp				; blend a1temp with original data
		movup#x	[target + index], data		; target[index] = a1temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	a2temp, [source]			; a2temp = source[0]
		movs#x	a1temp, [target]			; a1temp = target[0]
		op#s#x	a1temp, a2temp				; do operation to temp value
		movs#x	[target], a1temp			; target[0] = a1temp
		add		source, bytes				; source++
		add		target, bytes				; target++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Addition                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar addition                                                        ;
;------------------------------------------------------------------------------;

; Integer types
AddS8:		INT_SCALAR	add, dl, 1, b
AddS16:		INT_SCALAR	add, dx, 1, w
AddS32:		INT_SCALAR	add, edx, 1, d
AddS64:		INT_SCALAR	add, rdx, 1, q

; Floating-point types
AddS_flt32:	FLT_SCALAR	add, s
AddS_flt64:	FLT_SCALAR	add, d

;------------------------------------------------------------------------------;
;       Vector addition                                                        ;
;------------------------------------------------------------------------------;

; Integer types
AddV8:		INT_VECTOR	add, al, 1, b
AddV16:		INT_VECTOR	add, ax, 1, w
AddV32:		INT_VECTOR	add, eax, 1, d
AddV64:		INT_VECTOR	add, rax, 1, q

; Floating-point types
AddV_flt32:	FLT_VECTOR	add, s
AddV_flt64:	FLT_VECTOR	add, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Subtraction                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar subtraction                                                     ;
;------------------------------------------------------------------------------;

; Integer types
SubS8:		INT_SCALAR	sub, dl, 1, b
SubS16:		INT_SCALAR	sub, dx, 1, w
SubS32:		INT_SCALAR	sub, edx, 1, d
SubS64:		INT_SCALAR	sub, rdx, 1, q

; Floating-point types
SubS_flt32:	FLT_SCALAR	sub, s
SubS_flt64:	FLT_SCALAR	sub, d

;------------------------------------------------------------------------------;
;       Vector subtraction                                                     ;
;------------------------------------------------------------------------------;

; Integer types
SubV8:		INT_VECTOR	sub, al, 1, b
SubV16:		INT_VECTOR	sub, ax, 1, w
SubV32:		INT_VECTOR	sub, eax, 1, d
SubV64:		INT_VECTOR	sub, rax, 1, q

; Floating-point types
SubV_flt32:	FLT_VECTOR	sub, s
SubV_flt64:	FLT_VECTOR	sub, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Multiplication                                                         ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar multiplication                                                  ;
;------------------------------------------------------------------------------;
MulS_flt32:	FLT_SCALAR	mul, s
MulS_flt64:	FLT_SCALAR	mul, d

;------------------------------------------------------------------------------;
;       Vector multiplication                                                  ;
;------------------------------------------------------------------------------;
MulV_flt32:	FLT_VECTOR	mul, s
MulV_flt64:	FLT_VECTOR	mul, d

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Division                                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Scalar division                                                        ;
;------------------------------------------------------------------------------;
DivS_flt32:	FLT_SCALAR	div, s
DivS_flt64:	FLT_SCALAR	div, d

;------------------------------------------------------------------------------;
;       Vector division                                                        ;
;------------------------------------------------------------------------------;
DivV_flt32:	FLT_VECTOR	div, s
DivV_flt64:	FLT_VECTOR	div, d

;******************************************************************************;
;       Numerical integration                                                  ;
;******************************************************************************;
macro	SUM		type, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
sum0	equ		xmm3						; intermediate sum #1
sum1	equ		xmm4						; intermediate sum #2
sum2	equ		xmm5						; intermediate sum #3
sum3	equ		xmm6						; intermediate sum #4
sum4	equ		xmm7						; intermediate sum #5
zero	equ		xmm8						; 0
if x eq s
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		xorp#x	result, result				; index = 0
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
if type = 2
		initreg	mask, index, dmask			; mask = dmask
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
if type = 2
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
	pblendvb	temp, zero					; blend temp with zero values
		addp#x	sum0, temp					; sum0 += temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum1, temp					; sum1 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum2, temp					; sum2 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum3, temp					; sum3 += temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		addp#x	sum4, temp					; sum4 += temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
		movap#x	temp, [array + index]		; temp = array[index]
if type = 1
		mulp#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
	pblendvb	zero, temp					; blend temp with zero values
		addp#x	sum0, zero					; sum0 += temp
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		movs#x	result, sum0				; return sum0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if type = 1
		muls#x	temp, temp					; temp = temp ^ 2
else if type = 2
		andp#x	temp, mask					; temp = Abs (temp)
end if
		adds#x	result, temp				; result += temp
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

;==============================================================================;
;       Sum of elements                                                        ;
;==============================================================================;
Sum_flt32:		SUM		0, s
Sum_flt64:		SUM		0, d

;==============================================================================;
;       Sum of squares                                                         ;
;==============================================================================;
SumSqr_flt32:	SUM		1, s
SumSqr_flt64:	SUM		1, d

;==============================================================================;
;       Sum of absolute values                                                 ;
;==============================================================================;
SumAbs_flt32:	SUM		2, s
SumAbs_flt64:	SUM		2, d

;==============================================================================;
;       Sum of multiplied elements                                             ;
;==============================================================================;
macro	SUM_MUL		x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of target array
aindex	equ		rcx							; array offset from vector boundary
ptr1	equ		r10							; temporary pointer to first array
ptr2	equ		r11							; temporary pointer to second array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
a1temp	equ		xmm1						; temporary register #1
a2temp	equ		xmm2						; temporary register #2
sum0	equ		xmm3						; intermediate sum #1
sum1	equ		xmm4						; intermediate sum #2
sum2	equ		xmm5						; intermediate sum #3
sum3	equ		xmm6						; intermediate sum #4
sum4	equ		xmm7						; intermediate sum #5
zero	equ		xmm8						; 0
if x eq s
scale	= 2									; scale value
else if x eq d
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		xorp#x	result, result				; result = 0
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		aindex, array1
		and		aindex, VMASK				; get array offset from vector boundary
		sub		ptr2, aindex				; ptr2 = array2 - aindex
		sub		ptr1, aindex				; ptr1 = array1 - aindex
		xor		index, index				; index = 0
		xorp#x	sum0, sum0					; sum0 = 0
		xorp#x	sum1, sum1					; sum1 = 0
		xorp#x	sum2, sum2					; sum2 = 0
		xorp#x	sum3, sum3					; sum3 = 0
		xorp#x	sum4, sum4					; sum4 = 0
		xorp#x	zero, zero					; zero = 0
;---[Unaligned sum]------------------------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskV1 + aindex]
		movup#x	a2temp, [array2]			; a2temp = array2[0]
		movup#x	a1temp, [array1]			; a1temp = array1[0]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
	pblendvb	a1temp, zero				; blend a1temp with zero values
		addp#x	sum0, a1temp				; sum0 += a1temp
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		movap#x	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum1, a1temp				; sum1 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		movap#x	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum2, a1temp				; sum2 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		movap#x	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum3, a1temp				; sum3 += a1temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tails
		movup#x	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		movap#x	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
		addp#x	sum4, a1temp				; sum4 += a1temp
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	add		index, size					; index += size
		shl		size, 4						; compute shift in mask array
		movap#x	blend, dqword [maskV2 + size]
		movup#x	a2temp, [array2 + index]	; a2temp = array2[index]
		movup#x	a1temp, [array1 + index]	; a1temp = array1[index]
		mulp#x	a1temp, a2temp				; a1temp *= a2temp
	pblendvb	zero, a1temp				; blend a1temp with zero values
		addp#x	sum0, zero					; sum0 += a1temp
		addp#x	sum1, sum2
		addp#x	sum3, sum4
		addp#x	sum1, sum3
		addp#x	sum0, sum1					; sum0 = sum0 + sum1 + sum2 + sum3 + sum4
		summa	sum0, x						; get all parallel sums
		movs#x	result, sum0				; return sum0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	a2temp, [array2]			; a2temp = array2[0]
		movs#x	a1temp, [array1]			; a1temp = array1[0]
		muls#x	a1temp, a2temp				; a1temp *= a2temp
		adds#x	result, a1temp				; result += a1temp
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
SumMul_flt32:	SUM_MUL	s
SumMul_flt64:	SUM_MUL	d

;******************************************************************************;
;       Minimum and maximum values                                             ;
;******************************************************************************;
macro	MINMAX		op, value, abs, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
fmask	equ		r9							; result of pattern search
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
result	equ		blend						; result register
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
res0	equ		xmm3						; intermediate result #1
res1	equ		xmm4						; intermediate result #2
res2	equ		xmm5						; intermediate result #3
res3	equ		xmm6						; intermediate result #4
res4	equ		xmm7						; intermediate result #5
inf		equ		xmm8						; infinity value
flags0	equ		xmm9						; NaN matching flags #1
flags1	equ		xmm10						; NaN matching flags #2
flags2	equ		xmm11						; NaN matching flags #3
flags3	equ		xmm12						; NaN matching flags #4
flags4	equ		xmm13						; NaN matching flags #5
if x eq s
dmask	= DMASK_FLT32						; data mask
nan		= DMASK_FLT32						; NaN
scale	= 2									; scale value
else if x eq d
dmask	= DMASK_FLT64						; data mask
nan		= DMASK_FLT64						; NaN
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		initreg	result, index, value		; result = value
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
if abs
		initreg	mask, index, dmask			; mask = dmask
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		shufp#x	result, result, 0x0			; duplicate value through the entire register
if abs
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
end if
		movap#x	res0, result				; res0 = infinity
		movap#x	res1, result				; res1 = infinity
		movap#x	res2, result				; res2 = infinity
		movap#x	res3, result				; res3 = infinity
		movap#x	res4, result				; res4 = infinity
		movap#x	inf, result					; inf = infinity
		xorp#x	flags0, flags0				; flags0 = 0
		xorp#x	flags1, flags1				; flags1 = 0
		xorp#x	flags2, flags2				; flags2 = 0
		xorp#x	flags3, flags3				; flags3 = 0
		xorp#x	flags4, flags4				; flags4 = 0
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
	pblendvb	temp, inf					; blend temp with infinity values
		op#p#x	res0, temp					; find min or max values
		cmpp#x	temp, temp, 3				; check values for NANs
		orp#x	flags0, temp				; accumulate NaN check results
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res1, temp					; find min or max values
		cmpp#x	temp, temp, 3				; check values for NANs
		orp#x	flags1, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res2, temp					; find min or max values
		cmpp#x	temp, temp, 3				; check values for NANs
		orp#x	flags2, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res3, temp					; find min or max values
		cmpp#x	temp, temp, 3				; check values for NANs
		orp#x	flags3, temp				; accumulate NaN check results
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#p#x	res4, temp					; find min or max values
		cmpp#x	temp, temp, 3				; check values for NANs
		orp#x	flags4, temp				; accumulate NaN check results
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
		movap#x	temp, [array + index]		; temp = array[index]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
	pblendvb	inf, temp					; blend temp with infinity values
		op#p#x	res0, inf					; find min or max values
		cmpp#x	inf, inf, 3					; check values for NANs
		orp#x	flags0, inf					; accumulate NaN check results
		orp#x	flags1, flags2
		orp#x	flags3, flags4
		orp#x	flags1, flags3
		orp#x	flags0, flags1
	pmovmskb	fmask, flags0				; save check results to fmask
		and		fmask, fmask				; if NAN is found,
		jnz		.error						;     then go to error branch
		op#p#x	res1, res2
		op#p#x	res3, res4
		op#p#x	res1, res3
		op#p#x	res0, res1					; find min or max values from all accumulators
if x eq s
		movhlps	temp, res0					; temp = upper half of res0
		op#p#x	res0, temp					; find min or max values
end if
		movap#x	temp, res0					; temp = res0
		shufp#x	temp, temp, 0x1				; shuffle values in temp register
		op#s#x	res0, temp					; find min or max value
		movs#x	result, res0				; return res0
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if abs
		andp#x	temp, mask					; temp = Abs (temp)
end if
		op#s#x	result, temp				; find min or max values
		comis#x	temp, temp					; if NAN is found,
		jp		.error						;     then go to error branch
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
;---[Error branch]-------------------------
.error:	initreg	result, index, nan			; return NaN
		ret
}

; Minimum value
Min_flt32:		MINMAX	min, PINF_FLT32, 0, s
Min_flt64:		MINMAX	min, PINF_FLT64, 0, d

; Minimum absolute value
MinAbs_flt32:	MINMAX	min, PINF_FLT32, 1, s
MinAbs_flt64:	MINMAX	min, PINF_FLT64, 1, d

; Maximum value
Max_flt32:		MINMAX	max, MINF_FLT32, 0, s
Max_flt64:		MINMAX	max, MINF_FLT64, 0, d

; Maximum absolute value
MaxAbs_flt32:	MINMAX	max, MINF_FLT32, 1, s
MaxAbs_flt64:	MINMAX	max, MINF_FLT64, 1, d

;******************************************************************************;
;       Rounding                                                               ;
;******************************************************************************;
macro	ROUND	type, mode, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
half	equ		xmm3						; 0.5
value	equ		xmm4						; adjustment value
data	equ		xmm5						; register which holds original data
if x eq s
smask	= SMASK_FLT32						; sign mask
halfval	= HALF_FLT32						; 0.5
scale	= 2									; scale value
else if x eq d
smask	= SMASK_FLT64						; sign mask
halfval	= HALF_FLT64						; 0.5
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
if type = 1
		initreg	mask, index, smask			; mask = smask
		initreg	half, index, halfval		; half = 0.5
end if
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
if type = 1
		shufp#x	mask, mask, 0x0				; duplicate value through the entire register
		shufp#x	half, half, 0x0				; duplicate value through the entire register
end if
;---[Unaligned sums]-----------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movap#x	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [array]				; temp = array[0]
		movap#x	data, temp					; data = temp
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
	pblendvb	temp, data					; blend temp with original data
		movap#x	[array], temp				; array[0] = temp
		xorp#x	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
		movap#x	[ptr + 1*VSIZE], temp		; ptr[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
		movap#x	[ptr + 2*VSIZE], temp		; ptr[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
		movap#x	[ptr + 3*VSIZE], temp		; ptr[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movap#x	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
		movap#x	[ptr + 4*VSIZE], temp		; ptr[4] = temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		andnp#x	blend, dqword [maskS2 + size]
		movap#x	temp, [array + index]		; temp = array[index]
		movap#x	data, temp					; data = temp
if type = 1
		movap#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		addp#x	temp, value					; temp += value
	roundp#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	roundp#x	value, temp, mode			; value = Round (temp)
		subp#x	temp, value					; temp -= value
else
	roundp#x	temp, temp, mode			; temp = Round (temp)
end if
	pblendvb	data, temp					; blend temp with original data
		movap#x	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	movs#x	temp, [array]				; temp = array[0]
if type = 1
		movs#x	value, temp
		andp#x	value, mask
		orp#x	value, half					; value = 0.5 * Sign (temp)
		adds#x	temp, value					; temp += value
	rounds#x	temp, temp, mode			; temp = Round (temp)
else if type = 2
	rounds#x	value, temp, mode			; value = Round (temp)
		subs#x	temp, value					; temp -= value
else
	rounds#x	temp, temp, mode			; temp = Round (temp)
end if
		movs#x	[array], temp				; array[0] = temp
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}

; Round down (floor)
RoundDown_flt32:	ROUND	0, 0x1, s
RoundDown_flt64:	ROUND	0, 0x1, d

; Round up (ceil)
RoundUp_flt32:		ROUND	0, 0x2, s
RoundUp_flt64:		ROUND	0, 0x2, d

; Round to nearest even integer
RoundInt_flt32:		ROUND	0, 0x0, s
RoundInt_flt64:		ROUND	0, 0x0, d

; Round to nearest integer, away from zero
RoundRound_flt32:	ROUND	1, 0x3, s
RoundRound_flt64:	ROUND	1, 0x3, d

; Round to nearest integer, toward zero (truncation)
RoundTrunc_flt32:	ROUND	0, 0x3, s
RoundTrunc_flt64:	ROUND	0, 0x3, d

; Fractional part
RoundFrac_flt32:	ROUND	2, 0x3, s
RoundFrac_flt64:	ROUND	2, 0x3, d

;******************************************************************************;
;       Value replacement                                                      ;
;******************************************************************************;
macro	REPLACE	reg, val, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
value	equ		rcx							; register which holds replacement value
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
aindex	equ		rcx							; array offset from vector boundary
aindexl	equ		cl							; low part of "aindex"
addr	equ		r8							; return address
fmask	equ		r9							; result of pattern search
ptr		equ		r11							; temporary pointer to array
flags	equ		xmm0						; pattern check flags
data	equ		xmm1						; register which holds original data
pattern	equ		xmm2						; pattern to find
replace	equ		xmm3						; replacement value
cmask	equ		xmm4						; mask to clear unrequired results
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		movq	replace, value				; replace = value
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		clone	pattern, scale				; duplicate value through the entire register
		clone	replace, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		add		size, aindex				; size += aindex
		xor		index, index				; index = 0
		shl		aindex, 4					; compute shift in mask array
		movdqa	cmask, dqword [maskS1 + aindex]
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
		pandn	cmask, flags				; apply mask to pattern search results
		movdqa	flags, cmask
	pmovmskb	fmask, cmask				; save check results to fmask
		mov		addr, .back0				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back0:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
;---[Vector loop]--------------------------
.vloop:	movdqa	flags, [ptr + 1*VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[1] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		mov		addr, .back1				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back1:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 2*VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[2] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		mov		addr, .back2				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back2:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 3*VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[3] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		mov		addr, .back3				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back3:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
		movdqa	flags, [ptr + 4*VSIZE]
	pcmpeq#x	flags, pattern				; check ptr[4] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		mov		addr, .back4				;     save return address
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
.back4:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.exit						;     then go to exit
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	cmp		size, VSIZE					; if (size <= VSIZE)
		jbe		@f							;     then parse array tail
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, replace
		movdqa	[array + index], data		; array[index] = replace (data, pattern, value)
		jmp		addr						; go back into the searching loop
@@:		shl		size, 4						; compute shift in mask array
		pand	flags, dqword [maskS1 + size]
		movdqa	data, [array + index]		; data = array[index]
	pblendvb	data, replace
		movdqa	[array + index], data		; array[index] = replace (data, pattern, value)
		ret
;---[Scalar loop]--------------------------
.sloop:	cmp		[array], reg				; if (array[0] == pattern) {
		jne		@f							;     array[0] = value
		mov		[array], val				; }
@@:		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Not found branch]---------------------
.exit:	ret
}
Replace8:	REPLACE	dl, cl, b
Replace16:	REPLACE	dx, cx, w
Replace32:	REPLACE	edx, ecx, d
Replace64:	REPLACE	rdx, rcx, q

;******************************************************************************;
;       Search algorithms                                                      ;
;******************************************************************************;

;==============================================================================;
;       Linear search                                                          ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Forward direction search                                               ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_FWD	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
aindex	equ		rcx							; array offset from vector boundary
aindexl	equ		cl							; low part of "aindex"
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
pattern	equ		xmm1						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		xor		index, index				; index = 0
		shl		size, scale					; convert size to bytes
		jz		.ntfnd						; if (size == 0), then go to not found branch
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		clone	pattern, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		mov		cmask, 0xFFFF
		shl		cmask, aindexl				; adjust cmask for unaligned search
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
;---[Vector loop]--------------------------
.vloop:	movdqa	flags, [array + 1*VSIZE]
	pcmpeq#x	flags, pattern				; check array[1] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 2*VSIZE]
	pcmpeq#x	flags, pattern				; check array[2] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 3*VSIZE]
	pcmpeq#x	flags, pattern				; check array[3] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 4*VSIZE]
	pcmpeq#x	flags, pattern				; check array[4] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, 4 * VSIZE			; array += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of pattern
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     then go to not found branch
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
.sloop:	cmp		[array], reg				; if (array[0] == pattern)
		je		.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
FindFwd8:	FIND_FWD	dl, b
FindFwd16:	FIND_FWD	dx, w
FindFwd32:	FIND_FWD	edx, d
FindFwd64:	FIND_FWD	rdx, q

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Backward direction search                                              ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	FIND_BWD	reg, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
patt	equ		rdx							; register which holds pattern
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
aindex	equ		rcx							; array offset from vector boundary
aindexl	equ		cl							; low part of "aindex"
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
pattern	equ		xmm1						; pattern to find
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
		lea		array, [array + size * bytes]
	prefetchnta	[array]						; prefetch data
		mov		index, size					; index = size
		shl		size, scale					; convert size to bytes
		jz		.ntfnd						; if (size == 0), then go to not found branch
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		movq	pattern, patt				; pattern = patt
		mov		aindex, array
		neg		aindex
		and 	aindex, VMASK				; get array offset from vector boundary
		lea		array, [array+aindex-VSIZE]	; align pointer to vector boundary
		clone	pattern, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		add		size, aindex				; size += aindex
		lea		index, [size - VSIZE]		; index = size - VSIZE
		mov		cmask, 0xFFFF
		shr		cmask, aindexl				; adjust cmask for unaligned search
		movdqa	flags, [array]
	pcmpeq#x	flags, pattern				; check array[0] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
;---[Vector loop]--------------------------
.vloop:	movdqa	flags, [array - 1*VSIZE]
	pcmpeq#x	flags, pattern				; check array[-1] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array - 2*VSIZE]
	pcmpeq#x	flags, pattern				; check array[-2] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array - 3*VSIZE]
	pcmpeq#x	flags, pattern				; check array[-3] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array - 4*VSIZE]
	pcmpeq#x	flags, pattern				; check array[-4] for pattaren
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		sub		index, VSIZE				; index -= VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
	prefetchnta	[array - PSTEP]				; prefetch next portion of data
		sub		array, 4 * VSIZE			; array -= 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsr		fmask, fmask				; find index of first occurence of pattern
		add		index, fmask				; if (index += fmask < 0), then go to not found branch
		js		.ntfnd						;     then go to not found branch
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
.sloop:	sub		array, bytes				; array--
		sub		index, 1					; index--
		cmp		[array], reg				; if (array[0] == pattern)
		je		.exit						;     then go to exit
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
FindBwd8:	FIND_BWD	dl, b
FindBwd16:	FIND_BWD	dx, w
FindBwd32:	FIND_BWD	edx, d
FindBwd64:	FIND_BWD	rdx, q

;==============================================================================;
;       Binary search                                                          ;
;==============================================================================;
macro	FIND_BIN	value, x, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
median	equ		r8							; median value
median1	equ		r9							; median value + 1
left	equ		rax							; pointer to start of the data array
right	equ		size						; pointer to end of the data array
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.ntfnd						;     then go to not found branch
		xor		left, left					; left = 0
		sub		size, 1						; if (--size == 0)
		jz		.skip						;     then skip binary search loop
;---[Binary search loop]-------------------
.loop:	lea		median, [left + right]
		shr		median, 1					; median = (left + right) / 2
		lea		median1, [median + 1]		; median1 = median + 1
		cmp		value, [array+median*bytes]	; if (value condition array[median])
		cmov#x	left, median1				;     then left = median + 1
		cmovn#x	right, median				;     else right = median
		cmp		left, right
		jb		.loop						; do while (left < right)
;------------------------------------------
.skip:	cmp		value, [array + left*bytes]	; if (value != array[left])
		jne		.ntfnd						;     then return NOT_FOUND
		ret									;     else return left
;---[Not found branch]---------------------
.ntfnd:	mov		left, NOT_FOUND				; return NOT_FOUND
		ret
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
FindAsc_uint8:	FIND_BIN	dl, a, 0
FindAsc_uint16:	FIND_BIN	dx, a, 1
FindAsc_uint32:	FIND_BIN	edx, a, 2
FindAsc_uint64:	FIND_BIN	rdx, a, 3

; Signed integer types
FindAsc_sint8:	FIND_BIN	dl, g, 0
FindAsc_sint16:	FIND_BIN	dx, g, 1
FindAsc_sint32:	FIND_BIN	edx, g, 2
FindAsc_sint64:	FIND_BIN	rdx, g, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
FindDsc_uint8:	FIND_BIN	dl, b, 0
FindDsc_uint16:	FIND_BIN	dx, b, 1
FindDsc_uint32:	FIND_BIN	edx, b, 2
FindDsc_uint64:	FIND_BIN	rdx, b, 3

; Signed integer types
FindDsc_sint8:	FIND_BIN	dl, l, 0
FindDsc_sint16:	FIND_BIN	dx, l, 1
FindDsc_sint32:	FIND_BIN	edx, l, 2
FindDsc_sint64:	FIND_BIN	rdx, l, 3

;******************************************************************************;
;       Sorting algorithms                                                     ;
;******************************************************************************;

;==============================================================================;
;       Mapping floating-point values to signed integer values                 ;
;==============================================================================;
macro	MAP		reg1, reg2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; offset from beginning of array
aindex	equ		rcx							; array offset from vector boundary
ptr		equ		r10							; temporary pointer to array
blend	equ		xmm0						; blending mask
temp	equ		xmm1						; temporary register
mask	equ		xmm2						; data mask
zero	equ		xmm3						; 0
data	equ		xmm4						; register which holds original data
if x eq d
dmask	= DMASK_FLT32						; data mask
scale	= 2									; scale value
else if x eq q
dmask	= DMASK_FLT64						; data mask
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.exit						; if (size == 0), then go to exit
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		initreg	mask, index, dmask			; mask = dmask
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		mov		ptr, array					; ptr = array
		clone	mask, scale					; duplicate value through the entire register
;---[Unaligned operation]------------------
		add		size, aindex				; size += aindex
		shl		aindex, 4					; compute shift in mask array
		movdqa	blend, dqword [maskS1 + aindex]
		xor		index, index				; index = 0
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [array]				; temp = array[0]
		movdqa	data, temp					; data = temp
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
	pblendvb	temp, data					; blend temp with original data
		movdqa	[array], temp				; array[0] = temp
		pxor	blend, blend				; blend = 0
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 1*VSIZE]		; temp = ptr[1]
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
		movdqa	[ptr + 1*VSIZE], temp		; ptr[1] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 2*VSIZE]		; temp = ptr[2]
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
		movdqa	[ptr + 2*VSIZE], temp		; ptr[2] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 3*VSIZE]		; temp = ptr[3]
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
		movdqa	[ptr + 3*VSIZE], temp		; ptr[3] = temp
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then process array tail
		movdqa	temp, [ptr + 4*VSIZE]		; temp = ptr[4]
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
		movdqa	[ptr + 4*VSIZE], temp		; ptr[4] = temp
	prefetchnta	[ptr + PSTEP]				; prefetch next portion of data
		add		ptr, 4 * VSIZE				; ptr += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.tail:	shl		size, 4						; compute shift in mask array
		pandn	blend, dqword [maskS2 + size]
		movdqa	temp, [array + index]		; temp = array[index]
		movdqa	data, temp					; data = temp
		pxor	zero, zero					; zero = 0
	pcmpgt#x	zero, temp					; if (temp < 0)
		pand	zero, mask					;     then zero = dmask
		pxor	temp, zero					; temp ^= zero
	pblendvb	data, temp					; blend temp with original data
		movdqa	[array + index], data		; array[index] = temp
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		reg1, [array]				; reg1 = array[0]
		mov		reg2, dmask					; reg2 = reg1 ^ dmask
		xor		reg2, reg1					; if (reg1 < 0)
		cmovs	reg1, reg2					;     reg1 = reg2
		mov		[array], reg1				; array[0] = reg1
		add		array, bytes				; array++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Normal exit]--------------------------
.exit:	ret
}
Map_flt32:		MAP	eax, edx, d
Map_flt64:		MAP	rax, rdx, q

;==============================================================================;
;       Quick sort                                                             ;
;==============================================================================;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	QUICKSORT_INT	median, key1, key2, op1, op2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		jmp		.start
;---[QUICK SORT]---------------------------
.qsort:	mov		half, size
		mov		left, -1					; left = -1
		shr		half, 1						; half = size / 2
		mov		right, size					; right = size
		mov		median, [array+half*bytes]	; median = array[half]
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	xchg	key1, key2
		mov		[array+left*bytes], key1	; array[left] = key2
		mov		[array+right*bytes], key2	; array[right] = key1
;---[Internal loop 1]----------------------
.loop1:	add		left, 1						; left++
		mov		key1, [array+left*bytes]	; key1 = array[left]
		cmp		key1, median
		j#op1	.loop1						; do while (key1 condition1 median)
;---[Internal loop 2]----------------------
.loop2:	sub		right, 1					; right--
		mov		key2, [array+right*bytes]	; key2 = array[right]
		cmp		key2, median
		j#op2	.loop2						; do while (key2 condition2 median)
;------------------------------------------
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[end of swap loop]---------------------
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rarray, [array+right*bytes]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		size, lsize
		call	.start						; call QuickSort (larray, lsize)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		array, rarray				; }
		jmp		.start
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		call	.start						; call QuickSort (rarray, rsize)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.start:	cmp		size, minsize
		ja		.qsort						; do while (size > minsize)
;---[END OF QUICK SORT]--------------------
		mov		left, 1						; left = 1
;---[INSERT SORT]--------------------------
.isort:	mov		right, left					; right = left
		mov		key1, [array + right*bytes]	; key1 = array[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array + right*bytes-bytes]
		cmp		key1, key2					; if (key1 condition1 array[right-1])
		jn#op1	.break						; {
		mov		[array + right*bytes], key2	;     array[right] = array[right-1]
		sub		right, 1					;     right-- }
		jnz		.iloop						; do while (right != 0)
;---[end of internal loop]-----------------
.break:	mov		[array + right*bytes], key1	; array[right] = key1
		add		left, 1						; left++
		cmp		left, size
		jb		.isort						; do while (left < size)
;---[END OF INSERT SORT]-------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUICKSORT_FLT	sort_func, convert_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_size	equ		stack + 1 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
		ret
}

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortAsc_uint8:		QUICKSORT_INT	al, dl, cl, b, a, 0
QuickSortAsc_uint16:	QUICKSORT_INT	ax, dx, cx, b, a, 1
QuickSortAsc_uint32:	QUICKSORT_INT	eax, edx, ecx, b, a, 2
QuickSortAsc_uint64:	QUICKSORT_INT	rax, rdx, rcx, b, a, 3

; Signed integer types
QuickSortAsc_sint8:		QUICKSORT_INT	al, dl, cl, l, g, 0
QuickSortAsc_sint16:	QUICKSORT_INT	ax, dx, cx, l, g, 1
QuickSortAsc_sint32:	QUICKSORT_INT	eax, edx, ecx, l, g, 2
QuickSortAsc_sint64:	QUICKSORT_INT	rax, rdx, rcx, l, g, 3

; Floating-point types
QuickSortAsc_flt32:		QUICKSORT_FLT	QuickSortAsc_sint32, Map_flt32
QuickSortAsc_flt64:		QUICKSORT_FLT	QuickSortAsc_sint64, Map_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortDsc_uint8:		QUICKSORT_INT	al, dl, cl, a, b, 0
QuickSortDsc_uint16:	QUICKSORT_INT	ax, dx, cx, a, b, 1
QuickSortDsc_uint32:	QUICKSORT_INT	eax, edx, ecx, a, b, 2
QuickSortDsc_uint64:	QUICKSORT_INT	rax, rdx, rcx, a, b, 3

; Signed integer types
QuickSortDsc_sint8:		QUICKSORT_INT	al, dl, cl, g, l, 0
QuickSortDsc_sint16:	QUICKSORT_INT	ax, dx, cx, g, l, 1
QuickSortDsc_sint32:	QUICKSORT_INT	eax, edx, ecx, g, l, 2
QuickSortDsc_sint64:	QUICKSORT_INT	rax, rdx, rcx, g, l, 3

; Floating-point types
QuickSortDsc_flt32:		QUICKSORT_FLT	QuickSortDsc_sint32, Map_flt32
QuickSortDsc_flt64:		QUICKSORT_FLT	QuickSortDsc_sint64, Map_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
macro	QUICKSORT_KEY_INT	median, key1, key2, op1, op2, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
half	equ		rax							; half of array size
left	equ		r8							; left index
right	equ		r9							; right index
ptr1	equ		r10							; temporary ptr #1
ptr2	equ		r11							; temporary ptr #2
lsize	equ		left						; size of left part of array
rsize	equ		size						; size of right part of array
larray	equ		array						; pointer to left part of array
rarray	equ		right						; pointer to right part of array
lptr	equ		ptr							; pointer to left part of ptr array
rptr	equ		half						; pointer to right part of ptr array
temp	equ		half						; temporary register
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
minsize	= 32								; min array size is aceptable for Quick sort
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit
		jmp		.start
;---[QUICK SORT]---------------------------
.qsort:	mov		half, size
		mov		left, -1					; left = -1
		shr		half, 1						; half = size / 2
		mov		right, size					; right = size
		mov		median, [array + half*bytes]; median = array[half]
		jmp		.loop1
;---[Swap loop]----------------------------
.swap:	xchg	key1, key2
		mov		[array + left*bytes], key1	; array[left] = key2
		mov		[array + right*bytes], key2	; array[right] = key1
		mov		ptr1, [ptr + left * 8]		; ptr1 = ptr[left]
		mov		ptr2, [ptr + right * 8]		; ptr2 = ptr[right]
		xchg	ptr1, ptr2
		mov		[ptr + left * 8], ptr1		; ptr[left] = ptr2
		mov		[ptr + right * 8], ptr2		; ptr[right] = ptr1
;---[Internal loop 1]----------------------
.loop1:	add		left, 1						; left++
		mov		key1, [array + left*bytes]	; key1 = array[left]
		cmp		key1, median
		j#op1	.loop1						; do while (key1 condition1 median)
;---[Internal loop 2]----------------------
.loop2:	sub		right, 1					; right--
		mov		key2, [array + right*bytes]	; key2 = array[right]
		cmp		key2, median
		j#op2	.loop2						; do while (key2 condition2 median)
;------------------------------------------
		cmp		left, right
		jb		.swap						; do while (left < right)
;---[end of swap loop]---------------------
		add		right, 1
		sub		rsize, right				; rsize = size - (right + 1)
		lea		rptr, [ptr + right * 8]		; rptr = ptr + (right + 1)
		lea		rarray, [array+right*bytes]	; rarray = array + (right + 1)
		cmp		lsize, rsize				; if (lsize <= rsize)
		ja		.else						; {
;---[if lsize <= rsize]--------------------
		cmp		lsize, 1					; if (lsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], rarray			; save "rarray" variable into the stack
		mov		[s_ptr], rptr				; save "rptr" variable into the stack
		mov		[s_size], rsize				; save "rsize" variable into the stack
		mov		size, lsize
		call	.start						; call QuickSortKey (larray, lptr, lsize)
		mov		rarray, [s_array]			; get "rarray" variable from the stack
		mov		rptr, [s_ptr]				; get "rptr" variable from the stack
		mov		rsize, [s_size]				; get "rsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		array, rarray
		mov		ptr, rptr					; }
		jmp		.start
;---[else]---------------------------------
.else:	cmp		rsize, 1					; if (rsize > 1)
		jbe		@f							; {
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], larray			; save "larray" variable into the stack
		mov		[s_ptr], lptr				; save "lptr" variable into the stack
		mov		[s_size], lsize				; save "lsize" variable into the stack
		mov		array, rarray
		mov		ptr, rptr
		call	.start						; call QuickSortKey (rarray, rptr, rsize)
		mov		larray, [s_array]			; get "larray" variable from the stack
		mov		lptr, [s_ptr]				; get "lptr" variable from the stack
		mov		lsize, [s_size]				; get "lsize" variable from the stack
		add		stack, space				; restoring back the stack pointer
@@:		mov		size, lsize					; }
;---[end if]-------------------------------
.start:	cmp		size, minsize
		ja		.qsort						; do while (size > minsize)
;---[END OF QUICK SORT]--------------------
		mov		left, 1						; left = 1
;---[INSERT SORT]--------------------------
.isort:	mov		right, left					; right = left
		mov		key1, [array + right*bytes]	; key1 = array[right]
		mov		temp, [ptr + right * 8]		; temp = ptr[right]
;---[Internal loop]------------------------
.iloop:	mov		key2, [array+right*bytes-bytes]
		cmp		key1, key2					; if (key1 condition1 array[right-1])
		jn#op1	.break						; {
		mov		[array+right*bytes], key2	;     array[right] = array[right-1]
		mov		ptr2, [ptr + right * 8 - 8]	;     ptr2 = ptr[right-1]
		mov		[ptr + right * 8], ptr2		;     ptr[right] = ptr2
		sub		right, 1					;     right-- }
		jnz		.iloop						; do while (right != 0)
;---[end of internal loop]-----------------
.break:	mov		[array + right*bytes], key1	; array[right] = key1
		mov		[ptr + right * 8], temp		; ptr[right] = temp
		add		left, 1						; left++
		cmp		left, size
		jb		.isort						; do while (left < size)
;---[END OF INSERT SORT]-------------------
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	QUICKSORT_KEY_FLT	sort_func, convert_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
ptr		equ		rsi							; pointer to array of pointers to data
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
csize	equ		rsi							; array size (count of elements)
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_ptr	equ		stack + 1 * 8				; stack position of "ptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		csize, size
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		csize, [s_size]				; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
		ret
}

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortKeyAsc_uint8:	QUICKSORT_KEY_INT	al, r10b, r11b, b, a, 0
QuickSortKeyAsc_uint16:	QUICKSORT_KEY_INT	ax, r10w, r11w, b, a, 1
QuickSortKeyAsc_uint32:	QUICKSORT_KEY_INT	eax, r10d, r11d, b, a, 2
QuickSortKeyAsc_uint64:	QUICKSORT_KEY_INT	rax, r10, r11, b, a, 3

; Signed integer types
QuickSortKeyAsc_sint8:	QUICKSORT_KEY_INT	al, r10b, r11b, l, g, 0
QuickSortKeyAsc_sint16:	QUICKSORT_KEY_INT	ax, r10w, r11w, l, g, 1
QuickSortKeyAsc_sint32:	QUICKSORT_KEY_INT	eax, r10d, r11d, l, g, 2
QuickSortKeyAsc_sint64:	QUICKSORT_KEY_INT	rax, r10, r11, l, g, 3

; Floating-point types
QuickSortKeyAsc_flt32:	QUICKSORT_KEY_FLT	QuickSortKeyAsc_sint32, Map_flt32
QuickSortKeyAsc_flt64:	QUICKSORT_KEY_FLT	QuickSortKeyAsc_sint64, Map_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
QuickSortKeyDsc_uint8:	QUICKSORT_KEY_INT	al, r10b, r11b, a, b, 0
QuickSortKeyDsc_uint16:	QUICKSORT_KEY_INT	ax, r10w, r11w, a, b, 1
QuickSortKeyDsc_uint32:	QUICKSORT_KEY_INT	eax, r10d, r11d, a, b, 2
QuickSortKeyDsc_uint64:	QUICKSORT_KEY_INT	rax, r10, r11, a, b, 3

; Signed integer types
QuickSortKeyDsc_sint8:	QUICKSORT_KEY_INT	al, r10b, r11b, g, l, 0
QuickSortKeyDsc_sint16:	QUICKSORT_KEY_INT	ax, r10w, r11w, g, l, 1
QuickSortKeyDsc_sint32:	QUICKSORT_KEY_INT	eax, r10d, r11d, g, l, 2
QuickSortKeyDsc_sint64:	QUICKSORT_KEY_INT	rax, r10, r11, g, l, 3

; Floating-point types
QuickSortKeyDsc_flt32:	QUICKSORT_KEY_FLT	QuickSortKeyDsc_sint32, Map_flt32
QuickSortKeyDsc_flt64:	QUICKSORT_KEY_FLT	QuickSortKeyDsc_sint64, Map_flt64

;==============================================================================;
;       Radix sort                                                             ;
;==============================================================================;
AscOrder_ui:
;---[Parameters]---------------------------
stat	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_ui:
;---[Parameters]---------------------------
stat	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		stat, 256 * 8				; stat += 256
		mov		size, 256					; size = 256 (partial key range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
AscOrder_si:
;---[Parameters]---------------------------
stat	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		stat, 128 * 8				; stat += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		sub		stat, 256 * 8				; stat -= 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		add		stat, 8						; stat++
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
DscOrder_si:
;---[Parameters]---------------------------
stat	equ		rdi							; pointer to statistics array
;---[Internal variables]-------------------
size	equ		rcx							; size of statistics array
sum		equ		rax							; sum value
temp	equ		rdx							; temporary register
;------------------------------------------
		xor		sum, sum					; sum = 0
		add		stat, 128 * 8				; stat += 128
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		add		stat, 256 * 8				; stat += 256
		mov		size, 128					; size = 128 (partial key half range)
;---[Address calculating loop]-------------
@@:		sub		stat, 8						; stat--
		mov		temp, [stat]				; temp = stat[0]
		mov		[stat], sum					; stat[0] = sum
		add		sum, temp					; sum += temp
		sub		size, 1						; size--
		jnz		@b							; do while (size != 0)
;------------------------------------------
		ret
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	STAT	scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
stat	equ		rdx							; pointer to statistics array
;---[Internal variables]-------------------
count	equ		rcx							; count of vector elements in stat array
ptr		equ		rax							; temporarry pointer to stat array
key		equ		ptr							; key register (is used to compute adress)
zero	equ		xmm0						; zero value (vector register)
bscale	= 6									; block scale factor
bytes	= 1 shl scale						; size of array element (bytes)
block	= 1 shl bscale						; block size (bytes)
len		= 256 * 8							; len of stat array row
;------------------------------------------
		pxor	zero, zero					; zero = 0
		mov		ptr, stat					; ptr = stat
		mov		count, len shr (bscale - scale)
;---[Stat initialization loop]-------------
.init:	movdqa	[ptr + 0x00], zero			; ptr[0] = 0
		movdqa	[ptr + 0x10], zero			; ptr[16] = 0
		movdqa	[ptr + 0x20], zero			; ptr[32] = 0
		movdqa	[ptr + 0x30], zero			; ptr[48] = 0
		add		ptr, block					; ptr += block
		sub		count, 1					; count--
		jnz		.init						; do while (count != 0)
;---[Statistics loop]----------------------
.stat:
i = 0
while i < bytes
		movzx	key, byte [array + i]		; get partial key
		add		qword [stat + i * len + key * 8], 1
	i = i + 1
end while
		add		array, bytes				; move to next element
		sub		size, 1						; size--
		jnz		.stat						; do while (count != 0)
;------------------------------------------
		ret
}
Stat8:	STAT	0
Stat16:	STAT	1
Stat32:	STAT	2
Stat64:	STAT	3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Array sorting                                                          ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Sorting stage                                                          ;
;------------------------------------------------------------------------------;
macro	SORTSTAGE	temp, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target keys array
skey	equ		rsi							; pointer to source keys array
size	equ		rdx							; array size (count of elements)
stat	equ		rcx							; pointer to statistics array
index	equ		r8							; index of partial key
;---[Internal variables]-------------------
pos		equ		r11							; address where element should be copied
key		equ		rax							; key register (is used to compute adress)
bytes	= 1 shl scale						; size of array element (bytes)
;---[Sorting loop]-------------------------
.loop:	movzx	key, byte [skey + index]	; get partial key
		mov		pos, [stat + key * 8]		; pos = stat[key]
		add		qword [stat + key * 8], 1	; stat[key]++
		mov		temp, [skey]				; temp = skey[0]
		mov		[tkey + pos * bytes], temp	; tkey[pos] = temp
		add		skey, bytes					; skey++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
		ret
}
Stage8:		SORTSTAGE	al, 0
Stage16:	SORTSTAGE	ax, 1
Stage32:	SORTSTAGE	eax, 2
Stage64:	SORTSTAGE	rax, 3

;------------------------------------------------------------------------------;
;       Radix sort core                                                        ;
;------------------------------------------------------------------------------;
macro	RADIXSORT_CORE	order1, order2, stat, stage, scale
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;---[Internal variables]-------------------
param1	equ		rdi							; register to pass 1 parameter to function
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
param4	equ		rcx							; register to pass 4 parameter to function
param5	equ		r8							; register to pass 5 parameter to function
stack	equ		rsp							; stack pointer
bytes	= 1 shl scale						; size of array element (bytes)
stat_sz	= bytes * 256 * 8					; size of statistics array (bytes)
space	= stat_sz + 3 * 8					; stack size required by the procedure
s_array	equ		stack + stat_sz + 0 * 8		; stack position of "array" variable
s_temp	equ		stack + stat_sz + 1 * 8		; stack position of "temp" variable
s_size	equ		stack + stat_sz + 2 * 8		; stack position of "size" variable
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Collect statistics]-------------------
		mov		param2, size
		mov		param3, stack
		call	stat						; call Statistics (array, size, stack);
;---[Sort partial keys]--------------------
if bytes = 1
		mov		param1, [s_temp]
		mov		param2, [s_array]
		mov		param3, [s_size]
		call	CopyFwd8					; call Copy (temp, array, size)
end if
i = 0
while i < bytes - 1
	if i mod 2 = 0
		lea		param1, [stack + i * 256 * 8]
		call	order1						; call order1 (stack[i])
		mov		param1, [s_temp]
		mov		param2, [s_array]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	stage						; call stage (temp, array, size, stack[i], i)
	else
		lea		param1, [stack + i * 256 * 8]
		call	order1						; call order1 (stack[i])
		mov		param1, [s_array]
		mov		param2, [s_temp]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	stage						; call stage (array, temp, size, stack[i], i)
	end if
	i = i + 1
end while
		lea		param1, [stack + i * 256 * 8]
		call	order2						; call order2 (stack[i])
		mov		param1, [s_array]
		mov		param2, [s_temp]
		mov		param3, [s_size]
		lea		param4, [stack + i * 256 * 8]
		mov		param5, i
		call	stage						; call stage (array, temp, size, stack[i], i)
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIXSORT_INT	sort_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; size of array
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						;     then go to exit from the procedure
;---[Call sort function]-------------------
		jmp		sort_func					; call sorting function
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIXSORT_FLT	sort_func, convert_func
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to source array
temp	equ		rsi							; pointer to temporary array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
csize	equ		rsi							; array size (count of elements)
stack	equ		rsp							; stack pointer
s_array	equ		stack + 0 * 8				; stack position of "array" variable
s_temp	equ		stack + 1 * 8				; stack position of "temp" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
space	= 3 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
		sub		stack, space				; reserving stack size for local vars
		mov		[s_array], array			; save "array" variable into the stack
		mov		[s_temp], temp				; save "temp" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		csize, size
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		temp, [s_temp]				; get "temp" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		array, [s_array]			; get "array" variable from the stack
		mov		csize, [s_size]				; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreAsc_uint8:		RADIXSORT_CORE	AscOrder_ui, AscOrder_ui, Stat8, Stage8, 0
RadixSortCoreAsc_uint16:	RADIXSORT_CORE	AscOrder_ui, AscOrder_ui, Stat16, Stage16, 1
RadixSortCoreAsc_uint32:	RADIXSORT_CORE	AscOrder_ui, AscOrder_ui, Stat32, Stage32, 2
RadixSortCoreAsc_uint64:	RADIXSORT_CORE	AscOrder_ui, AscOrder_ui, Stat64, Stage64, 3
RadixSortAsc_uint8:			RADIXSORT_INT	RadixSortCoreAsc_uint8
RadixSortAsc_uint16:		RADIXSORT_INT	RadixSortCoreAsc_uint16
RadixSortAsc_uint32:		RADIXSORT_INT	RadixSortCoreAsc_uint32
RadixSortAsc_uint64:		RADIXSORT_INT	RadixSortCoreAsc_uint64

; Signed integer types
RadixSortCoreAsc_sint8:		RADIXSORT_CORE	AscOrder_ui, AscOrder_si, Stat8, Stage8, 0
RadixSortCoreAsc_sint16:	RADIXSORT_CORE	AscOrder_ui, AscOrder_si, Stat16, Stage16, 1
RadixSortCoreAsc_sint32:	RADIXSORT_CORE	AscOrder_ui, AscOrder_si, Stat32, Stage32, 2
RadixSortCoreAsc_sint64:	RADIXSORT_CORE	AscOrder_ui, AscOrder_si, Stat64, Stage64, 3
RadixSortAsc_sint8:			RADIXSORT_INT	RadixSortCoreAsc_sint8
RadixSortAsc_sint16:		RADIXSORT_INT	RadixSortCoreAsc_sint16
RadixSortAsc_sint32:		RADIXSORT_INT	RadixSortCoreAsc_sint32
RadixSortAsc_sint64:		RADIXSORT_INT	RadixSortCoreAsc_sint64

; Floating-point types
RadixSortAsc_flt32:			RADIXSORT_FLT	RadixSortCoreAsc_sint32, Map_flt32
RadixSortAsc_flt64:			RADIXSORT_FLT	RadixSortCoreAsc_sint64, Map_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreDsc_uint8:		RADIXSORT_CORE	DscOrder_ui, DscOrder_ui, Stat8, Stage8, 0
RadixSortCoreDsc_uint16:	RADIXSORT_CORE	DscOrder_ui, DscOrder_ui, Stat16, Stage16, 1
RadixSortCoreDsc_uint32:	RADIXSORT_CORE	DscOrder_ui, DscOrder_ui, Stat32, Stage32, 2
RadixSortCoreDsc_uint64:	RADIXSORT_CORE	DscOrder_ui, DscOrder_ui, Stat64, Stage64, 3
RadixSortDsc_uint8:			RADIXSORT_INT	RadixSortCoreDsc_uint8
RadixSortDsc_uint16:		RADIXSORT_INT	RadixSortCoreDsc_uint16
RadixSortDsc_uint32:		RADIXSORT_INT	RadixSortCoreDsc_uint32
RadixSortDsc_uint64:		RADIXSORT_INT	RadixSortCoreDsc_uint64

; Signed integer types
RadixSortCoreDsc_sint8:		RADIXSORT_CORE	DscOrder_ui, DscOrder_si, Stat8, Stage8, 0
RadixSortCoreDsc_sint16:	RADIXSORT_CORE	DscOrder_ui, DscOrder_si, Stat16, Stage16, 1
RadixSortCoreDsc_sint32:	RADIXSORT_CORE	DscOrder_ui, DscOrder_si, Stat32, Stage32, 2
RadixSortCoreDsc_sint64:	RADIXSORT_CORE	DscOrder_ui, DscOrder_si, Stat64, Stage64, 3
RadixSortDsc_sint8:			RADIXSORT_INT	RadixSortCoreDsc_sint8
RadixSortDsc_sint16:		RADIXSORT_INT	RadixSortCoreDsc_sint16
RadixSortDsc_sint32:		RADIXSORT_INT	RadixSortCoreDsc_sint32
RadixSortDsc_sint64:		RADIXSORT_INT	RadixSortCoreDsc_sint64

; Floating-point types
RadixSortDsc_flt32:			RADIXSORT_FLT	RadixSortCoreDsc_sint32, Map_flt32
RadixSortDsc_flt64:			RADIXSORT_FLT	RadixSortCoreDsc_sint64, Map_flt64

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Key sorting                                                            ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

;------------------------------------------------------------------------------;
;       Sorting stage                                                          ;
;------------------------------------------------------------------------------;
macro	SORTSTAGE_KEY	temp, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target keys array
skey	equ		rsi							; pointer to source keys array
tptr	equ		rdx							; pointer to target array of pointers to data
sptr	equ		rcx							; pointer to source array of pointers to data
size	equ		r8							; array size (count of elements)
stat	equ		r9							; pointer to statistics array
index	equ		r10							; index of partial key
;---[Internal variables]-------------------
pos		equ		r11							; address where element should be copied
key		equ		rax							; key register (is used to compute adress)
ptr		equ		key							; temporary ptr
bytes	= 1 shl scale						; size of array element (bytes)
;---[Sorting loop]-------------------------
.loop:	movzx	key, byte [skey + index]	; get partial key
		mov		pos, [stat + key * 8]		; pos = stat[key]
		add		qword [stat + key * 8], 1	; stat[key]++
		mov		temp, [skey]				; temp = skey[0]
		mov		[tkey + pos * bytes], temp	; tkey[pos] = temp
		mov		ptr, [sptr]					; ptr = sptr[0]
		mov		[tptr + pos * 8], ptr		; tptr[pos] = ptr
		add		skey, bytes					; skey++
		add		sptr, 8						; sptr++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;------------------------------------------
		ret
}
StageKey8:	SORTSTAGE_KEY	al, 0
StageKey16:	SORTSTAGE_KEY	ax, 1
StageKey32:	SORTSTAGE_KEY	eax, 2
StageKey64:	SORTSTAGE_KEY	rax, 3

;------------------------------------------------------------------------------;
;       Radix sort core                                                        ;
;------------------------------------------------------------------------------;
macro	RADIXSORT_KEY_CORE	order1, order2, stat, stage, scale
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
tkey	equ		rsi							; pointer to temporary key array
ptr		equ		rdx							; pointer to array of pointers to data
tptr	equ		rcx							; pointer to temporarys array of pointers to data
size	equ		r8							; size of array
;---[Internal variables]-------------------
param1	equ		rdi							; register to pass 1 parameter to function
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
param4	equ		rcx							; register to pass 4 parameter to function
param5	equ		r8							; register to pass 5 parameter to function
param6	equ		r9							; register to pass 6 parameter to function
param7	equ		r10							; register to pass 7 parameter to function
stack	equ		rsp							; stack pointer
bytes	= 1 shl scale						; size of array element (bytes)
stat_sz	= bytes * 256 * 8					; size of statistics array (bytes)
space	= stat_sz + 5 * 8					; stack size required by the procedure
s_key	equ		stack + stat_sz + 0 * 8		; stack position of "key" variable
s_tkey	equ		stack + stat_sz + 1 * 8		; stack position of "tkey" variable
s_ptr	equ		stack + stat_sz + 2 * 8		; stack position of "ptr" variable
s_tptr	equ		stack + stat_sz + 3 * 8		; stack position of "tptr" variable
s_size	equ		stack + stat_sz + 4 * 8		; stack position of "size" variable
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Collect statistics]-------------------
		mov		param2, size
		mov		param3, stack
		call	stat						; call Statistics (key, size, stack);
;---[Sort partial keys]--------------------
if bytes = 1
		mov		param1, [s_tkey]
		mov		param2, [s_key]
		mov		param3, [s_size]
		call	CopyFwd8					; call Copy (tkey, key, size)
		mov		param1, [s_tptr]
		mov		param2, [s_ptr]
		mov		param3, [s_size]
		call	CopyFwd64					; call Copy (tptr, ptr, size)
end if
i = 0
while i < bytes - 1
	if i mod 2 = 0
		lea		param1, [stack + i * 256 * 8]
		call	order1						; call order1 (stack[i])
		mov		param1, [s_tkey]
		mov		param2, [s_key]
		mov		param3, [s_tptr]
		mov		param4, [s_ptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	stage						; call stage (tkey, key, tptr, ptr, size, stack[i], i)
	else
		lea		param1, [stack + i * 256 * 8]
		call	order1						; call order1 (stack[i])
		mov		param1, [s_key]
		mov		param2, [s_tkey]
		mov		param3, [s_ptr]
		mov		param4, [s_tptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	stage						; call stage (key, tkey, ptr, tptr, size, stack[i], i)
	end if
	i = i + 1
end while
		lea		param1, [stack + i * 256 * 8]
		call	order2						; call order2 (stack[i])
		mov		param1, [s_key]
		mov		param2, [s_tkey]
		mov		param3, [s_ptr]
		mov		param4, [s_tptr]
		mov		param5, [s_size]
		lea		param6, [stack + i * 256 * 8]
		mov		param7, i
		call	stage						; call stage (key, tkey, ptr, tptr, size, stack[i], i)
		add		stack, space				; restoring back the stack pointer
		ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIXSORT_KEY_INT	sort_func
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
tkey	equ		rsi							; pointer to temporary key array
ptr		equ		rdx							; pointer to array of pointers to data
tptr	equ		rcx							; pointer to temporarys array of pointers to data
size	equ		r8							; size of array
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
;---[Call sort function]-------------------
		jmp		sort_func					; call sorting function
.exit:	ret
}
;:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
macro	RADIXSORT_KEY_FLT	sort_func, convert_func
{
;---[Parameters]---------------------------
key		equ		rdi							; pointer to key array
tkey	equ		rsi							; pointer to temporary key array
ptr		equ		rdx							; pointer to array of pointers to data
tptr	equ		rcx							; pointer to temporarys array of pointers to data
size	equ		r8							; array size (count of elements)
;---[Internal variables]-------------------
csize	equ		rsi							; array size (count of elements)
stack	equ		rsp							; stack pointer
s_key	equ		stack + 0 * 8				; stack position of "key" variable
s_tkey	equ		stack + 1 * 8				; stack position of "tkey" variable
s_ptr	equ		stack + 2 * 8				; stack position of "ptr" variable
s_tptr	equ		stack + 3 * 8				; stack position of "tptr" variable
s_size	equ		stack + 4 * 8				; stack position of "size" variable
space	= 5 * 8								; stack size required by the procedure
;------------------------------------------
		cmp		size, 1						; if (size <= 1)
		jbe		.exit						; then go to exit from the procedure
		sub		stack, space				; reserving stack size for local vars
		mov		[s_key], key				; save "key" variable into the stack
		mov		[s_tkey], tkey				; save "tkey" variable into the stack
		mov		[s_ptr], ptr				; save "ptr" variable into the stack
		mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_size], size				; save "size" variable into the stack
;---[Convert array]------------------------
		mov		csize, size
		call	convert_func				; call converting function
;---[Sort array]---------------------------
		mov		key, [s_key]				; get "key" variable from the stack
		mov		tkey, [s_tkey]				; get "tkey" variable from the stack
		mov		ptr, [s_ptr]				; get "ptr" variable from the stack
		mov		tptr, [s_tptr]				; get "tptr" variable from the stack
		mov		size, [s_size]				; get "size" variable from the stack
		call	sort_func					; call sorting function
;---[Convert array]------------------------
		mov		key, [s_key]				; get "key" variable from the stack
		mov		csize, [s_size]				; get "size" variable from the stack
		call	convert_func				; call converting function
		add		stack, space				; restoring back the stack pointer
.exit:	ret
}

;------------------------------------------------------------------------------;
;       Ascending sort order                                                   ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreKeyAsc_uint8:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_ui, Stat8, StageKey8, 0
RadixSortCoreKeyAsc_uint16:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_ui, Stat16, StageKey16, 1
RadixSortCoreKeyAsc_uint32:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_ui, Stat32, StageKey32, 2
RadixSortCoreKeyAsc_uint64:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_ui, Stat64, StageKey64, 3
RadixSortKeyAsc_uint8:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_uint8
RadixSortKeyAsc_uint16:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_uint16
RadixSortKeyAsc_uint32:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_uint32
RadixSortKeyAsc_uint64:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_uint64

; Signed integer types
RadixSortCoreKeyAsc_sint8:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_si, Stat8, StageKey8, 0
RadixSortCoreKeyAsc_sint16:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_si, Stat16, StageKey16, 1
RadixSortCoreKeyAsc_sint32:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_si, Stat32, StageKey32, 2
RadixSortCoreKeyAsc_sint64:	RADIXSORT_KEY_CORE	AscOrder_ui, AscOrder_si, Stat64, StageKey64, 3
RadixSortKeyAsc_sint8:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_sint8
RadixSortKeyAsc_sint16:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_sint16
RadixSortKeyAsc_sint32:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_sint32
RadixSortKeyAsc_sint64:		RADIXSORT_KEY_INT	RadixSortCoreKeyAsc_sint64

; Floating-point types
RadixSortKeyAsc_flt32:		RADIXSORT_KEY_FLT	RadixSortCoreKeyAsc_sint32, Map_flt32
RadixSortKeyAsc_flt64:		RADIXSORT_KEY_FLT	RadixSortCoreKeyAsc_sint64, Map_flt64

;------------------------------------------------------------------------------;
;       Descending sort order                                                  ;
;------------------------------------------------------------------------------;

; Unsigned integer types
RadixSortCoreKeyDsc_uint8:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_ui, Stat8, StageKey8, 0
RadixSortCoreKeyDsc_uint16:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_ui, Stat16, StageKey16, 1
RadixSortCoreKeyDsc_uint32:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_ui, Stat32, StageKey32, 2
RadixSortCoreKeyDsc_uint64:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_ui, Stat64, StageKey64, 3
RadixSortKeyDsc_uint8:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_uint8
RadixSortKeyDsc_uint16:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_uint16
RadixSortKeyDsc_uint32:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_uint32
RadixSortKeyDsc_uint64:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_uint64

; Signed integer types
RadixSortCoreKeyDsc_sint8:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_si, Stat8, StageKey8, 0
RadixSortCoreKeyDsc_sint16:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_si, Stat16, StageKey16, 1
RadixSortCoreKeyDsc_sint32:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_si, Stat32, StageKey32, 2
RadixSortCoreKeyDsc_sint64:	RADIXSORT_KEY_CORE	DscOrder_ui, DscOrder_si, Stat64, StageKey64, 3
RadixSortKeyDsc_sint8:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_sint8
RadixSortKeyDsc_sint16:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_sint16
RadixSortKeyDsc_sint32:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_sint32
RadixSortKeyDsc_sint64:		RADIXSORT_KEY_INT	RadixSortCoreKeyDsc_sint64

; Floating-point types
RadixSortKeyDsc_flt32:		RADIXSORT_KEY_FLT	RadixSortCoreKeyDsc_sint32, Map_flt32
RadixSortKeyDsc_flt64:		RADIXSORT_KEY_FLT	RadixSortCoreKeyDsc_sint64, Map_flt64

;******************************************************************************;
;       Merging of sorted arrays                                               ;
;******************************************************************************;

;==============================================================================;
;       Array merging                                                          ;
;==============================================================================;
macro	MERGE	key1, key2, x, scale
{
;---[Parameters]---------------------------
target	equ		rdi							; pointer to target array
source1	equ		rsi							; pointer to first source array
size1	equ		rdx							; size of first array
source2	equ		rcx							; pointer to second source array
size2	equ		r8							; size of second array
;---[Internal variables]-------------------
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
if scale = 0
copy	= CopyFwd8							; Copy function
else if scale = 1
copy	= CopyFwd16							; Copy function
else if scale = 2
copy	= CopyFwd32							; Copy function
else if scale = 3
copy	= CopyFwd64							; Copy function
end if
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then call Copy (target, source2, size2)
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then call Copy (target, source1, size1)
;---[Merging loop]-------------------------
.loop:	mov		key1, [source1]				; key1 = source1[0]
		mov		key2, [source2]				; key2 = source2[0]
		cmp		key1, key2					; if (key1 condition key2)
		j#x		.brnc2						;     then go to associated branch
;---[Branch #1]----------------------------
		mov		[target], key1				; target[0] = key1
		add		source1, bytes				; source1++
		add		target, bytes				; target++
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0 && size2 != 0)
;---[Copy tail of 2-nd source array]-------
.copy1:	mov		param2, source2
		mov		param3, size2
		jmp		copy						; call Copy (target, source2, size2)
;---[Branch #2]----------------------------
.brnc2:	mov		[target], key2				; target[0] = key2
		add		source2, bytes				; source2++
		add		target, bytes				; target++
		sub		size2, 1					; size2--
		jnz		.loop						; do while (size1 != 0 && size2 != 0)
;---[Copy tail of 1-st source array]-------
.copy2:	jmp		copy						; call Copy (target, source1, size1)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeAsc_uint8:		MERGE	r10b, r11b, a, 0
MergeAsc_uint16:	MERGE	r10w, r11w, a, 1
MergeAsc_uint32:	MERGE	r10d, r11d, a, 2
MergeAsc_uint64:	MERGE	r10, r11, a, 3

; Signed integer types
MergeAsc_sint8:		MERGE	r10b, r11b, g, 0
MergeAsc_sint16:	MERGE	r10w, r11w, g, 1
MergeAsc_sint32:	MERGE	r10d, r11d, g, 2
MergeAsc_sint64:	MERGE	r10, r11, g, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeDsc_uint8:		MERGE	r10b, r11b, b, 0
MergeDsc_uint16:	MERGE	r10w, r11w, b, 1
MergeDsc_uint32:	MERGE	r10d, r11d, b, 2
MergeDsc_uint64:	MERGE	r10, r11, b, 3

; Signed integer types
MergeDsc_sint8:		MERGE	r10b, r11b, l, 0
MergeDsc_sint16:	MERGE	r10w, r11w, l, 1
MergeDsc_sint32:	MERGE	r10d, r11d, l, 2
MergeDsc_sint64:	MERGE	r10, r11, l, 3

;==============================================================================;
;       Key merging                                                            ;
;==============================================================================;
macro	MERGE_KEY	key1, key2, x, scale
{
;---[Parameters]---------------------------
tkey	equ		rdi							; pointer to target key array
tptr	equ		rsi							; pointer to target array of pointers to data
skey1	equ		rdx							; pointer to first source key array
sptr1	equ		rcx							; pointer to first source array of pointers to data
size1	equ		r8							; size of first array
skey2	equ		r9							; pointer to second source key array
sptr2	equ		r12							; pointer to second source array of pointers to data
size2	equ		r13							; size of second array
;---[Internal variables]-------------------
temp	equ		rax							; temporary register
param1	equ		rdi							; register to pass 2 parameter to function
param2	equ		rsi							; register to pass 2 parameter to function
param3	equ		rdx							; register to pass 3 parameter to function
stack	equ		rsp							; stack pointer
s_tptr	equ		stack + 0 * 8				; stack position of "tptr" variable
s_sptr	equ		stack + 1 * 8				; stack position of "sptr" variable
s_size	equ		stack + 2 * 8				; stack position of "size" variable
s_reg1	equ		stack + 3 * 8				; stack position of register #1
s_reg2	equ		stack + 4 * 8				; stack position of register #2
p_sptr2	equ		stack + 6 * 8				; stack position of parameter "sptr2"
p_size2	equ		stack + 7 * 8				; stack position of parameter "size2"
if scale = 0
copy	= CopyFwd8							; Copy function
else if scale = 1
copy	= CopyFwd16							; Copy function
else if scale = 2
copy	= CopyFwd32							; Copy function
else if scale = 3
copy	= CopyFwd64							; Copy function
end if
space	= 5 * 8								; stack size required by the procedure
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		sub		stack, space				; reserving stack size for local vars
		mov		[s_reg1], r12				; save callee-saved register into the stack
		mov		[s_reg2], r13				; save callee-saved register into the stack
		mov		sptr2, [p_sptr2]			; get parameter "sptr2" from the stack
		mov		size2, [p_size2]			; get parameter "size2" from the stack
		test	size1, size1				; if (size1 == 0)
		jz		.copy1						;     then copy source array #2
		test	size2, size2				; if (size2 == 0)
		jz		.copy2						;     then copy source array #1
;---[Merging loop]-------------------------
.loop:	mov		key1, [skey1]				; key1 = skey1[0]
		mov		key2, [skey2]				; key2 = skey2[0]
		cmp		key1, key2					; if (key1 condition key2)
		j#x		.brnc2						;     then go to associated branch
;---[Branch #1]----------------------------
		mov		temp, [sptr1]
		mov		[tkey], key1				; tkey[0] = key1
		mov		[tptr], temp				; tptr[0] = sptr1[0]
		add		skey1, bytes				; skey1++
		add		sptr1, 8					; sptr1++
		add		tkey, bytes					; tkey++
		add		tptr, 8						; tptr++
		sub		size1, 1					; size1--
		jnz		.loop						; do while (size1 != 0 && size2 != 0)
;---[Copy tail of 2-nd source array]-------
.copy1:	mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_sptr], sptr2				; save "sptr2" variable into the stack
		mov		[s_size], size2				; save "size2" variable into the stack
		mov		param2, skey2
		mov		param3, size2
		call	copy						; call Copy (tkey, skey2, size2)
		mov		param1, [s_tptr]			; get "tptr" variable from the stack
		mov		param2, [s_sptr]			; get "sptr2" variable from the stack
		mov		param3, [s_size]			; get "size2" variable from the stack
		mov		r12, [s_reg1]				; restore callee-saved register from the stack
		mov		r13, [s_reg2]				; restore callee-saved register from the stack
		add		stack, space				; restoring back the stack pointer
		jmp		CopyFwd64					; call Copy (tptr, sptr2, size2)
;---[Branch #2]----------------------------
.brnc2:	mov		temp, [sptr2]
		mov		[tkey], key2				; tkey[0] = key2
		mov		[tptr], temp				; tptr[0] = sptr2[0]
		add		skey2, bytes				; skey2++
		add		sptr2, 8					; sptr2++
		add		tkey, bytes					; tkey++
		add		tptr, 8						; tptr++
		sub		size2, 1					; size2--
		jnz		.loop						; do while (size1 != 0 && size2 != 0)
;---[Copy tail of 1-st source array]-------
.copy2:	mov		[s_tptr], tptr				; save "tptr" variable into the stack
		mov		[s_sptr], sptr1				; save "sptr1" variable into the stack
		mov		[s_size], size1				; save "size1" variable into the stack
		mov		param2, skey1
		mov		param3, size1
		call	copy						; call Copy (tkey, skey1, size1)
		mov		param1, [s_tptr]			; get "tptr" variable from the stack
		mov		param2, [s_sptr]			; get "sptr1" variable from the stack
		mov		param3, [s_size]			; get "size1" variable from the stack
		mov		r12, [s_reg1]				; restore callee-saved register from the stack
		mov		r13, [s_reg2]				; restore callee-saved register from the stack
		add		stack, space				; restoring back the stack pointer
		jmp		CopyFwd64					; call Copy (tptr, sptr1, size1)
}

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Ascending sort order                                                   ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeKeyAsc_uint8:	MERGE_KEY	r10b, r11b, a, 0
MergeKeyAsc_uint16:	MERGE_KEY	r10w, r11w, a, 1
MergeKeyAsc_uint32:	MERGE_KEY	r10d, r11d, a, 2
MergeKeyAsc_uint64:	MERGE_KEY	r10, r11, a, 3

; Signed integer types
MergeKeyAsc_sint8:	MERGE_KEY	r10b, r11b, g, 0
MergeKeyAsc_sint16:	MERGE_KEY	r10w, r11w, g, 1
MergeKeyAsc_sint32:	MERGE_KEY	r10d, r11d, g, 2
MergeKeyAsc_sint64:	MERGE_KEY	r10, r11, g, 3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;
;       Descending sort order                                                  ;
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~;

; Unsigned integer types
MergeKeyDsc_uint8:	MERGE_KEY	r10b, r11b, b, 0
MergeKeyDsc_uint16:	MERGE_KEY	r10w, r11w, b, 1
MergeKeyDsc_uint32:	MERGE_KEY	r10d, r11d, b, 2
MergeKeyDsc_uint64:	MERGE_KEY	r10, r11, b, 3

; Signed integer types
MergeKeyDsc_sint8:	MERGE_KEY	r10b, r11b, l, 0
MergeKeyDsc_sint16:	MERGE_KEY	r10w, r11w, l, 1
MergeKeyDsc_sint32:	MERGE_KEY	r10d, r11d, l, 2
MergeKeyDsc_sint64:	MERGE_KEY	r10, r11, l, 3

;******************************************************************************;
;       Unique values                                                          ;
;******************************************************************************;
macro	UNIQUE	temp, last, scale
{
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
array	equ		rsi							; pointer to array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to unique sequnce
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		last, [array]				; last = array[0]
		lea		ptr, [unique + bytes]		; ptr = unique + 1
		mov		[unique], last				; unique[0] = last
		add		array, bytes				; array++
		sub		size, 1						; if (--size == 0)
		jz		.skip						;     then skip the loop
;---[Unique separation loop]---------------
.loop:	mov		temp, [array]				; temp = array[0]
		cmp		temp, last					; if (temp != last)
		je		@f							; {
		mov		[ptr], temp					;     ptr[0] = temp
		add		ptr, bytes					;     ptr++
		mov		last, temp					;     last = temp }
@@:		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[Computing size of unique array]-------
.skip:	sub		ptr, unique
		shr		ptr, scale					; return ptr - unique
		ret
;------------------------------------------
.exit:	xor		ptr, ptr					; return 0
		ret
}
Unique8:	UNIQUE	r8b, r9b, 0
Unique16:	UNIQUE	r8w, r9w, 1
Unique32:	UNIQUE	r8d, r9d, 2
Unique64:	UNIQUE	r8, r9, 3

;******************************************************************************;
;       Duplicate values                                                       ;
;******************************************************************************;
macro	DUPLICATES	temp, last, scale
{
;---[Parameters]---------------------------
unique	equ		rdi							; pointer to array of unique values
count	equ		rsi							; pointer to array of counters
array	equ		rdx							; pointer to array
size	equ		rcx							; array size (count of elements)
;---[Internal variables]-------------------
ptr		equ		rax							; pointer to unique sequnce
counter	equ		r10							; duplicate counter
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		test	size, size					; if (size == 0)
		jz		.exit						;     then go to exit
		mov		last, [array]				; last = array[0]
		lea		ptr, [unique + bytes]		; ptr = unique + 1
		mov		[unique], last				; unique[0] = last
		add		array, bytes				; array++
		mov		counter, 1					; counter = 1
		sub		size, 1						; if (--size == 0)
		jz		.skip						;     then skip the loop
;---[Unique separation loop]---------------
.loop:	mov		temp, [array]				; temp = array[0]
		cmp		temp, last					; if (temp != last)
		je		@f							; {
		mov		[count], counter			;     count[0] = counter
		mov		[ptr], temp					;     ptr[0] = temp
		add		count, 8					;     count++
		add		ptr, bytes					;     ptr++
		xor		counter, counter			;     counter = 0
		mov		last, temp					;     last = temp }
@@:		add		counter, 1					; counter++
		add		array, bytes				; array++
		sub		size, 1						; size--
		jnz		.loop						; do while (size != 0)
;---[Computing size of unique array]-------
.skip:	sub		ptr, unique
		mov		[count], counter			; count[0] = counter
		shr		ptr, scale					; return ptr - unique
		ret
;------------------------------------------
.exit:	xor		ptr, ptr					; return 0
		ret
}
Duplicates8:	DUPLICATES	r8b, r9b, 0
Duplicates16:	DUPLICATES	r8w, r9w, 1
Duplicates32:	DUPLICATES	r8d, r9d, 2
Duplicates64:	DUPLICATES	r8, r9, 3

;******************************************************************************;
;       Checks                                                                 ;
;******************************************************************************;

;==============================================================================;
;       Check for duplicate values                                             ;
;==============================================================================;
macro	CHECK_DUP	element, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
aindex	equ		rcx							; array offset from vector boundary
aindexl	equ		cl							; low part of "aindex"
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of duplicates search
temp0	equ		xmm0						; temporary register #1
temp1	equ		xmm1						; temporary register #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shftl	size, scale					; convert size to bytes
		sub		size, bytes					; if (--size <= 0)
		jbe		.ntfnd						;     then go to not found branch
		xor		index, index				; index = 0
if scale <> 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
;---[Normal execution branch]--------------
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
;---[Unaligned search for pattern]---------
		add		size, aindex				; size += aindex
		mov		cmask, 0xFFFF
		shl		cmask, aindexl				; adjust cmask for unaligned search
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail0						;     then check array tail
		movdqa	temp0, [array]
		movdqu	temp1, [array + bytes]
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, cmask				; if duplicates are found
		jnz		.brk						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqa	temp0, [array + 1*VSIZE]
		movdqu	temp1, [array + 1*VSIZE + bytes]
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, fmask				; if duplicates are found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqa	temp0, [array + 2*VSIZE]
		movdqu	temp1, [array + 2*VSIZE + bytes]
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, fmask				; if duplicates are found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqa	temp0, [array + 3*VSIZE]
		movdqu	temp1, [array + 3*VSIZE + bytes]
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, fmask				; if duplicates are found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size < VSIZE)
		jb		.tail1						;     then check array tail
		movdqa	temp0, [array + 4*VSIZE]
		movdqu	temp1, [array + 4*VSIZE + bytes]
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, fmask				; if duplicates are found
		jnz		.brk						;     then break the loop
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, 4 * VSIZE			; array += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of duplicate
		sub		index, aindex				; index -= aindex
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Tail 0 branch]------------------------
.tail0:	movdqa	temp0, [array]
		movdqa	temp1, temp0
		psrldq	temp1, bytes				; shift vector right to one position
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, cmask				; if duplicates are not found
		jz		.ntfnd						;     then go to not found branch
		bsf		fmask, fmask				; find index of first occurence of duplicate
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     then go to not found branch
		sub		index, aindex				; index -= aindex
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Tail 1 branch]------------------------
.tail1:	movdqa	temp0, [array + index]
		movdqa	temp1, temp0
		psrldq	temp1, bytes				; shift vector right to one position
	pcmpeq#x	temp0, temp1				; check elements for duplicates
	pmovmskb	fmask, temp0				; save check results to fmask
		and		fmask, fmask				; if duplicates are not found
		jz		.ntfnd						;     then go to not found branch
		bsf		fmask, fmask				; find index of first occurence of duplicate
		add		size, VSIZE					; size += VSIZE
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     then go to not found branch
		sub		index, aindex				; index -= aindex
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
if scale <> 0
.sloop:	mov		element, [array]
		cmp		[array + bytes], element	; if (array[0] == array[1])
		je		.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
end if
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckDup8:	CHECK_DUP	cl, b
CheckDup16:	CHECK_DUP	cx, w
CheckDup32:	CHECK_DUP	ecx, d
CheckDup64:	CHECK_DUP	rcx, q

;==============================================================================;
;       Check for infinite values                                              ;
;==============================================================================;
macro	CHECK	patt, element, amask, cond1, cond2, x
{
;---[Parameters]---------------------------
array	equ		rdi							; pointer to array
size	equ		rsi							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
aindex	equ		rcx							; array offset from vector boundary
aindexl	equ		cl							; low part of "aindex"
cmask	equ		r8							; mask to clear unrequired results
fmask	equ		r9							; result of pattern search
flags	equ		xmm0						; pattern check flags
mask	equ		xmm1						; mask to get absolute value
pattern	equ		xmm2						; pattern to find
if x eq d
dmask	= DMASK_FLT32						; data mask
infval	= PINF_FLT32						; +inf
scale	= 2									; scale value
else if x eq q
dmask	= DMASK_FLT64						; data mask
infval	= PINF_FLT64						; +inf
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array]						; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.ntfnd						; if (size == 0), then go to not found branch
		mov		amask, dmask				; load amask
		mov		patt, infval				; load pattern
		xor		index, index				; index = 0
		test	array, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov#x	mask, amask					; mask = amask
		mov#x	pattern, patt				; pattern = patt
		mov		aindex, array
		and		aindex, VMASK				; get array offset from vector boundary
		sub		array, aindex				; align pointer to vector boundary
		clone	mask, scale					; duplicate value through the entire register
		clone	pattern, scale				; duplicate value through the entire register
;---[Unaligned search for pattern]---------
		add		size, aindex				; size += aindex
		sub		index, aindex				; index -= aindex
		mov		cmask, 0xFFFF
		shl		cmask, aindexl				; adjust cmask for unaligned search
		movdqa	flags, [array]
		pand	flags, mask					; flags = Abs (array[0])
		cond1#x	flags, pattern				; check array[0] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, cmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
;---[Vector loop]--------------------------
.vloop:	movdqa	flags, [array + 1*VSIZE]
		pand	flags, mask					; flags = Abs (array[1])
		cond1#x	flags, pattern				; check array[1] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 2*VSIZE]
		pand	flags, mask					; flags = Abs (array[2])
		cond1#x	flags, pattern				; check array[2] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 3*VSIZE]
		pand	flags, mask					; flags = Abs (array[3])
		cond1#x	flags, pattern				; check array[3] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
		movdqa	flags, [array + 4*VSIZE]
		pand	flags, mask					; flags = Abs (array[4])
		cond1#x	flags, pattern				; check array[4] for infinity
	pmovmskb	fmask, flags				; save check results to fmask
		and		fmask, fmask				; if pattern is found
		jnz		.brk						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.ntfnd						;     then go to not found branch
	prefetchnta	[array + PSTEP]				; prefetch next portion of data
		add		array, 4 * VSIZE			; array += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk:	bsf		fmask, fmask				; find index of first occurence of pattern
		cmp		size, fmask					; if (size <= fmask)
		jbe		.ntfnd						;     then go to not found branch
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		element, [array]
		and		element, amask				; element = abs (array[0])
		cmp		element, patt				; if (element condition pattern)
		cond2	.exit						;     then go to exit
		add		array, bytes				; array++
		add		index, 1					; index++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Not found branch]---------------------
.ntfnd:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckInf_flt32:	CHECK	edx, r8d, r9d, pcmpeq, je, d
CheckInf_flt64:	CHECK	rdx, r8, r9, pcmpeq, je, q

;==============================================================================;
;       Check for NaN values                                                   ;
;==============================================================================;
CheckNaN_flt32:	CHECK	edx, r8d, r9d, pcmpgt, jg, d
CheckNaN_flt64:	CHECK	rdx, r8, r9, pcmpgt, jg, q

;==============================================================================;
;       Check for equality                                                     ;
;==============================================================================;
macro	CHECK_EQUAL	element, x
{
;---[Parameters]---------------------------
array1	equ		rdi							; pointer to first array
array2	equ		rsi							; pointer to second array
size	equ		rdx							; array size (count of elements)
;---[Internal variables]-------------------
index	equ		rax							; index of first occurence of pattern
fmask	equ		r9							; compare result
ptr1	equ		r10							; temporary pointer to array1
ptr2	equ		r11							; temporary pointer to array2
a1temp	equ		xmm0						; array1 data register #1
a2temp	equ		xmm1						; array1 data register #2
if x eq b
scale	= 0									; scale value
else if x eq w
scale	= 1									; scale value
else if x eq d
scale	= 2									; scale value
else if x eq q
scale	= 3									; scale value
end if
bytes	= 1 shl scale						; size of array element (bytes)
bmask	= bytes - 1							; elements aligning mask
;------------------------------------------
	prefetchnta	[array2]					; prefetch data
	prefetchnta	[array1]					; prefetch data
		shl		size, scale					; convert size to bytes
		jz		.eql						; if (size == 0), then go to equal branch
		xor		index, index				; index = 0
if scale <> 0
		test	array2, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
		test	array1, bmask				; if elements have wrong alignment
		jnz		.sloop						;     then skip vector code
end if
		cmp		size, VSIZE					; if (size < VSIZE)
		jb		.sloop						;     then skip vector code
;---[Normal execution branch]--------------
		mov		ptr2, array2				; ptr2 = array2
		mov		ptr1, array1				; ptr1 = array1
		mov		index, array1
		and		index, VMASK				; get array offset from vector boundary
		sub		ptr2, index					; ptr2 = array2 - index
		sub		ptr1, index					; ptr1 = array1 - index
;---[Unaligned check]----------------------
		add		size, index					; size += index
		neg		index						; index = -index
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	a2temp, [array2]			; a2temp = array2[0]
		movdqu	a1temp, [array1]			; a1temp = array1[0]
	pcmpeq#x	a1temp, a2temp				; check if array1[0] == array2[0]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (array1[0] != array2[0])
		jnz		.brk0						;     then break the loop
;---[Vector loop]--------------------------
.vloop:	add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	a2temp, [ptr2 + 1*VSIZE]	; a2temp = ptr2[1]
		movdqa	a1temp, [ptr1 + 1*VSIZE]	; a1temp = ptr1[1]
	pcmpeq#x	a1temp, a2temp				; check if ptr1[1] == ptr2[1]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (ptr1[1] != ptr2[1])
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	a2temp, [ptr2 + 2*VSIZE]	; a2temp = ptr2[2]
		movdqa	a1temp, [ptr1 + 2*VSIZE]	; a1temp = ptr1[2]
	pcmpeq#x	a1temp, a2temp				; check if ptr1[2] == ptr2[2]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (ptr1[2] != ptr2[2])
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	a2temp, [ptr2 + 3*VSIZE]	; a2temp = ptr2[3]
		movdqa	a1temp, [ptr1 + 3*VSIZE]	; a1temp = ptr1[3]
	pcmpeq#x	a1temp, a2temp				; check if ptr1[3] == ptr2[3]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (ptr1[3] != ptr2[3])
		jnz		.brk1						;     then break the loop
		add		index, VSIZE				; index += VSIZE
		sub		size, VSIZE					; if (size <= VSIZE)
		jbe		.tail						;     then check array tails
		movdqu	a2temp, [ptr2 + 4*VSIZE]	; a2temp = ptr2[4]
		movdqa	a1temp, [ptr1 + 4*VSIZE]	; a1temp = ptr1[4]
	pcmpeq#x	a1temp, a2temp				; check if ptr1[4] == ptr2[4]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (ptr1[4] != ptr2[4])
		jnz		.brk1						;     then break the loop
	prefetchnta	[ptr2 + PSTEP]				; prefetch next portion of temp
	prefetchnta	[ptr1 + PSTEP]				; prefetch next portion of temp
		add		ptr2, 4 * VSIZE				; ptr2 += 4 * VSIZE
		add		ptr1, 4 * VSIZE				; ptr1 += 4 * VSIZE
		jmp		.vloop						; do while (true)
;---[End of vector loop]-------------------
.brk0:	bsf		index, fmask				; find index of first different element
		shftr	index, scale				; return index
		ret
;---[Compare tails branch]-----------------
.tail:	add		index, size
		movdqu	a2temp, [array2 + index]	; a2temp = array2[index]
		movdqu	a1temp, [array1 + index]	; a1temp = array1[index]
	pcmpeq#x	a1temp, a2temp				; check if array1[index] == array2[index]
	pmovmskb	fmask, a1temp				; save check results to fmask
		xor		fmask, 0xFFFF				; if (array1[index] == array2[index])
		jz		.eql						;     then go to equal branch
.brk1:	bsf		fmask, fmask				; find index of first different element
		add		index, fmask				; index += fmask
		shftr	index, scale				; return index
		ret
;---[Scalar loop]--------------------------
.sloop:	mov		element, [array2]
		cmp		[array1], element			; if (array1[0] != array2[0])
		jne		.exit						;     then go to exit
		add		array2, bytes				; array2++
		add		array1, bytes				; array1++
		add		index, 1					; index++
		sub		size, bytes					; size--
		jnz		.sloop						; do while (size != 0)
;---[Equal branch]-------------------------
.eql:	mov		index, NOT_FOUND			; return NOT_FOUND
.exit:	ret
}
CheckEqual8:	CHECK_EQUAL	cl, b
CheckEqual16:	CHECK_EQUAL	cx, w
CheckEqual32:	CHECK_EQUAL	ecx, d
CheckEqual64:	CHECK_EQUAL	rcx, q

;==============================================================================;
;       Check for overlap                                                      ;
;==============================================================================;
macro	OVERLAP	scale
{
;---[Parameters]---------------------------
target	equ 	rdi							; pointer to target array
tsize	equ		rsi							; target array size
source	equ 	rdx							; pointer to source array
ssize	equ 	rcx							; source array size
;---[Internal variables]-------------------
result	equ		al							; result register
bytes	= 1 shl scale						; size of array element (bytes)
;------------------------------------------
		cmp		target, source				; if (target >= source)
		jb		@f
;------------------------------------------
		lea		source, [source+ssize*bytes]; then source += ssize
		cmp		target, source				; return target >= source
		setb	result
		ret
;------------------------------------------
@@:		lea		target, [target+tsize*bytes]; else target += tsize
		cmp		source, target				; return (source >= target)
		setb	result
		ret
}
Overlap8:	OVERLAP	0
Overlap16:	OVERLAP	1
Overlap32:	OVERLAP	2
Overlap64:	OVERLAP	3

;###############################################################################
;#      Read-only data section                                                 #
;###############################################################################
section	'.rodata'	align 16

align 16
maskS1		dq	0x0000000000000000, 0x0000000000000000
			dq	0x00000000000000FF, 0x0000000000000000
			dq	0x000000000000FFFF, 0x0000000000000000
			dq	0x0000000000FFFFFF, 0x0000000000000000

			dq	0x00000000FFFFFFFF, 0x0000000000000000
			dq	0x000000FFFFFFFFFF, 0x0000000000000000
			dq	0x0000FFFFFFFFFFFF, 0x0000000000000000
			dq	0x00FFFFFFFFFFFFFF, 0x0000000000000000

			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000000000
			dq	0xFFFFFFFFFFFFFFFF, 0x00000000000000FF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000000000FFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000000000FFFFFF

			dq	0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x000000FFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x0000FFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFFFF, 0x00FFFFFFFFFFFFFF

maskS2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

align 16
maskV1		dq	0x0000000000000000, 0x0000000000000000
			dq	0x0000000000000000, 0xFF00000000000000
			dq	0x0000000000000000, 0xFFFF000000000000
			dq	0x0000000000000000, 0xFFFFFF0000000000
			dq	0x0000000000000000, 0xFFFFFFFF00000000
			dq	0x0000000000000000, 0xFFFFFFFFFF000000
			dq	0x0000000000000000, 0xFFFFFFFFFFFF0000
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFF00
			dq	0x0000000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFF00000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFF000000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFF0000000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFF00000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFF000000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFF0000, 0xFFFFFFFFFFFFFFFF
			dq	0xFFFFFFFFFFFFFF00, 0xFFFFFFFFFFFFFFFF
maskV2		dq	0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
