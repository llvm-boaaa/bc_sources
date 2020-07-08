; ModuleID = 'libMustAlias.a.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%union.Partial = type { i32 }
%union.TypeUnifyer = type { %struct.I64Aligner }
%struct.I64Aligner = type { i64, i64 }
%union.HalfAlign = type { %struct.I32I64I32Aligner }
%struct.I32I64I32Aligner = type { i32, i64, i32 }
%union.SingleArray = type { [8 x i16] }
%struct.CharAligner = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@ci = global i64 0, align 8
@ca = global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline norecurse ssp uwtable
define i32 @main() #0 {
entry:
  %p = alloca %union.Partial, align 4
  %tu = alloca %union.TypeUnifyer, align 8
  %ha = alloca %union.HalfAlign, align 8
  %sr = alloca %union.SingleArray, align 2
  %c = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %c, i64 0, i64 1
  %c1 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %c1, i64 0, i64 1
  call void @_Z1aIhhEvPT_PT0_(i8* %arrayidx, i8* %arrayidx2)
  %i = bitcast %union.Partial* %p to i32*
  %c3 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %c3, i64 0, i64 0
  call void @_Z1aIjhEvPT_PT0_(i32* %i, i8* %arrayidx4)
  %c5 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %c5, i64 0, i64 2
  %c7 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %c7, i64 0, i64 2
  call void @_Z1bIhhEvPT_PT0_(i8* %arrayidx6, i8* %arrayidx8)
  %i9 = bitcast %union.Partial* %p to i32*
  %c10 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %c10, i64 0, i64 0
  call void @_Z1bIjhEvPT_PT0_(i32* %i9, i8* %arrayidx11)
  %c12 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %c12, i64 0, i64 3
  %c14 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %c14, i64 0, i64 3
  call void @_Z1cIhhEvPT_PT0_(i8* %arrayidx13, i8* %arrayidx15)
  %i16 = bitcast %union.Partial* %p to i32*
  %c17 = bitcast %union.Partial* %p to [4 x i8]*
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %c17, i64 0, i64 0
  call void @_Z1cIjhEvPT_PT0_(i32* %i16, i8* %arrayidx18)
  %ia = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i0 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia, i32 0, i32 0
  %ca = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c0 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca, i32 0, i32 0
  call void @_Z1aIyhEvPT_PT0_(i64* %i0, i8* %c0)
  %ia19 = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i8 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia19, i32 0, i32 1
  %ca20 = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c4 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca20, i32 0, i32 4
  call void @_Z1aIyhEvPT_PT0_(i64* %i8, i8* %c4)
  %ia21 = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i022 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia21, i32 0, i32 0
  %ca23 = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c024 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca23, i32 0, i32 0
  call void @_Z1bIyhEvPT_PT0_(i64* %i022, i8* %c024)
  %ia25 = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i826 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia25, i32 0, i32 1
  %ca27 = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c428 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca27, i32 0, i32 4
  call void @_Z1bIyhEvPT_PT0_(i64* %i826, i8* %c428)
  %ia29 = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i030 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia29, i32 0, i32 0
  %ca31 = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c032 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca31, i32 0, i32 0
  call void @_Z1cIyhEvPT_PT0_(i64* %i030, i8* %c032)
  %ia33 = bitcast %union.TypeUnifyer* %tu to %struct.I64Aligner*
  %i834 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia33, i32 0, i32 1
  %ca35 = bitcast %union.TypeUnifyer* %tu to %struct.CharAligner*
  %c436 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca35, i32 0, i32 4
  call void @_Z1cIyhEvPT_PT0_(i64* %i834, i8* %c436)
  %ia37 = bitcast %union.HalfAlign* %ha to %struct.I64Aligner*
  %i038 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia37, i32 0, i32 0
  %ma = bitcast %union.HalfAlign* %ha to %struct.I32I64I32Aligner*
  %i039 = getelementptr inbounds %struct.I32I64I32Aligner, %struct.I32I64I32Aligner* %ma, i32 0, i32 0
  call void @_Z1aIyjEvPT_PT0_(i64* %i038, i32* %i039)
  %ia40 = bitcast %union.HalfAlign* %ha to %struct.I64Aligner*
  %i041 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia40, i32 0, i32 0
  %ma42 = bitcast %union.HalfAlign* %ha to %struct.I32I64I32Aligner*
  %i043 = getelementptr inbounds %struct.I32I64I32Aligner, %struct.I32I64I32Aligner* %ma42, i32 0, i32 0
  call void @_Z1bIyjEvPT_PT0_(i64* %i041, i32* %i043)
  %ia44 = bitcast %union.HalfAlign* %ha to %struct.I64Aligner*
  %i045 = getelementptr inbounds %struct.I64Aligner, %struct.I64Aligner* %ia44, i32 0, i32 0
  %ma46 = bitcast %union.HalfAlign* %ha to %struct.I32I64I32Aligner*
  %i047 = getelementptr inbounds %struct.I32I64I32Aligner, %struct.I32I64I32Aligner* %ma46, i32 0, i32 0
  call void @_Z1cIyjEvPT_PT0_(i64* %i045, i32* %i047)
  %i16_8 = bitcast %union.SingleArray* %sr to [8 x i16]*
  %arrayidx48 = getelementptr inbounds [8 x i16], [8 x i16]* %i16_8, i64 0, i64 1
  %ca49 = bitcast %union.SingleArray* %sr to %struct.CharAligner*
  %c2 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca49, i32 0, i32 2
  call void @_Z1aIthEvPT_PT0_(i16* %arrayidx48, i8* %c2)
  %i16_850 = bitcast %union.SingleArray* %sr to [8 x i16]*
  %arrayidx51 = getelementptr inbounds [8 x i16], [8 x i16]* %i16_850, i64 0, i64 2
  %ca52 = bitcast %union.SingleArray* %sr to %struct.CharAligner*
  %c453 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca52, i32 0, i32 4
  call void @_Z1bIthEvPT_PT0_(i16* %arrayidx51, i8* %c453)
  %i16_854 = bitcast %union.SingleArray* %sr to [8 x i16]*
  %arrayidx55 = getelementptr inbounds [8 x i16], [8 x i16]* %i16_854, i64 0, i64 3
  %ca56 = bitcast %union.SingleArray* %sr to %struct.CharAligner*
  %c6 = getelementptr inbounds %struct.CharAligner, %struct.CharAligner* %ca56, i32 0, i32 6
  call void @_Z1cIthEvPT_PT0_(i16* %arrayidx55, i8* %c6)
  ret i32 0
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1aIhhEvPT_PT0_(i8* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i8*, align 8
  %t2.addr = alloca i8*, align 8
  store i8* %t1, i8** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %t1.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  %add = add nsw i32 %conv1, %conv
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, i8* %2, align 1
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1aIjhEvPT_PT0_(i32* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i32*, align 8
  %t2.addr = alloca i8*, align 8
  store i32* %t1, i32** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32*, i32** %t1.addr, align 8
  %3 = load i32, i32* %2, align 4
  %add = add i32 %3, %conv
  store i32 %add, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1bIhhEvPT_PT0_(i8* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i8*, align 8
  %t2.addr = alloca i8*, align 8
  store i8* %t1, i8** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %t2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv1, %conv
  %conv2 = trunc i32 %mul to i8
  store i8 %conv2, i8* %2, align 1
  %4 = load i8*, i8** %t2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl i32 %conv3, 2
  %conv4 = trunc i32 %shl to i8
  %6 = load i8*, i8** %t1.addr, align 8
  store i8 %conv4, i8* %6, align 1
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1bIjhEvPT_PT0_(i32* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i32*, align 8
  %t2.addr = alloca i8*, align 8
  store i32* %t1, i32** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i32*, i32** %t1.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i8*, i8** %t2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %mul = mul i32 %conv, %1
  %conv1 = trunc i32 %mul to i8
  store i8 %conv1, i8* %2, align 1
  %4 = load i8*, i8** %t2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl i32 %conv2, 2
  %6 = load i32*, i32** %t1.addr, align 8
  store i32 %shl, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1cIhhEvPT_PT0_(i8* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i8*, align 8
  %t2.addr = alloca i8*, align 8
  store i8* %t1, i8** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t1.addr, align 8
  %1 = load i8*, i8** %t2.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %t2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %t1.addr, align 8
  store i8 %3, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1cIjhEvPT_PT0_(i32* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i32*, align 8
  %t2.addr = alloca i8*, align 8
  store i32* %t1, i32** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i32*, i32** %t1.addr, align 8
  %1 = load i8*, i8** %t2.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %cmp = icmp ne i32* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %t2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32*, i32** %t1.addr, align 8
  store i32 %conv, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1aIyhEvPT_PT0_(i64* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i8*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i64
  %2 = load i64*, i64** %t1.addr, align 8
  %3 = load i64, i64* %2, align 8
  %add = add i64 %3, %conv
  store i64 %add, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1bIyhEvPT_PT0_(i64* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i8*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i64*, i64** %t1.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i8*, i8** %t2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i64
  %mul = mul i64 %conv, %1
  %conv1 = trunc i64 %mul to i8
  store i8 %conv1, i8* %2, align 1
  %4 = load i8*, i8** %t2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  %shl = shl i32 %conv2, 2
  %conv3 = sext i32 %shl to i64
  %6 = load i64*, i64** %t1.addr, align 8
  store i64 %conv3, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1cIyhEvPT_PT0_(i64* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i8*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i64*, i64** %t1.addr, align 8
  %1 = load i8*, i8** %t2.addr, align 8
  %2 = bitcast i8* %1 to i64*
  %cmp = icmp ne i64* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %t2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i64
  %5 = load i64*, i64** %t1.addr, align 8
  store i64 %conv, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1aIyjEvPT_PT0_(i64* %t1, i32* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i32*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i32* %t2, i32** %t2.addr, align 8
  %0 = load i32*, i32** %t2.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  %2 = load i64*, i64** %t1.addr, align 8
  %3 = load i64, i64* %2, align 8
  %add = add i64 %3, %conv
  store i64 %add, i64* %2, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1bIyjEvPT_PT0_(i64* %t1, i32* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i32*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i32* %t2, i32** %t2.addr, align 8
  %0 = load i64*, i64** %t1.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i32*, i32** %t2.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, %1
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, i32* %2, align 4
  %4 = load i32*, i32** %t2.addr, align 8
  %5 = load i32, i32* %4, align 4
  %shl = shl i32 %5, 2
  %conv2 = zext i32 %shl to i64
  %6 = load i64*, i64** %t1.addr, align 8
  store i64 %conv2, i64* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1cIyjEvPT_PT0_(i64* %t1, i32* %t2) #1 {
entry:
  %t1.addr = alloca i64*, align 8
  %t2.addr = alloca i32*, align 8
  store i64* %t1, i64** %t1.addr, align 8
  store i32* %t2, i32** %t2.addr, align 8
  %0 = load i64*, i64** %t1.addr, align 8
  %1 = load i32*, i32** %t2.addr, align 8
  %2 = bitcast i32* %1 to i64*
  %cmp = icmp ne i64* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %t2.addr, align 8
  %4 = load i32, i32* %3, align 4
  %conv = zext i32 %4 to i64
  %5 = load i64*, i64** %t1.addr, align 8
  store i64 %conv, i64* %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1aIthEvPT_PT0_(i16* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i16*, align 8
  %t2.addr = alloca i8*, align 8
  store i16* %t1, i16** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i8*, i8** %t2.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i16
  %conv1 = zext i16 %conv to i32
  %2 = load i16*, i16** %t1.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv2 = zext i16 %3 to i32
  %add = add nsw i32 %conv2, %conv1
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, i16* %2, align 2
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1bIthEvPT_PT0_(i16* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i16*, align 8
  %t2.addr = alloca i8*, align 8
  store i16* %t1, i16** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i16*, i16** %t1.addr, align 8
  %1 = load i16, i16* %0, align 2
  %conv = zext i16 %1 to i32
  %2 = load i8*, i8** %t2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv1, %conv
  %conv2 = trunc i32 %mul to i8
  store i8 %conv2, i8* %2, align 1
  %4 = load i8*, i8** %t2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl i32 %conv3, 2
  %conv4 = trunc i32 %shl to i16
  %6 = load i16*, i16** %t1.addr, align 8
  store i16 %conv4, i16* %6, align 2
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_Z1cIthEvPT_PT0_(i16* %t1, i8* %t2) #1 {
entry:
  %t1.addr = alloca i16*, align 8
  %t2.addr = alloca i8*, align 8
  store i16* %t1, i16** %t1.addr, align 8
  store i8* %t2, i8** %t2.addr, align 8
  %0 = load i16*, i16** %t1.addr, align 8
  %1 = load i8*, i8** %t2.addr, align 8
  %2 = bitcast i8* %1 to i16*
  %cmp = icmp ne i16* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %t2.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i16
  %5 = load i16*, i16** %t1.addr, align 8
  store i16 %conv, i16* %5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { noinline norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"}
!1 = !{i32 1, !"PIC Level", i32 2}
