; ModuleID = './simulator/cmessageheap.cc'
source_filename = "./simulator/cmessageheap.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%class.ExecuteOnStartup = type { void ()*, %class.ExecuteOnStartup* }
%class.cGlobalRegistrationList = type { %class.cRegistrationList*, i8* }
%class.cRegistrationList = type { %class.cNamedObject.base, %"class.std::vector", %"class.std::map", %"class.std::map" }
%class.cNamedObject.base = type <{ %class.cObject, i8*, i16, i16 }>
%class.cObject = type { i32 (...)** }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cOwnedObject *, std::allocator<cOwnedObject *>>::_Vector_impl" }
%"struct.std::_Vector_base<cOwnedObject *, std::allocator<cOwnedObject *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cOwnedObject *, std::allocator<cOwnedObject *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cOwnedObject *, std::allocator<cOwnedObject *>>::_Vector_impl_data" = type { %class.cOwnedObject**, %class.cOwnedObject**, %class.cOwnedObject** }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], %class.cObject*, i32, [4 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cOwnedObject *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cOwnedObject *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, cOwnedObject *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, cOwnedObject *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%class.cMessageHeap = type { %class.cOwnedObject.base, %class.cMessage**, i32, i32, i64 }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], %class.cObject*, i32 }>
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, %class.cArray*, %class.cObject*, i8*, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cArray = type { %class.cOwnedObject.base, %class.cObject**, i32, i32, i32, i32 }
%class.SimTime = type { i64 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%class.cClassFactory = type { %class.cNoncopyableOwnedObject.base, %class.cObject* ()*, %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%class.cNamedObject = type <{ %class.cObject, i8*, i16, i16, [4 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.cVisitor = type { i32 (...)** }
%class.cClassDescriptor = type opaque
%class.cCommBuffer = type opaque

$__clang_call_terminate = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cMessageHeap3dupEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

@_ZN12_GLOBAL__N_118__onstartup_obj_49E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTV12cMessageHeap = dso_local unnamed_addr constant { [26 x i8*] } { [26 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12cMessageHeap to i8*), i8* bitcast (%class.cClassDescriptor* (%class.cObject*)* @_ZN7cObject13getDescriptorEv to i8*), i8* bitcast (void (%class.cObject*, %class.cOwnedObject*)* @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject to i8*), i8* bitcast (void (%class.cObject*, %class.cOwnedObject*, %class.cObject*)* @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_ to i8*), i8* bitcast (void (%class.cMessageHeap*)* @_ZN12cMessageHeapD2Ev to i8*), i8* bitcast (void (%class.cMessageHeap*)* @_ZN12cMessageHeapD0Ev to i8*), i8* bitcast (i8* (%class.cObject*)* @_ZNK7cObject12getClassNameEv to i8*), i8* bitcast (i8* (%class.cNamedObject*)* @_ZNK12cNamedObject7getNameEv to i8*), i8* bitcast (i8* (%class.cObject*)* @_ZNK7cObject11getFullNameEv to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %class.cObject*)* @_ZNK7cObject11getFullPathB5cxx11Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %class.cMessageHeap*)* @_ZNK12cMessageHeap4infoB5cxx11Ev to i8*), i8* bitcast (void (%"class.std::__cxx11::basic_string"*, %class.cObject*)* @_ZNK7cObject12detailedInfoB5cxx11Ev to i8*), i8* bitcast (%class.cMessageHeap* (%class.cMessageHeap*)* @_ZNK12cMessageHeap3dupEv to i8*), i8* bitcast (void (%class.cObject*, %class.cOwnedObject*)* @_ZN7cObject4takeEP12cOwnedObject to i8*), i8* bitcast (void (%class.cObject*, %class.cOwnedObject*)* @_ZN7cObject4dropEP12cOwnedObject to i8*), i8* bitcast (void (%class.cOwnedObject*, %class.cCommBuffer*)* @_ZN12cOwnedObject10parsimPackEP11cCommBuffer to i8*), i8* bitcast (void (%class.cOwnedObject*, %class.cCommBuffer*)* @_ZN12cOwnedObject12parsimUnpackEP11cCommBuffer to i8*), i8* bitcast (%class.cObject* (%class.cOwnedObject*)* @_ZNK12cOwnedObject8getOwnerEv to i8*), i8* bitcast (i1 (%class.cOwnedObject*)* @_ZNK12cOwnedObject13isOwnedObjectEv to i8*), i8* bitcast (void (%class.cMessageHeap*, %class.cVisitor*)* @_ZN12cMessageHeap12forEachChildEP8cVisitor to i8*), i8* bitcast (void (%class.cNamedObject*, i8*)* @_ZN12cNamedObject7setNameEPKc to i8*), i8* bitcast (void (%class.cNamedObject*, i1)* @_ZN12cNamedObject14setNamePoolingEb to i8*), i8* bitcast (i1 (%class.cNamedObject*)* @_ZN12cNamedObject14getNamePoolingEv to i8*), i8* bitcast (void (%class.cOwnedObject*)* @_ZN12cOwnedObject23removeFromOwnershipTreeEv to i8*), i8* bitcast (i1 (%class.cOwnedObject*)* @_ZNK12cOwnedObject11isSoftOwnerEv to i8*)] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"length=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" Tmin=\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS12cMessageHeap = dso_local constant [15 x i8] c"12cMessageHeap\00", align 1
@_ZTI12cOwnedObject = external dso_local constant i8*
@_ZTI12cMessageHeap = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTS12cMessageHeap, i32 0, i32 0), i8* bitcast (i8** @_ZTI12cOwnedObject to i8*) }, align 8
@classes = external dso_local global %class.cGlobalRegistrationList, align 8
@_ZN7SimTime8scaleexpE = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_cmessageheap.cc, i8* null }]

@_ZN12cMessageHeapC1EPKci = dso_local unnamed_addr alias void (%class.cMessageHeap*, i8*, i32), void (%class.cMessageHeap*, i8*, i32)* @_ZN12cMessageHeapC2EPKci
@_ZN12cMessageHeapC1ERKS_ = dso_local unnamed_addr alias void (%class.cMessageHeap*, %class.cMessageHeap*), void (%class.cMessageHeap*, %class.cMessageHeap*)* @_ZN12cMessageHeapC2ERKS_
@_ZN12cMessageHeapD1Ev = dso_local unnamed_addr alias void (%class.cMessageHeap*), void (%class.cMessageHeap*)* @_ZN12cMessageHeapD2Ev

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_49Ev() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call %class.cRegistrationList* @_ZN23cGlobalRegistrationList11getInstanceEv(%class.cGlobalRegistrationList* nonnull align 8 dereferenceable(16) @classes), !sourceFile !3, !mergedLineNum !4
  %call1 = tail call noalias nonnull dereferenceable(80) i8* @_Znwm(i64 80) #20, !sourceFile !3, !mergedLineNum !4
  %call2 = invoke i8* @_Z12opp_typenameRKSt9type_info(%"class.std::type_info"* nonnull align 8 dereferenceable(16) bitcast ({ i8*, i8*, i8* }* @_ZTI12cMessageHeap to %"class.std::type_info"*))
          to label %invoke.cont unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont:                                      ; preds = %entry
  %0 = bitcast i8* %call1 to %class.cClassFactory*, !sourceFile !3, !mergedLineNum !4
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(%class.cClassFactory* nonnull align 8 dereferenceable(80) %0, i8* %call2, %class.cObject* ()* nonnull @_ZL15__uniquename_49v, i8* null)
          to label %invoke.cont3 unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = bitcast i8* %call1 to %class.cOwnedObject*
  %2 = bitcast %class.cRegistrationList* %call to void (%class.cRegistrationList*, %class.cOwnedObject*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load void (%class.cRegistrationList*, %class.cOwnedObject*)**, void (%class.cRegistrationList*, %class.cOwnedObject*)*** %2, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds void (%class.cRegistrationList*, %class.cOwnedObject*)*, void (%class.cRegistrationList*, %class.cOwnedObject*)** %vtable, i64 22, !sourceFile !3, !mergedLineNum !4
  %3 = load void (%class.cRegistrationList*, %class.cOwnedObject*)*, void (%class.cRegistrationList*, %class.cOwnedObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %3(%class.cRegistrationList* nonnull align 8 dereferenceable(144) %call, %class.cOwnedObject* nonnull %1), !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %invoke.cont, %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdlPv(i8* nonnull %call1) #21, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %4, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* nonnull align 8 dereferenceable(16), void ()*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZN16ExecuteOnStartupD1Ev(%class.ExecuteOnStartup* nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN12cMessageHeapC2EPKci(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this, i8* %name, i32 %siz) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectC2EPKcb(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %0, i8* %name, i1 zeroext false), !sourceFile !3, !mergedLineNum !4
  %1 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %insertcntr = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  store i64 0, i64* %insertcntr, align 8, !tbaa !8, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  store i32 0, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %size = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  store i32 %siz, i32* %size, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %add = add nsw i32 %siz, 1, !sourceFile !3, !mergedLineNum !4
  %conv = sext i32 %add to i64, !sourceFile !3, !mergedLineNum !4
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8), !sourceFile !3, !mergedLineNum !4
  %3 = extractvalue { i64, i1 } %2, 1, !sourceFile !3, !mergedLineNum !4
  %4 = extractvalue { i64, i1 } %2, 0, !sourceFile !3, !mergedLineNum !4
  %5 = select i1 %3, i64 -1, i64 %4, !sourceFile !3, !mergedLineNum !4
  %call = invoke noalias nonnull i8* @_Znam(i64 %5) #20
          to label %invoke.cont unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont:                                      ; preds = %entry
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %6 = bitcast %class.cMessage*** %h to i8**
  store i8* %call, i8** %6, align 8, !tbaa !16
  ret void, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %entry
  %7 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %0) #22, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %7, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN12cOwnedObjectC2EPKcb(%class.cOwnedObject* nonnull align 8 dereferenceable(36), i8*, i1 zeroext) unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #6

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN12cMessageHeapC2ERKS_(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this, %class.cMessageHeap* nonnull align 8 dereferenceable(64) %heap) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectC2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %0), !sourceFile !3, !mergedLineNum !4
  %1 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %1, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage** null, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  store i32 0, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %2 = bitcast %class.cMessageHeap* %heap to %class.cNamedObject*, !sourceFile !3, !mergedLineNum !4
  %3 = bitcast %class.cMessageHeap* %heap to i8* (%class.cNamedObject*)***
  %vtable = load i8* (%class.cNamedObject*)**, i8* (%class.cNamedObject*)*** %3, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds i8* (%class.cNamedObject*)*, i8* (%class.cNamedObject*)** %vtable, i64 6, !sourceFile !3, !mergedLineNum !4
  %4 = load i8* (%class.cNamedObject*)*, i8* (%class.cNamedObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  %call = invoke i8* %4(%class.cNamedObject* nonnull align 8 dereferenceable(20) %2)
          to label %invoke.cont unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %class.cMessageHeap* %this to %class.cNamedObject*, !sourceFile !3, !mergedLineNum !4
  %6 = bitcast %class.cMessageHeap* %this to void (%class.cNamedObject*, i8*)***
  %vtable2 = load void (%class.cNamedObject*, i8*)**, void (%class.cNamedObject*, i8*)*** %6, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn3 = getelementptr inbounds void (%class.cNamedObject*, i8*)*, void (%class.cNamedObject*, i8*)** %vtable2, i64 19, !sourceFile !3, !mergedLineNum !4
  %7 = load void (%class.cNamedObject*, i8*)*, void (%class.cNamedObject*, i8*)** %vfn3, align 8, !sourceFile !3, !mergedLineNum !4
  invoke void %7(%class.cNamedObject* nonnull align 8 dereferenceable(20) %5, i8* %call)
          to label %invoke.cont4 unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont4:                                     ; preds = %invoke.cont
  %call6 = invoke nonnull align 8 dereferenceable(64) %class.cMessageHeap* @_ZN12cMessageHeapaSERKS_(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this, %class.cMessageHeap* nonnull align 8 dereferenceable(64) %heap)
          to label %invoke.cont5 unwind label %lpad, !sourceFile !3, !mergedLineNum !4

invoke.cont5:                                     ; preds = %invoke.cont4
  ret void, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %invoke.cont4, %invoke.cont, %entry
  %8 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %0) #22, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %8, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN12cOwnedObjectC2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local nonnull align 8 dereferenceable(64) %class.cMessageHeap* @_ZN12cMessageHeapaSERKS_(%class.cMessageHeap* nonnull returned align 8 dereferenceable(64) %this, %class.cMessageHeap* nonnull align 8 dereferenceable(64) %heap) local_unnamed_addr #0 align 2 {
entry:
  %cmp = icmp eq %class.cMessageHeap* %this, %heap, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %return, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %n.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2
  %0 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %h.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %1 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp.not6.i = icmp slt i32 %1, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not6.i, label %_ZN12cMessageHeap5clearEv.exit, label %for.body.i, !sourceFile !3, !mergedLineNum !4

for.body.i:                                       ; preds = %if.end, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %if.end ]
  %2 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %2, i64 %indvars.iv.i, !sourceFile !3, !mergedLineNum !4
  %3 = bitcast %class.cMessage** %arrayidx.i to %class.cOwnedObject**
  %4 = load %class.cOwnedObject*, %class.cOwnedObject** %3, align 8, !tbaa !17
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8) %0, %class.cOwnedObject* %4), !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %5 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %6 = sext i32 %5 to i64
  %cmp.not.not.i = icmp slt i64 %indvars.iv.i, %6
  br i1 %cmp.not.not.i, label %for.body.i, label %_ZN12cMessageHeap5clearEv.exit, !llvm.loop !18, !sourceFile !3, !mergedLineNum !4

_ZN12cMessageHeap5clearEv.exit:                   ; preds = %for.body.i, %if.end
  store i32 0, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %7 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %8 = bitcast %class.cMessageHeap* %heap to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %call = tail call nonnull align 8 dereferenceable(36) %class.cOwnedObject* @_ZN12cOwnedObjectaSERKS_(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %7, %class.cOwnedObject* nonnull align 8 dereferenceable(36) %8), !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %heap, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %9 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  store i32 %9, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %size = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %heap, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %10 = load i32, i32* %size, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %size3 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  store i32 %10, i32* %size3, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %11 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %isnull = icmp eq %class.cMessage** %11, null, !sourceFile !3, !mergedLineNum !4
  br i1 %isnull, label %delete.end, label %delete.notnull, !sourceFile !3, !mergedLineNum !4

delete.notnull:                                   ; preds = %_ZN12cMessageHeap5clearEv.exit
  %12 = bitcast %class.cMessage** %11 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdaPv(i8* %12) #21, !sourceFile !3, !mergedLineNum !4
  %.pre = load i32, i32* %size3, align 4, !tbaa !15
  %.pre26 = load i32, i32* %n.i, align 8, !tbaa !14
  br label %delete.end, !sourceFile !3, !mergedLineNum !4

delete.end:                                       ; preds = %delete.notnull, %_ZN12cMessageHeap5clearEv.exit
  %13 = phi i32 [ %.pre26, %delete.notnull ], [ %9, %_ZN12cMessageHeap5clearEv.exit ]
  %14 = phi i32 [ %.pre, %delete.notnull ], [ %10, %_ZN12cMessageHeap5clearEv.exit ]
  %add = add nsw i32 %14, 1, !sourceFile !3, !mergedLineNum !4
  %conv = sext i32 %add to i64, !sourceFile !3, !mergedLineNum !4
  %15 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8), !sourceFile !3, !mergedLineNum !4
  %16 = extractvalue { i64, i1 } %15, 1, !sourceFile !3, !mergedLineNum !4
  %17 = extractvalue { i64, i1 } %15, 0, !sourceFile !3, !mergedLineNum !4
  %18 = select i1 %16, i64 -1, i64 %17, !sourceFile !3, !mergedLineNum !4
  %call5 = tail call noalias nonnull i8* @_Znam(i64 %18) #20, !sourceFile !3, !mergedLineNum !4
  %19 = bitcast %class.cMessage*** %h.i to i8**
  store i8* %call5, i8** %19, align 8, !tbaa !16
  %h9 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %heap, i64 0, i32 1
  %20 = bitcast %class.cMessageHeap* %this to void (%class.cObject*, %class.cOwnedObject*)***
  %cmp8.not24 = icmp slt i32 %13, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp8.not24, label %return, label %for.body, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %delete.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %delete.end ]
  %21 = load %class.cMessage**, %class.cMessage*** %h9, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %21, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %22 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %23 = bitcast %class.cMessage* %22 to %class.cMessage* (%class.cMessage*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load %class.cMessage* (%class.cMessage*)**, %class.cMessage* (%class.cMessage*)*** %23, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds %class.cMessage* (%class.cMessage*)*, %class.cMessage* (%class.cMessage*)** %vtable, i64 11, !sourceFile !3, !mergedLineNum !4
  %24 = load %class.cMessage* (%class.cMessage*)*, %class.cMessage* (%class.cMessage*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  %call10 = tail call %class.cMessage* %24(%class.cMessage* nonnull align 8 dereferenceable(160) %22), !sourceFile !3, !mergedLineNum !4
  %25 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx13 = getelementptr inbounds %class.cMessage*, %class.cMessage** %25, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %call10, %class.cMessage** %arrayidx13, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %26 = bitcast %class.cMessage* %call10 to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %vtable14 = load void (%class.cObject*, %class.cOwnedObject*)**, void (%class.cObject*, %class.cOwnedObject*)*** %20, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn15 = getelementptr inbounds void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vtable14, i64 12, !sourceFile !3, !mergedLineNum !4
  %27 = load void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vfn15, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %27(%class.cObject* nonnull align 8 dereferenceable(8) %0, %class.cOwnedObject* %26), !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %28 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %29 = sext i32 %28 to i64
  %cmp8.not.not = icmp slt i64 %indvars.iv, %29
  br i1 %cmp8.not.not, label %for.body, label %return, !llvm.loop !20, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %for.body, %delete.end, %entry
  ret %class.cMessageHeap* %this, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN12cMessageHeapD2Ev(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %n.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2
  %1 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %h.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %2 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp.not6.i = icmp slt i32 %2, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not6.i, label %invoke.cont, label %for.body.i, !sourceFile !3, !mergedLineNum !4

for.body.i:                                       ; preds = %entry, %.noexc
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ 1, %entry ]
  %3 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %3, i64 %indvars.iv.i, !sourceFile !3, !mergedLineNum !4
  %4 = bitcast %class.cMessage** %arrayidx.i to %class.cOwnedObject**
  %5 = load %class.cOwnedObject*, %class.cOwnedObject** %4, align 8, !tbaa !17
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8) %1, %class.cOwnedObject* %5)
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %6 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %7 = sext i32 %6 to i64
  %cmp.not.not.i = icmp slt i64 %indvars.iv.i, %7
  br i1 %cmp.not.not.i, label %for.body.i, label %invoke.cont, !llvm.loop !18, !sourceFile !3, !mergedLineNum !4

invoke.cont:                                      ; preds = %.noexc, %entry
  store i32 0, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %8 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %isnull = icmp eq %class.cMessage** %8, null, !sourceFile !3, !mergedLineNum !4
  br i1 %isnull, label %delete.end, label %delete.notnull, !sourceFile !3, !mergedLineNum !4

delete.notnull:                                   ; preds = %invoke.cont
  %9 = bitcast %class.cMessage** %8 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdaPv(i8* %9) #21, !sourceFile !3, !mergedLineNum !4
  br label %delete.end, !sourceFile !3, !mergedLineNum !4

delete.end:                                       ; preds = %delete.notnull, %invoke.cont
  %10 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %10) #22, !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %for.body.i
  %11 = landingpad { i8*, i32 }
          catch i8* null, !sourceFile !3, !mergedLineNum !4
  %12 = extractvalue { i8*, i32 } %11, 0, !sourceFile !3, !mergedLineNum !4
  %13 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %13) #22, !sourceFile !3, !mergedLineNum !4
  tail call void @__clang_call_terminate(i8* %12) #23, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12cMessageHeap5clearEv(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #0 align 2 {
entry:
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2
  %0 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %1 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp.not6 = icmp slt i32 %1, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not6, label %for.cond.cleanup, label %for.body, !sourceFile !3, !mergedLineNum !4

for.cond.cleanup:                                 ; preds = %for.body, %entry
  store i32 0, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %2 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %2, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %3 = bitcast %class.cMessage** %arrayidx to %class.cOwnedObject**
  %4 = load %class.cOwnedObject*, %class.cOwnedObject** %3, align 8, !tbaa !17
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8) %0, %class.cOwnedObject* %4), !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %6 = sext i32 %5 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp.not.not, label %for.body, label %for.cond.cleanup, !llvm.loop !18, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #9 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #22, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZSt9terminatev() #23, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local void @_ZN12cMessageHeapD0Ev(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this) unnamed_addr #7 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %n.i.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2
  %1 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %h.i.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %2 = load i32, i32* %n.i.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp.not6.i.i = icmp slt i32 %2, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not6.i.i, label %invoke.cont.i, label %for.body.i.i, !sourceFile !3, !mergedLineNum !4

for.body.i.i:                                     ; preds = %entry, %.noexc.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.noexc.i ], [ 1, %entry ]
  %3 = load %class.cMessage**, %class.cMessage*** %h.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %3, i64 %indvars.iv.i.i, !sourceFile !3, !mergedLineNum !4
  %4 = bitcast %class.cMessage** %arrayidx.i.i to %class.cOwnedObject**
  %5 = load %class.cOwnedObject*, %class.cOwnedObject** %4, align 8, !tbaa !17
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8) %1, %class.cOwnedObject* %5)
          to label %.noexc.i unwind label %lpad.i

.noexc.i:                                         ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %6 = load i32, i32* %n.i.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %7 = sext i32 %6 to i64
  %cmp.not.not.i.i = icmp slt i64 %indvars.iv.i.i, %7
  br i1 %cmp.not.not.i.i, label %for.body.i.i, label %invoke.cont.i, !llvm.loop !18, !sourceFile !3, !mergedLineNum !4

invoke.cont.i:                                    ; preds = %.noexc.i, %entry
  store i32 0, i32* %n.i.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %8 = load %class.cMessage**, %class.cMessage*** %h.i.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %isnull.i = icmp eq %class.cMessage** %8, null, !sourceFile !3, !mergedLineNum !4
  br i1 %isnull.i, label %_ZN12cMessageHeapD2Ev.exit, label %delete.notnull.i, !sourceFile !3, !mergedLineNum !4

delete.notnull.i:                                 ; preds = %invoke.cont.i
  %9 = bitcast %class.cMessage** %8 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdaPv(i8* %9) #21, !sourceFile !3, !mergedLineNum !4
  br label %_ZN12cMessageHeapD2Ev.exit, !sourceFile !3, !mergedLineNum !4

lpad.i:                                           ; preds = %for.body.i.i
  %10 = landingpad { i8*, i32 }
          catch i8* null, !sourceFile !3, !mergedLineNum !4
  %11 = extractvalue { i8*, i32 } %10, 0, !sourceFile !3, !mergedLineNum !4
  %12 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %12) #22, !sourceFile !3, !mergedLineNum !4
  tail call void @__clang_call_terminate(i8* %11) #23, !sourceFile !3, !mergedLineNum !4
  unreachable, !sourceFile !3, !mergedLineNum !4

_ZN12cMessageHeapD2Ev.exit:                       ; preds = %invoke.cont.i, %delete.notnull.i
  %13 = bitcast %class.cMessageHeap* %this to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %13) #22, !sourceFile !3, !mergedLineNum !4
  %14 = bitcast %class.cMessageHeap* %this to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdlPv(i8* nonnull %14) #21, !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #8

; Function Attrs: uwtable
define dso_local void @_ZNK12cMessageHeap4infoB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %buf.i = alloca [64 x i8], align 16, !sourceFile !3, !mergedLineNum !4
  %endp.i = alloca i8*, align 8, !sourceFile !3, !mergedLineNum !4
  %out = alloca %"class.std::__cxx11::basic_stringstream", align 8, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp eq i32 %0, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %if.then, label %if.end, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %2 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !21
  %3 = bitcast %union.anon* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(5) %3, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5, i1 false) #22, !sourceFile !3, !mergedLineNum !4
  %_M_string_length.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 5, i64* %_M_string_length.i.i.i.i, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %3, i64 5, !sourceFile !3, !mergedLineNum !4
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !25, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %4 = bitcast %"class.std::__cxx11::basic_stringstream"* %out to i8*, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %4) #22, !sourceFile !3, !mergedLineNum !4
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull align 8 dereferenceable(128) %out), !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 0, i32 1
  %5 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i22 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %5, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 7)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %if.end
  %6 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %5, i32 %6)
          to label %invoke.cont5 unwind label %lpad2, !sourceFile !3, !mergedLineNum !4

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i24 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6)
          to label %invoke.cont11 unwind label %lpad2

invoke.cont11:                                    ; preds = %invoke.cont5
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %7 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 1, !sourceFile !3, !mergedLineNum !4
  %8 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %8, i64 0, i32 13, i32 0
  %9 = load i64, i64* %t.i.i.i, align 8, !tbaa !26, !noalias !28, !sourceFile !3, !mergedLineNum !4
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #22, !sourceFile !3, !mergedLineNum !4
  %11 = bitcast i8** %endp.i to i8*, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #22, !sourceFile !3, !mergedLineNum !4
  %12 = load i32, i32* @_ZN7SimTime8scaleexpE, align 4, !tbaa !31, !sourceFile !3, !mergedLineNum !4
  %call2.i27 = invoke i8* @_ZN7SimTime4ttoaEPcliRS0_(i8* nonnull %10, i64 %9, i32 %12, i8** nonnull align 8 dereferenceable(8) %endp.i)
          to label %call2.i.noexc unwind label %lpad10

call2.i.noexc:                                    ; preds = %invoke.cont11
  %tobool.not.i.i = icmp eq i8* %call2.i27, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i.i, label %if.then.i.i26, label %if.else.i.i, !sourceFile !3, !mergedLineNum !4

if.then.i.i26:                                    ; preds = %call2.i.noexc
  %13 = bitcast %"class.std::basic_ostream"* %call6 to i8**, !sourceFile !3, !mergedLineNum !4
  %vtable.i.i = load i8*, i8** %13, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vbase.offset.ptr.i.i = getelementptr i8, i8* %vtable.i.i, i64 -24, !sourceFile !3, !mergedLineNum !4
  %14 = bitcast i8* %vbase.offset.ptr.i.i to i64*, !sourceFile !3, !mergedLineNum !4
  %vbase.offset.i.i = load i64, i64* %14, align 8, !sourceFile !3, !mergedLineNum !4
  %15 = bitcast %"class.std::basic_ostream"* %call6 to i8*, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i.i = getelementptr inbounds i8, i8* %15, i64 %vbase.offset.i.i, !sourceFile !3, !mergedLineNum !4
  %16 = bitcast i8* %add.ptr.i.i to %"class.std::basic_ios"*, !sourceFile !3, !mergedLineNum !4
  %_M_streambuf_state.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 32
  %17 = bitcast i8* %_M_streambuf_state.i.i.i.i to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !32, !sourceFile !3, !mergedLineNum !4
  %or.i.i.i.i = or i32 %18, 1, !sourceFile !3, !mergedLineNum !4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %16, i32 %or.i.i.i.i)
          to label %invoke.cont12 unwind label %lpad10

if.else.i.i:                                      ; preds = %call2.i.noexc
  %call.i.i.i = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %call2.i27) #22, !sourceFile !3, !mergedLineNum !4
  %call1.i.i28 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull %call2.i27, i64 %call.i.i.i)
          to label %invoke.cont12 unwind label %lpad10

invoke.cont12:                                    ; preds = %if.then.i.i26, %if.else.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #22, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #22, !sourceFile !3, !mergedLineNum !4
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %20 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %19, %union.anon** %20, align 8, !tbaa !21, !alias.scope !44
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !44, !sourceFile !3, !mergedLineNum !4
  %.cast.i.i.i = bitcast %union.anon* %19 to i8*
  store i8 0, i8* %.cast.i.i.i, align 8, !tbaa !25, !alias.scope !44, !sourceFile !3, !mergedLineNum !4
  %_M_out_cur.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 0, i32 5
  %21 = load i8*, i8** %_M_out_cur.i.i.i.i, align 8, !tbaa !45, !noalias !44, !sourceFile !3, !mergedLineNum !4
  %tobool.not.i.i.i = icmp eq i8* %21, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not.i.i.i, label %if.else.i.i30, label %if.then.i.i.i, !sourceFile !3, !mergedLineNum !4

if.then.i.i.i:                                    ; preds = %invoke.cont12
  %_M_in_end.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 0, i32 3
  %22 = load i8*, i8** %_M_in_end.i.i.i.i, align 8, !tbaa !47, !noalias !44, !sourceFile !3, !mergedLineNum !4
  %tobool5.not.i.i.i = icmp eq i8* %22, null, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i = icmp ugt i8* %21, %22
  %or.cond.i.i.i = select i1 %tobool5.not.i.i.i, i1 true, i1 %cmp.i.i.i
  %spec.select.i.i = select i1 %or.cond.i.i.i, i8* %21, i8* %22
  %_M_out_beg.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 0, i32 4
  %23 = load i8*, i8** %_M_out_beg.i.i.i, align 8, !tbaa !48, !noalias !44, !sourceFile !3, !mergedLineNum !4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint i8* %spec.select.i.i to i64, !sourceFile !3, !mergedLineNum !4
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint i8* %23 to i64, !sourceFile !3, !mergedLineNum !4
  %sub.ptr.sub.i.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i, !sourceFile !3, !mergedLineNum !4
  %call3.i.i.i13.i.i = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.result, i64 0, i64 0, i8* %23, i64 %sub.ptr.sub.i.i.i.i)
          to label %invoke.cont14 unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %if.else.i.i30, %if.then.i.i.i
  %24 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %25 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !49, !alias.scope !44, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i.i.i = icmp eq i8* %25, %.cast.i.i.i, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %if.then.i.i.i.i29, !sourceFile !3, !mergedLineNum !4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %lpad.i.i
  %26 = load i64, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !44, !sourceFile !3, !mergedLineNum !4
  %cmp3.i.i.i.i.i = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %cmp3.i.i.i.i.i) #22, !sourceFile !3, !mergedLineNum !4
  br label %ehcleanup

if.then.i.i.i.i29:                                ; preds = %lpad.i.i
  call void @_ZdlPv(i8* %25) #21, !sourceFile !3, !mergedLineNum !4
  br label %ehcleanup, !sourceFile !3, !mergedLineNum !4

if.else.i.i30:                                    ; preds = %invoke.cont12
  %_M_string.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.result, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %_M_string.i.i)
          to label %invoke.cont14 unwind label %lpad.i.i

invoke.cont14:                                    ; preds = %if.else.i.i30, %if.then.i.i.i
  %27 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %27, i32 (...)*** %28, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %29 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %27, i64 -3
  %30 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i31 = load i64, i64* %30, align 8, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i.i32 = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i31, !sourceFile !3, !mergedLineNum !4
  %31 = bitcast i8* %add.ptr.i.i32 to i32 (...)***, !sourceFile !3, !mergedLineNum !4
  store i32 (...)** %29, i32 (...)*** %31, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %32, i32 (...)*** %33, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %34, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 2, i32 0, i32 0
  %35 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !49, !sourceFile !3, !mergedLineNum !4
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %36 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %35, %arraydecay.i.i.i.i.i.i.i, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %if.then.i.i.i.i.i, !sourceFile !3, !mergedLineNum !4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %invoke.cont14
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 2, i32 1
  %37 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !23, !sourceFile !3, !mergedLineNum !4
  %cmp3.i.i.i.i.i.i = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %cmp3.i.i.i.i.i.i) #22, !sourceFile !3, !mergedLineNum !4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

if.then.i.i.i.i.i:                                ; preds = %invoke.cont14
  call void @_ZdlPv(i8* %35) #21, !sourceFile !3, !mergedLineNum !4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, !sourceFile !3, !mergedLineNum !4

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %if.then.i.i.i.i.i
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %34, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %_M_buf_locale.i.i.i.i) #22, !sourceFile !3, !mergedLineNum !4
  %38 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %38, i32 (...)*** %28, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %39 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %38, i64 -3
  %40 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %40, align 8, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i.i.i.i, !sourceFile !3, !mergedLineNum !4
  %41 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***, !sourceFile !3, !mergedLineNum !4
  store i32 (...)** %39, i32 (...)*** %41, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %42, align 8, !tbaa !50, !sourceFile !3, !mergedLineNum !4
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %out, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %43) #22, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %4) #22, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

lpad2:                                            ; preds = %invoke.cont5, %if.end, %invoke.cont3
  %44 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  br label %ehcleanup

lpad10:                                           ; preds = %if.else.i.i, %if.then.i.i26, %invoke.cont11
  %45 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  br label %ehcleanup, !sourceFile !3, !mergedLineNum !4

ehcleanup:                                        ; preds = %lpad2, %if.then.i.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %lpad10
  %.pn = phi { i8*, i32 } [ %45, %lpad10 ], [ %44, %lpad2 ], [ %24, %if.then.i.i.i.i29 ], [ %24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull align 8 dereferenceable(128) %out) #22, !sourceFile !3, !mergedLineNum !4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %4) #22, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %.pn, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %if.then
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #10

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #10

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12cMessageHeap12forEachChildEP8cVisitor(%class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this, %class.cVisitor* %v) unnamed_addr #0 align 2 {
entry:
  %h.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %0 = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %add.ptr.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %0, i64 1, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast %class.cMessage** %add.ptr.i to i8*, !sourceFile !3, !mergedLineNum !4
  %n.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %conv.i = sext i32 %2 to i64, !sourceFile !3, !mergedLineNum !4
  tail call void @qsort(i8* nonnull %1, i64 %conv.i, i64 8, i32 (i8*, i8*)* nonnull @_ZL14qsort_cmp_msgsPKvS0_), !sourceFile !3, !mergedLineNum !4
  %3 = load i32, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %4 = load %class.cMessage**, %class.cMessage*** %h.i, align 8
  %cmp.not8.i = icmp slt i32 %3, 1
  br i1 %cmp.not8.i, label %for.cond.cleanup, label %for.body.preheader.i, !sourceFile !3, !mergedLineNum !4

for.body.preheader.i:                             ; preds = %entry
  %5 = add nuw i32 %3, 1
  %wide.trip.count.i = zext i32 %5 to i64
  %6 = add nsw i64 %wide.trip.count.i, -1
  %7 = add nsw i64 %wide.trip.count.i, -2
  %xtraiter = and i64 %6, 7
  %8 = icmp ult i64 %7, 7
  br i1 %8, label %_ZN12cMessageHeap4sortEv.exit.unr-lcssa, label %for.body.preheader.i.new

for.body.preheader.i.new:                         ; preds = %for.body.preheader.i
  %unroll_iter = and i64 %6, -8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i.new ], [ %indvars.iv.next.i.7, %for.body.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.i.new ], [ %niter.nsub.7, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.i, !sourceFile !3, !mergedLineNum !4
  %9 = load %class.cMessage*, %class.cMessage** %arrayidx.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i = getelementptr inbounds %class.cMessage, %class.cMessage* %9, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %10 = trunc i64 %indvars.iv.i to i32
  store i32 %10, i32* %heapindex.i, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i.1 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i, !sourceFile !3, !mergedLineNum !4
  %11 = load %class.cMessage*, %class.cMessage** %arrayidx.i.1, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.1 = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %12 = trunc i64 %indvars.iv.next.i to i32
  store i32 %12, i32* %heapindex.i.1, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %arrayidx.i.2 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.1, !sourceFile !3, !mergedLineNum !4
  %13 = load %class.cMessage*, %class.cMessage** %arrayidx.i.2, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.2 = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %14 = trunc i64 %indvars.iv.next.i.1 to i32
  store i32 %14, i32* %heapindex.i.2, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %arrayidx.i.3 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.2, !sourceFile !3, !mergedLineNum !4
  %15 = load %class.cMessage*, %class.cMessage** %arrayidx.i.3, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.3 = getelementptr inbounds %class.cMessage, %class.cMessage* %15, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %16 = trunc i64 %indvars.iv.next.i.2 to i32
  store i32 %16, i32* %heapindex.i.3, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %arrayidx.i.4 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.3, !sourceFile !3, !mergedLineNum !4
  %17 = load %class.cMessage*, %class.cMessage** %arrayidx.i.4, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.4 = getelementptr inbounds %class.cMessage, %class.cMessage* %17, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %18 = trunc i64 %indvars.iv.next.i.3 to i32
  store i32 %18, i32* %heapindex.i.4, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %arrayidx.i.5 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.4, !sourceFile !3, !mergedLineNum !4
  %19 = load %class.cMessage*, %class.cMessage** %arrayidx.i.5, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.5 = getelementptr inbounds %class.cMessage, %class.cMessage* %19, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %20 = trunc i64 %indvars.iv.next.i.4 to i32
  store i32 %20, i32* %heapindex.i.5, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6
  %arrayidx.i.6 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.5, !sourceFile !3, !mergedLineNum !4
  %21 = load %class.cMessage*, %class.cMessage** %arrayidx.i.6, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.6 = getelementptr inbounds %class.cMessage, %class.cMessage* %21, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %22 = trunc i64 %indvars.iv.next.i.5 to i32
  store i32 %22, i32* %heapindex.i.6, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7
  %arrayidx.i.7 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.i.6, !sourceFile !3, !mergedLineNum !4
  %23 = load %class.cMessage*, %class.cMessage** %arrayidx.i.7, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.7 = getelementptr inbounds %class.cMessage, %class.cMessage* %23, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %24 = trunc i64 %indvars.iv.next.i.6 to i32
  store i32 %24, i32* %heapindex.i.7, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %_ZN12cMessageHeap4sortEv.exit.unr-lcssa, label %for.body.i, !llvm.loop !55, !sourceFile !3, !mergedLineNum !4

_ZN12cMessageHeap4sortEv.exit.unr-lcssa:          ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i.unr = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i.7, %for.body.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12cMessageHeap4sortEv.exit, label %for.body.i.epil

for.body.i.epil:                                  ; preds = %_ZN12cMessageHeap4sortEv.exit.unr-lcssa, %for.body.i.epil
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %for.body.i.epil ], [ %indvars.iv.i.unr, %_ZN12cMessageHeap4sortEv.exit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.i.epil ], [ %xtraiter, %_ZN12cMessageHeap4sortEv.exit.unr-lcssa ]
  %arrayidx.i.epil = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.i.epil, !sourceFile !3, !mergedLineNum !4
  %25 = load %class.cMessage*, %class.cMessage** %arrayidx.i.epil, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i.epil = getelementptr inbounds %class.cMessage, %class.cMessage* %25, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %26 = trunc i64 %indvars.iv.i.epil to i32
  store i32 %26, i32* %heapindex.i.epil, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %_ZN12cMessageHeap4sortEv.exit, label %for.body.i.epil, !llvm.loop !56

_ZN12cMessageHeap4sortEv.exit:                    ; preds = %for.body.i.epil, %_ZN12cMessageHeap4sortEv.exit.unr-lcssa
  %27 = bitcast %class.cVisitor* %v to void (%class.cVisitor*, %class.cObject*)***
  br i1 %cmp.not8.i, label %for.cond.cleanup, label %for.body, !sourceFile !3, !mergedLineNum !4

for.cond.cleanup:                                 ; preds = %for.inc, %entry, %_ZN12cMessageHeap4sortEv.exit
  ret void, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %_ZN12cMessageHeap4sortEv.exit, %for.inc.for.body_crit_edge
  %28 = phi i32 [ %33, %for.inc.for.body_crit_edge ], [ %3, %_ZN12cMessageHeap4sortEv.exit ]
  %29 = phi %class.cMessage** [ %.pre, %for.inc.for.body_crit_edge ], [ %4, %_ZN12cMessageHeap4sortEv.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 1, %_ZN12cMessageHeap4sortEv.exit ]
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %29, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %30 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq %class.cMessage* %30, null, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %for.inc, label %if.then, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %for.body
  %31 = getelementptr %class.cMessage, %class.cMessage* %30, i64 0, i32 0, i32 0, i32 0
  %vtable = load void (%class.cVisitor*, %class.cObject*)**, void (%class.cVisitor*, %class.cObject*)*** %27, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds void (%class.cVisitor*, %class.cObject*)*, void (%class.cVisitor*, %class.cObject*)** %vtable, i64 4, !sourceFile !3, !mergedLineNum !4
  %32 = load void (%class.cVisitor*, %class.cObject*)*, void (%class.cVisitor*, %class.cObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %32(%class.cVisitor* nonnull align 8 dereferenceable(8) %v, %class.cObject* %31), !sourceFile !3, !mergedLineNum !4
  %.pre11 = load i32, i32* %n.i, align 8, !tbaa !14
  br label %for.inc, !sourceFile !3, !mergedLineNum !4

for.inc:                                          ; preds = %for.body, %if.then
  %33 = phi i32 [ %28, %for.body ], [ %.pre11, %if.then ]
  %34 = sext i32 %33 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %34
  br i1 %cmp.not.not, label %for.inc.for.body_crit_edge, label %for.cond.cleanup, !llvm.loop !58, !sourceFile !3, !mergedLineNum !4

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load %class.cMessage**, %class.cMessage*** %h.i, align 8, !tbaa !16
  br label %for.body
}

; Function Attrs: mustprogress nofree uwtable
define dso_local void @_ZN12cMessageHeap4sortEv(%class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #11 align 2 {
entry:
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %0 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %add.ptr = getelementptr inbounds %class.cMessage*, %class.cMessage** %0, i64 1, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast %class.cMessage** %add.ptr to i8*, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %conv = sext i32 %2 to i64, !sourceFile !3, !mergedLineNum !4
  tail call void @qsort(i8* nonnull %1, i64 %conv, i64 8, i32 (i8*, i8*)* nonnull @_ZL14qsort_cmp_msgsPKvS0_), !sourceFile !3, !mergedLineNum !4
  %3 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %4 = load %class.cMessage**, %class.cMessage*** %h, align 8
  %cmp.not8 = icmp slt i32 %3, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not8, label %for.cond.cleanup, label %for.body.preheader, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %entry
  %5 = add nuw i32 %3, 1
  %wide.trip.count = zext i32 %5 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %7 = add nsw i64 %wide.trip.count, -2
  %xtraiter = and i64 %6, 7
  %8 = icmp ult i64 %7, 7
  br i1 %8, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %6, -8
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.cond.cleanup.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %for.cond.cleanup.loopexit.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.epil, !sourceFile !3, !mergedLineNum !4
  %9 = load %class.cMessage*, %class.cMessage** %arrayidx.epil, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.epil = getelementptr inbounds %class.cMessage, %class.cMessage* %9, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %10 = trunc i64 %indvars.iv.epil to i32
  store i32 %10, i32* %heapindex.epil, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup, label %for.body.epil, !llvm.loop !59

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void, !sourceFile !3, !mergedLineNum !4

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 1, %for.body.preheader.new ], [ %indvars.iv.next.7, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.7, %for.body ]
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %11 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %12 = trunc i64 %indvars.iv to i32
  store i32 %12, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next, !sourceFile !3, !mergedLineNum !4
  %13 = load %class.cMessage*, %class.cMessage** %arrayidx.1, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.1 = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %14 = trunc i64 %indvars.iv.next to i32
  store i32 %14, i32* %heapindex.1, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.1, !sourceFile !3, !mergedLineNum !4
  %15 = load %class.cMessage*, %class.cMessage** %arrayidx.2, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.2 = getelementptr inbounds %class.cMessage, %class.cMessage* %15, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %16 = trunc i64 %indvars.iv.next.1 to i32
  store i32 %16, i32* %heapindex.2, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.2, !sourceFile !3, !mergedLineNum !4
  %17 = load %class.cMessage*, %class.cMessage** %arrayidx.3, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.3 = getelementptr inbounds %class.cMessage, %class.cMessage* %17, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %18 = trunc i64 %indvars.iv.next.2 to i32
  store i32 %18, i32* %heapindex.3, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx.4 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.3, !sourceFile !3, !mergedLineNum !4
  %19 = load %class.cMessage*, %class.cMessage** %arrayidx.4, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.4 = getelementptr inbounds %class.cMessage, %class.cMessage* %19, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %20 = trunc i64 %indvars.iv.next.3 to i32
  store i32 %20, i32* %heapindex.4, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx.5 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.4, !sourceFile !3, !mergedLineNum !4
  %21 = load %class.cMessage*, %class.cMessage** %arrayidx.5, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.5 = getelementptr inbounds %class.cMessage, %class.cMessage* %21, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %22 = trunc i64 %indvars.iv.next.4 to i32
  store i32 %22, i32* %heapindex.5, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx.6 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.5, !sourceFile !3, !mergedLineNum !4
  %23 = load %class.cMessage*, %class.cMessage** %arrayidx.6, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.6 = getelementptr inbounds %class.cMessage, %class.cMessage* %23, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %24 = trunc i64 %indvars.iv.next.5 to i32
  store i32 %24, i32* %heapindex.6, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx.7 = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %indvars.iv.next.6, !sourceFile !3, !mergedLineNum !4
  %25 = load %class.cMessage*, %class.cMessage** %arrayidx.7, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.7 = getelementptr inbounds %class.cMessage, %class.cMessage* %25, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %26 = trunc i64 %indvars.iv.next.6 to i32
  store i32 %26, i32* %heapindex.7, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body, !llvm.loop !55, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8), %class.cOwnedObject*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(36) %class.cOwnedObject* @_ZN12cOwnedObjectaSERKS_(%class.cOwnedObject* nonnull align 8 dereferenceable(36), %class.cOwnedObject* nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local %class.cMessage* @_ZN12cMessageHeap4peekEi(%class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this, i32 %m) local_unnamed_addr #12 align 2 {
entry:
  %cmp = icmp slt i32 %m, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %return, label %lor.lhs.false, !sourceFile !3, !mergedLineNum !4

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp2.not = icmp sgt i32 %0, %m, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp2.not, label %if.end, label %return, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %lor.lhs.false
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %1 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %add = add nuw nsw i32 %m, 1, !sourceFile !3, !mergedLineNum !4
  %idxprom5 = zext i32 %add to i64
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom5, !sourceFile !3, !mergedLineNum !4
  %2 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %class.cMessage* [ %2, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], !sourceFile !3, !mergedLineNum !4
  ret %class.cMessage* %retval.0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree
declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define internal i32 @_ZL14qsort_cmp_msgsPKvS0_(i8* nocapture readonly %p1, i8* nocapture readonly %p2) #14 {
entry:
  %0 = bitcast i8* %p1 to %class.cMessage**, !sourceFile !3, !mergedLineNum !4
  %1 = load %class.cMessage*, %class.cMessage** %0, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %2 = bitcast i8* %p2 to %class.cMessage**, !sourceFile !3, !mergedLineNum !4
  %3 = load %class.cMessage*, %class.cMessage** %2, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %1, i64 0, i32 13, i32 0
  %4 = load i64, i64* %t.i.i.i, align 8, !tbaa !26, !noalias !60, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i26 = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 13, i32 0
  %5 = load i64, i64* %t.i.i.i26, align 8, !tbaa !26, !noalias !63, !sourceFile !3, !mergedLineNum !4
  %cmp.i = icmp slt i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i, label %cleanup14, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %cmp.i34 = icmp sgt i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i34, label %cleanup14, label %if.end6, !sourceFile !3, !mergedLineNum !4

if.end6:                                          ; preds = %if.end
  %prior.i = getelementptr inbounds %class.cMessage, %class.cMessage* %1, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %6 = load i16, i16* %prior.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %conv = sext i16 %6 to i32, !sourceFile !3, !mergedLineNum !4
  %prior.i35 = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %7 = load i16, i16* %prior.i35, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %conv9 = sext i16 %7 to i32, !sourceFile !3, !mergedLineNum !4
  %sub = sub nsw i32 %conv, %conv9, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i32 %sub, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %tobool.not, label %if.end11, label %cleanup14, !sourceFile !3, !mergedLineNum !4

if.end11:                                         ; preds = %if.end6
  %insertordr.i = getelementptr inbounds %class.cMessage, %class.cMessage* %1, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %insertordr.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i36 = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %9 = load i64, i64* %insertordr.i36, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp ult i64 %8, %9, !sourceFile !3, !mergedLineNum !4
  %cond = select i1 %cmp, i32 -1, i32 1, !sourceFile !3, !mergedLineNum !4
  br label %cleanup14, !sourceFile !3, !mergedLineNum !4

cleanup14:                                        ; preds = %if.end11, %if.end6, %if.end, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ 1, %if.end ], [ %cond, %if.end11 ], [ %sub, %if.end6 ], !sourceFile !3, !mergedLineNum !4
  ret i32 %retval.1, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: uwtable
define dso_local void @_ZN12cMessageHeap6insertEP8cMessage(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this, %class.cMessage* %event) local_unnamed_addr #4 align 2 {
entry:
  %insertcntr = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  %0 = load i64, i64* %insertcntr, align 8, !tbaa !8, !sourceFile !3, !mergedLineNum !4
  %inc = add i64 %0, 1, !sourceFile !3, !mergedLineNum !4
  store i64 %inc, i64* %insertcntr, align 8, !tbaa !8, !sourceFile !3, !mergedLineNum !4
  %insertordr = getelementptr inbounds %class.cMessage, %class.cMessage* %event, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  store i64 %0, i64* %insertordr, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %1 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %inc2 = add i32 %1, 1
  store i32 %inc2, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %size = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* %size, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %2, 1
  store i32 %mul, i32* %size, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %add = or i32 %mul, 1
  %conv = sext i32 %add to i64, !sourceFile !3, !mergedLineNum !4
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8), !sourceFile !3, !mergedLineNum !4
  %4 = extractvalue { i64, i1 } %3, 1, !sourceFile !3, !mergedLineNum !4
  %5 = extractvalue { i64, i1 } %3, 0, !sourceFile !3, !mergedLineNum !4
  %6 = select i1 %4, i64 -1, i64 %5, !sourceFile !3, !mergedLineNum !4
  %call = tail call noalias nonnull i8* @_Znam(i64 %6) #20, !sourceFile !3, !mergedLineNum !4
  %7 = bitcast i8* %call to %class.cMessage**, !sourceFile !3, !mergedLineNum !4
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %8 = load %class.cMessage**, %class.cMessage*** %h, align 8
  %cmp6.not.not.not61 = icmp slt i32 %1, 1
  br i1 %cmp6.not.not.not61, label %for.end, label %for.body.preheader, !sourceFile !3, !mergedLineNum !4

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i32 %inc2 to i64
  %9 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i64 %9, 4
  br i1 %min.iters.check, label %for.body.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i8, i8* %call, i64 8
  %10 = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep72 = getelementptr i8, i8* %call, i64 %10
  %scevgep73 = getelementptr %class.cMessage*, %class.cMessage** %8, i64 1
  %scevgep7374 = bitcast %class.cMessage** %scevgep73 to i8*
  %scevgep75 = getelementptr %class.cMessage*, %class.cMessage** %8, i64 %wide.trip.count
  %scevgep7576 = bitcast %class.cMessage** %scevgep75 to i8*
  %bound0 = icmp ult i8* %scevgep, %scevgep7576
  %bound1 = icmp ugt i8* %scevgep72, %scevgep7374
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, -4
  %ind.end = or i64 %n.vec, 1
  %11 = add nsw i64 %n.vec, -4
  %12 = lshr exact i64 %11, 2
  %13 = add nuw nsw i64 %12, 1
  %xtraiter = and i64 %13, 3
  %14 = icmp ult i64 %11, 12
  br i1 %14, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %13, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %offset.idx = or i64 %index, 1
  %15 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %offset.idx, !sourceFile !3, !mergedLineNum !4
  %16 = bitcast %class.cMessage** %15 to <2 x %class.cMessage*>*
  %wide.load = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %16, align 8, !tbaa !17, !alias.scope !68
  %17 = getelementptr inbounds %class.cMessage*, %class.cMessage** %15, i64 2
  %18 = bitcast %class.cMessage** %17 to <2 x %class.cMessage*>*
  %wide.load77 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %18, align 8, !tbaa !17, !alias.scope !68
  %19 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %offset.idx, !sourceFile !3, !mergedLineNum !4
  %20 = bitcast %class.cMessage** %19 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load, <2 x %class.cMessage*>* %20, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %21 = getelementptr inbounds %class.cMessage*, %class.cMessage** %19, i64 2
  %22 = bitcast %class.cMessage** %21 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load77, <2 x %class.cMessage*>* %22, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %offset.idx.1 = or i64 %index, 5
  %23 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %offset.idx.1, !sourceFile !3, !mergedLineNum !4
  %24 = bitcast %class.cMessage** %23 to <2 x %class.cMessage*>*
  %wide.load.1 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %24, align 8, !tbaa !17, !alias.scope !68
  %25 = getelementptr inbounds %class.cMessage*, %class.cMessage** %23, i64 2
  %26 = bitcast %class.cMessage** %25 to <2 x %class.cMessage*>*
  %wide.load77.1 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %26, align 8, !tbaa !17, !alias.scope !68
  %27 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %offset.idx.1, !sourceFile !3, !mergedLineNum !4
  %28 = bitcast %class.cMessage** %27 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load.1, <2 x %class.cMessage*>* %28, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %29 = getelementptr inbounds %class.cMessage*, %class.cMessage** %27, i64 2
  %30 = bitcast %class.cMessage** %29 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load77.1, <2 x %class.cMessage*>* %30, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %offset.idx.2 = or i64 %index, 9
  %31 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %offset.idx.2, !sourceFile !3, !mergedLineNum !4
  %32 = bitcast %class.cMessage** %31 to <2 x %class.cMessage*>*
  %wide.load.2 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %32, align 8, !tbaa !17, !alias.scope !68
  %33 = getelementptr inbounds %class.cMessage*, %class.cMessage** %31, i64 2
  %34 = bitcast %class.cMessage** %33 to <2 x %class.cMessage*>*
  %wide.load77.2 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %34, align 8, !tbaa !17, !alias.scope !68
  %35 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %offset.idx.2, !sourceFile !3, !mergedLineNum !4
  %36 = bitcast %class.cMessage** %35 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load.2, <2 x %class.cMessage*>* %36, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %37 = getelementptr inbounds %class.cMessage*, %class.cMessage** %35, i64 2
  %38 = bitcast %class.cMessage** %37 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load77.2, <2 x %class.cMessage*>* %38, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %offset.idx.3 = or i64 %index, 13
  %39 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %offset.idx.3, !sourceFile !3, !mergedLineNum !4
  %40 = bitcast %class.cMessage** %39 to <2 x %class.cMessage*>*
  %wide.load.3 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %40, align 8, !tbaa !17, !alias.scope !68
  %41 = getelementptr inbounds %class.cMessage*, %class.cMessage** %39, i64 2
  %42 = bitcast %class.cMessage** %41 to <2 x %class.cMessage*>*
  %wide.load77.3 = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %42, align 8, !tbaa !17, !alias.scope !68
  %43 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %offset.idx.3, !sourceFile !3, !mergedLineNum !4
  %44 = bitcast %class.cMessage** %43 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load.3, <2 x %class.cMessage*>* %44, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %45 = getelementptr inbounds %class.cMessage*, %class.cMessage** %43, i64 2
  %46 = bitcast %class.cMessage** %45 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load77.3, <2 x %class.cMessage*>* %46, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %index.next.3 = add nuw i64 %index, 16
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !73

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %offset.idx.epil = or i64 %index.epil, 1
  %47 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %offset.idx.epil, !sourceFile !3, !mergedLineNum !4
  %48 = bitcast %class.cMessage** %47 to <2 x %class.cMessage*>*
  %wide.load.epil = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %48, align 8, !tbaa !17, !alias.scope !68
  %49 = getelementptr inbounds %class.cMessage*, %class.cMessage** %47, i64 2
  %50 = bitcast %class.cMessage** %49 to <2 x %class.cMessage*>*
  %wide.load77.epil = load <2 x %class.cMessage*>, <2 x %class.cMessage*>* %50, align 8, !tbaa !17, !alias.scope !68
  %51 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %offset.idx.epil, !sourceFile !3, !mergedLineNum !4
  %52 = bitcast %class.cMessage** %51 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load.epil, <2 x %class.cMessage*>* %52, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %53 = getelementptr inbounds %class.cMessage*, %class.cMessage** %51, i64 2
  %54 = bitcast %class.cMessage** %53 to <2 x %class.cMessage*>*
  store <2 x %class.cMessage*> %wide.load77.epil, <2 x %class.cMessage*>* %54, align 8, !tbaa !17, !alias.scope !71, !noalias !68
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !75

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %delete.notnull, label %for.body.preheader78

for.body.preheader78:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %55 = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %56 = xor i64 %indvars.iv.ph, -1
  %57 = add nsw i64 %56, %wide.trip.count
  %xtraiter79 = and i64 %55, 3
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader78, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader78 ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter79, %for.body.preheader78 ]
  %arrayidx.prol = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %indvars.iv.prol, !sourceFile !3, !mergedLineNum !4
  %58 = load %class.cMessage*, %class.cMessage** %arrayidx.prol, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx8.prol = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %indvars.iv.prol, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %58, %class.cMessage** %arrayidx8.prol, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !76

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader78
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader78 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %59 = icmp ult i64 %57, 3
  br i1 %59, label %delete.notnull, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  %60 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx8 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %indvars.iv, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %60, %class.cMessage** %arrayidx8, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %indvars.iv.next, !sourceFile !3, !mergedLineNum !4
  %61 = load %class.cMessage*, %class.cMessage** %arrayidx.1, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx8.1 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %indvars.iv.next, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %61, %class.cMessage** %arrayidx8.1, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %indvars.iv.next.1, !sourceFile !3, !mergedLineNum !4
  %62 = load %class.cMessage*, %class.cMessage** %arrayidx.2, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx8.2 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %indvars.iv.next.1, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %62, %class.cMessage** %arrayidx8.2, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds %class.cMessage*, %class.cMessage** %8, i64 %indvars.iv.next.2, !sourceFile !3, !mergedLineNum !4
  %63 = load %class.cMessage*, %class.cMessage** %arrayidx.3, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx8.3 = getelementptr inbounds %class.cMessage*, %class.cMessage** %7, i64 %indvars.iv.next.2, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %63, %class.cMessage** %arrayidx8.3, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %delete.notnull, label %for.body, !llvm.loop !77, !sourceFile !3, !mergedLineNum !4

for.end:                                          ; preds = %if.then
  %isnull = icmp eq %class.cMessage** %8, null, !sourceFile !3, !mergedLineNum !4
  br i1 %isnull, label %delete.end, label %delete.notnull, !sourceFile !3, !mergedLineNum !4

delete.notnull:                                   ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %for.end
  %64 = bitcast %class.cMessage** %8 to i8*, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZdaPv(i8* %64) #21, !sourceFile !3, !mergedLineNum !4
  br label %delete.end, !sourceFile !3, !mergedLineNum !4

delete.end:                                       ; preds = %delete.notnull, %for.end
  %65 = bitcast %class.cMessage*** %h to i8**
  store i8* %call, i8** %65, align 8, !tbaa !16
  br label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %delete.end, %entry
  %66 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %67 = bitcast %class.cMessage* %event to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %68 = bitcast %class.cMessageHeap* %this to void (%class.cObject*, %class.cOwnedObject*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load void (%class.cObject*, %class.cOwnedObject*)**, void (%class.cObject*, %class.cOwnedObject*)*** %68, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vtable, i64 12, !sourceFile !3, !mergedLineNum !4
  %69 = load void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %69(%class.cObject* nonnull align 8 dereferenceable(8) %66, %class.cOwnedObject* %67), !sourceFile !3, !mergedLineNum !4
  %70 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %h16 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %prior.i46.i = getelementptr inbounds %class.cMessage, %class.cMessage* %event, i64 0, i32 2
  %cmp1463 = icmp sgt i32 %70, 1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp1463, label %for.body15.lr.ph, label %for.end29, !sourceFile !3, !mergedLineNum !4

for.body15.lr.ph:                                 ; preds = %if.end
  %t.i.i.i37.i = getelementptr inbounds %class.cMessage, %class.cMessage* %event, i64 0, i32 13, i32 0
  %71 = load i64, i64* %t.i.i.i37.i, align 8, !tbaa !26, !noalias !78, !sourceFile !3, !mergedLineNum !4
  br label %for.body15

for.body15:                                       ; preds = %for.body15.lr.ph, %if.end21
  %j.064 = phi i32 [ %70, %for.body15.lr.ph ], [ %shr59, %if.end21 ]
  %shr59 = lshr i32 %j.064, 1
  %72 = load %class.cMessage**, %class.cMessage*** %h16, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %73 = zext i32 %shr59 to i64
  %arrayidx18 = getelementptr inbounds %class.cMessage*, %class.cMessage** %72, i64 %73, !sourceFile !3, !mergedLineNum !4
  %74 = load %class.cMessage*, %class.cMessage** %arrayidx18, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %74, i64 0, i32 13, i32 0
  %75 = load i64, i64* %t.i.i.i.i, align 8, !tbaa !26, !noalias !81, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i = icmp slt i64 %75, %71, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i, label %for.end29, label %cond.false.i, !sourceFile !3, !mergedLineNum !4

cond.false.i:                                     ; preds = %for.body15
  %cmp.i45.i = icmp sgt i64 %75, %71, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i, label %if.end21, label %cond.false6.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i:                                    ; preds = %cond.false.i
  %prior.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %74, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %76 = load i16, i16* %prior.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %77 = load i16, i16* %prior.i46.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i = icmp slt i16 %76, %77
  br i1 %cmp.i, label %for.end29, label %cond.false11.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i:                                   ; preds = %cond.false6.i
  %cmp16.i = icmp sgt i16 %76, %77
  br i1 %cmp16.i, label %if.end21, label %_ZleR8cMessageS0_.exit, !sourceFile !3, !mergedLineNum !4

_ZleR8cMessageS0_.exit:                           ; preds = %cond.false11.i
  %insertordr.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %74, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %78 = load i64, i64* %insertordr.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %79 = load i64, i64* %insertordr, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not = icmp ugt i64 %78, %79, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not, label %if.end21, label %for.end29, !sourceFile !3, !mergedLineNum !4

if.end21:                                         ; preds = %cond.false11.i, %cond.false.i, %_ZleR8cMessageS0_.exit
  %idxprom2660 = zext i32 %j.064 to i64
  %arrayidx27 = getelementptr inbounds %class.cMessage*, %class.cMessage** %72, i64 %idxprom2660, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %74, %class.cMessage** %arrayidx27, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex = getelementptr inbounds %class.cMessage, %class.cMessage* %74, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %j.064, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %cmp14 = icmp ugt i32 %j.064, 3
  br i1 %cmp14, label %for.body15, label %for.end29, !llvm.loop !84, !sourceFile !3, !mergedLineNum !4

for.end29:                                        ; preds = %if.end21, %_ZleR8cMessageS0_.exit, %for.body15, %cond.false6.i, %if.end
  %j.0.lcssa = phi i32 [ %70, %if.end ], [ %j.064, %cond.false6.i ], [ %j.064, %for.body15 ], [ %j.064, %_ZleR8cMessageS0_.exit ], [ %shr59, %if.end21 ]
  %80 = load %class.cMessage**, %class.cMessage*** %h16, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %idxprom31 = sext i32 %j.0.lcssa to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx32 = getelementptr inbounds %class.cMessage*, %class.cMessage** %80, i64 %idxprom31, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %event, %class.cMessage** %arrayidx32, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex33 = getelementptr inbounds %class.cMessage, %class.cMessage* %event, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %j.0.lcssa, i32* %heapindex33, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN12cMessageHeap7shiftupEi(%class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this, i32 %from) local_unnamed_addr #15 align 2 {
entry:
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1
  %shl76 = shl i32 %from, 1, !sourceFile !3, !mergedLineNum !4
  %cmp.not77 = icmp sgt i32 %shl76, %0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not77, label %while.end, label %while.body, !sourceFile !3, !mergedLineNum !4

while.body:                                       ; preds = %entry, %if.then15
  %shl79 = phi i32 [ %shl, %if.then15 ], [ %shl76, %entry ]
  %i.078 = phi i32 [ %j.0, %if.then15 ], [ %from, %entry ]
  %cmp3 = icmp slt i32 %shl79, %0, !sourceFile !3, !mergedLineNum !4
  %1 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16
  %idxprom = sext i32 %shl79 to i64
  br i1 %cmp3, label %land.lhs.true, label %if.end, !sourceFile !3, !mergedLineNum !4

land.lhs.true:                                    ; preds = %while.body
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom, !sourceFile !3, !mergedLineNum !4
  %2 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %add = or i32 %shl79, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom5, !sourceFile !3, !mergedLineNum !4
  %3 = load %class.cMessage*, %class.cMessage** %arrayidx6, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %2, i64 0, i32 13, i32 0
  %4 = load i64, i64* %t.i.i.i.i.i, align 8, !tbaa !26, !noalias !85, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 13, i32 0
  %5 = load i64, i64* %t.i.i.i37.i.i, align 8, !tbaa !26, !noalias !88, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i = icmp slt i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i, label %_ZgtR8cMessageS0_.exit.thread, label %cond.false.i.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i:                                   ; preds = %land.lhs.true
  %cmp.i45.i.i = icmp sgt i64 %4, %5, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i, label %if.end, label %cond.false6.i.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i:                                  ; preds = %cond.false.i.i
  %prior.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %2, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %6 = load i16, i16* %prior.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %7 = load i16, i16* %prior.i46.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i = icmp slt i16 %6, %7
  br i1 %cmp.i.i, label %_ZgtR8cMessageS0_.exit.thread, label %cond.false11.i.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i:                                 ; preds = %cond.false6.i.i
  %cmp16.i.i = icmp sgt i16 %6, %7
  br i1 %cmp16.i.i, label %if.end, label %_ZgtR8cMessageS0_.exit, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit:                           ; preds = %cond.false11.i.i
  %insertordr.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %2, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %8 = load i64, i64* %insertordr.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %9 = load i64, i64* %insertordr.i49.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i.not = icmp ugt i64 %8, %9, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i.not, label %if.end, label %_ZgtR8cMessageS0_.exit.thread

_ZgtR8cMessageS0_.exit.thread:                    ; preds = %cond.false6.i.i, %land.lhs.true, %_ZgtR8cMessageS0_.exit
  br label %if.end

if.end:                                           ; preds = %while.body, %cond.false11.i.i, %cond.false.i.i, %_ZgtR8cMessageS0_.exit.thread, %_ZgtR8cMessageS0_.exit
  %idxprom11.pre-phi = phi i64 [ %idxprom5, %cond.false11.i.i ], [ %idxprom5, %cond.false.i.i ], [ %idxprom, %_ZgtR8cMessageS0_.exit.thread ], [ %idxprom5, %_ZgtR8cMessageS0_.exit ], [ %idxprom, %while.body ]
  %j.0 = phi i32 [ %add, %cond.false11.i.i ], [ %add, %cond.false.i.i ], [ %shl79, %_ZgtR8cMessageS0_.exit.thread ], [ %add, %_ZgtR8cMessageS0_.exit ], [ %shl79, %while.body ], !sourceFile !3, !mergedLineNum !4
  %idxprom8 = sext i32 %i.078 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx9 = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom8, !sourceFile !3, !mergedLineNum !4
  %10 = load %class.cMessage*, %class.cMessage** %arrayidx9, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx12 = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom11.pre-phi, !sourceFile !3, !mergedLineNum !4
  %11 = load %class.cMessage*, %class.cMessage** %arrayidx12, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i46 = getelementptr inbounds %class.cMessage, %class.cMessage* %10, i64 0, i32 13, i32 0
  %12 = load i64, i64* %t.i.i.i.i.i46, align 8, !tbaa !26, !noalias !91, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i47 = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 13, i32 0
  %13 = load i64, i64* %t.i.i.i37.i.i47, align 8, !tbaa !26, !noalias !94, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i48 = icmp slt i64 %12, %13, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i48, label %while.end, label %cond.false.i.i50, !sourceFile !3, !mergedLineNum !4

cond.false.i.i50:                                 ; preds = %if.end
  %cmp.i45.i.i49 = icmp sgt i64 %12, %13, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i49, label %if.then15, label %cond.false6.i.i54, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i54:                                ; preds = %cond.false.i.i50
  %prior.i.i.i51 = getelementptr inbounds %class.cMessage, %class.cMessage* %10, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %14 = load i16, i16* %prior.i.i.i51, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i52 = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %15 = load i16, i16* %prior.i46.i.i52, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i53 = icmp slt i16 %14, %15
  br i1 %cmp.i.i53, label %while.end, label %cond.false11.i.i56, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i56:                               ; preds = %cond.false6.i.i54
  %cmp16.i.i55 = icmp sgt i16 %14, %15
  br i1 %cmp16.i.i55, label %if.then15, label %_ZgtR8cMessageS0_.exit63, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit63:                         ; preds = %cond.false11.i.i56
  %insertordr.i.i.i57 = getelementptr inbounds %class.cMessage, %class.cMessage* %10, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %16 = load i64, i64* %insertordr.i.i.i57, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i58 = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %17 = load i64, i64* %insertordr.i49.i.i58, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i59.not = icmp ugt i64 %16, %17, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i59.not, label %if.then15, label %while.end, !sourceFile !3, !mergedLineNum !4

if.then15:                                        ; preds = %cond.false11.i.i56, %cond.false.i.i50, %_ZgtR8cMessageS0_.exit63
  store %class.cMessage* %10, %class.cMessage** %arrayidx12, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex = getelementptr inbounds %class.cMessage, %class.cMessage* %10, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %j.0, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %18 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx27 = getelementptr inbounds %class.cMessage*, %class.cMessage** %18, i64 %idxprom8, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %11, %class.cMessage** %arrayidx27, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex28 = getelementptr inbounds %class.cMessage, %class.cMessage* %11, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %i.078, i32* %heapindex28, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %shl = shl i32 %j.0, 1, !sourceFile !3, !mergedLineNum !4
  %cmp.not = icmp sgt i32 %shl, %0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !97, !sourceFile !3, !mergedLineNum !4

while.end:                                        ; preds = %if.then15, %_ZgtR8cMessageS0_.exit63, %if.end, %cond.false6.i.i54, %entry
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local %class.cMessage* @_ZNK12cMessageHeap9peekFirstEv(%class.cMessageHeap* nocapture nonnull readonly align 8 dereferenceable(64) %this) local_unnamed_addr #12 align 2 {
entry:
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp eq i32 %0, 0, !sourceFile !3, !mergedLineNum !4
  %1 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !98
  %2 = load %class.cMessage**, %class.cMessage*** %1, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !98
  %3 = getelementptr inbounds %class.cMessage*, %class.cMessage** %2, i64 1, !sourceFile !3, !mergedLineNum !98
  %4 = load %class.cMessage*, %class.cMessage** %3, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !98
  %moved.sel = select i1 %cmp, %class.cMessage* null, %class.cMessage* %4
  ret %class.cMessage* %moved.sel, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: uwtable
define dso_local %class.cMessage* @_ZN12cMessageHeap11removeFirstEv(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #4 align 2 {
entry:
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp sgt i32 %0, 0, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %if.then, label %return, !sourceFile !3, !mergedLineNum !4

if.then:                                          ; preds = %entry
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %1 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 1, !sourceFile !3, !mergedLineNum !4
  %2 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %dec = add nsw i32 %0, -1, !sourceFile !3, !mergedLineNum !4
  store i32 %dec, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %idxprom11 = zext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom11, !sourceFile !3, !mergedLineNum !4
  %3 = load %class.cMessage*, %class.cMessage** %arrayidx4, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %3, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 1, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %cmp.not77.i = icmp slt i32 %0, 3
  br i1 %cmp.not77.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %while.body.i, !sourceFile !3, !mergedLineNum !4

while.body.i:                                     ; preds = %if.then, %if.then15.i
  %shl79.i = phi i32 [ %shl.i, %if.then15.i ], [ 2, %if.then ]
  %i.078.i = phi i32 [ %j.0.i, %if.then15.i ], [ 1, %if.then ]
  %cmp3.i = icmp slt i32 %shl79.i, %dec, !sourceFile !3, !mergedLineNum !4
  %4 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16
  %idxprom.i = sext i32 %shl79.i to i64
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i:                                  ; preds = %while.body.i
  %arrayidx.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %idxprom.i, !sourceFile !3, !mergedLineNum !4
  %5 = load %class.cMessage*, %class.cMessage** %arrayidx.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %add.i = or i32 %shl79.i, 1
  %idxprom5.i = sext i32 %add.i to i64
  %arrayidx6.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %idxprom5.i, !sourceFile !3, !mergedLineNum !4
  %6 = load %class.cMessage*, %class.cMessage** %arrayidx6.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %5, i64 0, i32 13, i32 0
  %7 = load i64, i64* %t.i.i.i.i.i.i, align 8, !tbaa !26, !noalias !99, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %6, i64 0, i32 13, i32 0
  %8 = load i64, i64* %t.i.i.i37.i.i.i, align 8, !tbaa !26, !noalias !102, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i.i = icmp slt i64 %7, %8, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i.i, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i
  %cmp.i45.i.i.i = icmp sgt i64 %7, %8, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i.i, label %if.end.i, label %cond.false6.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i.i:                                ; preds = %cond.false.i.i.i
  %prior.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %5, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %9 = load i16, i16* %prior.i.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %6, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %10 = load i16, i16* %prior.i46.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i = icmp slt i16 %9, %10
  br i1 %cmp.i.i.i, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false11.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i.i:                               ; preds = %cond.false6.i.i.i
  %cmp16.i.i.i = icmp sgt i16 %9, %10
  br i1 %cmp16.i.i.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.i, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit.i:                         ; preds = %cond.false11.i.i.i
  %insertordr.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %5, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %11 = load i64, i64* %insertordr.i.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %6, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %12 = load i64, i64* %insertordr.i49.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i.not.i = icmp ugt i64 %11, %12, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i.not.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.thread.i

_ZgtR8cMessageS0_.exit.thread.i:                  ; preds = %_ZgtR8cMessageS0_.exit.i, %cond.false6.i.i.i, %land.lhs.true.i
  br label %if.end.i

if.end.i:                                         ; preds = %_ZgtR8cMessageS0_.exit.thread.i, %_ZgtR8cMessageS0_.exit.i, %cond.false11.i.i.i, %cond.false.i.i.i, %while.body.i
  %idxprom11.pre-phi.i = phi i64 [ %idxprom5.i, %cond.false11.i.i.i ], [ %idxprom5.i, %cond.false.i.i.i ], [ %idxprom.i, %_ZgtR8cMessageS0_.exit.thread.i ], [ %idxprom5.i, %_ZgtR8cMessageS0_.exit.i ], [ %idxprom.i, %while.body.i ]
  %j.0.i = phi i32 [ %add.i, %cond.false11.i.i.i ], [ %add.i, %cond.false.i.i.i ], [ %shl79.i, %_ZgtR8cMessageS0_.exit.thread.i ], [ %add.i, %_ZgtR8cMessageS0_.exit.i ], [ %shl79.i, %while.body.i ], !sourceFile !3, !mergedLineNum !4
  %idxprom8.i = sext i32 %i.078.i to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx9.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %idxprom8.i, !sourceFile !3, !mergedLineNum !4
  %13 = load %class.cMessage*, %class.cMessage** %arrayidx9.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx12.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %4, i64 %idxprom11.pre-phi.i, !sourceFile !3, !mergedLineNum !4
  %14 = load %class.cMessage*, %class.cMessage** %arrayidx12.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i46.i = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 13, i32 0
  %15 = load i64, i64* %t.i.i.i.i.i46.i, align 8, !tbaa !26, !noalias !105, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i47.i = getelementptr inbounds %class.cMessage, %class.cMessage* %14, i64 0, i32 13, i32 0
  %16 = load i64, i64* %t.i.i.i37.i.i47.i, align 8, !tbaa !26, !noalias !108, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i48.i = icmp slt i64 %15, %16, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i48.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %cond.false.i.i50.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i50.i:                               ; preds = %if.end.i
  %cmp.i45.i.i49.i = icmp sgt i64 %15, %16, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i49.i, label %if.then15.i, label %cond.false6.i.i54.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i54.i:                              ; preds = %cond.false.i.i50.i
  %prior.i.i.i51.i = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %17 = load i16, i16* %prior.i.i.i51.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i52.i = getelementptr inbounds %class.cMessage, %class.cMessage* %14, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %18 = load i16, i16* %prior.i46.i.i52.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i53.i = icmp slt i16 %17, %18
  br i1 %cmp.i.i53.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %cond.false11.i.i56.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i56.i:                             ; preds = %cond.false6.i.i54.i
  %cmp16.i.i55.i = icmp sgt i16 %17, %18
  br i1 %cmp16.i.i55.i, label %if.then15.i, label %_ZgtR8cMessageS0_.exit63.i, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit63.i:                       ; preds = %cond.false11.i.i56.i
  %insertordr.i.i.i57.i = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %19 = load i64, i64* %insertordr.i.i.i57.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i58.i = getelementptr inbounds %class.cMessage, %class.cMessage* %14, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %20 = load i64, i64* %insertordr.i49.i.i58.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i59.not.i = icmp ugt i64 %19, %20, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i59.not.i, label %if.then15.i, label %_ZN12cMessageHeap7shiftupEi.exit, !sourceFile !3, !mergedLineNum !4

if.then15.i:                                      ; preds = %_ZgtR8cMessageS0_.exit63.i, %cond.false11.i.i56.i, %cond.false.i.i50.i
  store %class.cMessage* %13, %class.cMessage** %arrayidx12.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i = getelementptr inbounds %class.cMessage, %class.cMessage* %13, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %j.0.i, i32* %heapindex.i, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %21 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx27.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %21, i64 %idxprom8.i, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %14, %class.cMessage** %arrayidx27.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex28.i = getelementptr inbounds %class.cMessage, %class.cMessage* %14, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %i.078.i, i32* %heapindex28.i, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %shl.i = shl i32 %j.0.i, 1, !sourceFile !3, !mergedLineNum !4
  %cmp.not.i.not = icmp slt i32 %shl.i, %0
  br i1 %cmp.not.i.not, label %while.body.i, label %_ZN12cMessageHeap7shiftupEi.exit, !llvm.loop !97, !sourceFile !3, !mergedLineNum !4

_ZN12cMessageHeap7shiftupEi.exit:                 ; preds = %if.end.i, %cond.false6.i.i54.i, %_ZgtR8cMessageS0_.exit63.i, %if.then15.i, %if.then
  %22 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %23 = bitcast %class.cMessage* %2 to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %24 = bitcast %class.cMessageHeap* %this to void (%class.cObject*, %class.cOwnedObject*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load void (%class.cObject*, %class.cOwnedObject*)**, void (%class.cObject*, %class.cOwnedObject*)*** %24, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vtable, i64 13, !sourceFile !3, !mergedLineNum !4
  %25 = load void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %25(%class.cObject* nonnull align 8 dereferenceable(8) %22, %class.cOwnedObject* %23), !sourceFile !3, !mergedLineNum !4
  %heapindex7 = getelementptr inbounds %class.cMessage, %class.cMessage* %2, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 -1, i32* %heapindex7, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %entry, %_ZN12cMessageHeap7shiftupEi.exit
  %retval.0 = phi %class.cMessage* [ %2, %_ZN12cMessageHeap7shiftupEi.exit ], [ null, %entry ], !sourceFile !3, !mergedLineNum !4
  ret %class.cMessage* %retval.0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: uwtable
define dso_local %class.cMessage* @_ZN12cMessageHeap6removeEP8cMessage(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this, %class.cMessage* %event) local_unnamed_addr #4 align 2 {
entry:
  %heapindex = getelementptr inbounds %class.cMessage, %class.cMessage* %event, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  %0 = load i32, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %cmp = icmp eq i32 %0, -1, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp, label %return, label %if.end, !sourceFile !3, !mergedLineNum !4

if.end:                                           ; preds = %entry
  %h = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %1 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %n = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %2 = load i32, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %dec = add nsw i32 %2, -1, !sourceFile !3, !mergedLineNum !4
  store i32 %dec, i32* %n, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %idxprom = sext i32 %2 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom, !sourceFile !3, !mergedLineNum !4
  %3 = load %class.cMessage*, %class.cMessage** %arrayidx, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 2
  %insertordr.i49.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 16
  %cmp3.not42 = icmp ult i32 %0, 2
  br i1 %cmp3.not42, label %while.end, label %land.rhs.lr.ph, !sourceFile !3, !mergedLineNum !4

land.rhs.lr.ph:                                   ; preds = %if.end
  %t.i.i.i37.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 13, i32 0
  %4 = load i64, i64* %t.i.i.i37.i.i, align 8, !tbaa !26, !noalias !111, !sourceFile !3, !mergedLineNum !4
  %shr4557 = ashr i32 %0, 1
  %idxprom558 = sext i32 %shr4557 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx659 = getelementptr inbounds %class.cMessage*, %class.cMessage** %1, i64 %idxprom558, !sourceFile !3, !mergedLineNum !4
  %5 = load %class.cMessage*, %class.cMessage** %arrayidx659, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i60 = getelementptr inbounds %class.cMessage, %class.cMessage* %5, i64 0, i32 13, i32 0
  %6 = load i64, i64* %t.i.i.i.i.i60, align 8, !tbaa !26, !noalias !114, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i61 = icmp slt i64 %6, %4, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i61, label %while.end, label %cond.false.i.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i:                                   ; preds = %land.rhs.lr.ph, %while.body.land.rhs_crit_edge
  %7 = phi i64 [ %15, %while.body.land.rhs_crit_edge ], [ %6, %land.rhs.lr.ph ]
  %8 = phi %class.cMessage* [ %14, %while.body.land.rhs_crit_edge ], [ %5, %land.rhs.lr.ph ]
  %shr4564 = phi i32 [ %shr45, %while.body.land.rhs_crit_edge ], [ %shr4557, %land.rhs.lr.ph ]
  %out.04362 = phi i32 [ %shr4564, %while.body.land.rhs_crit_edge ], [ %0, %land.rhs.lr.ph ]
  %9 = phi %class.cMessage** [ %.pre49.pre, %while.body.land.rhs_crit_edge ], [ %1, %land.rhs.lr.ph ]
  %cmp.i45.i.i = icmp sgt i64 %7, %4, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i, label %while.body, label %cond.false6.i.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i:                                  ; preds = %cond.false.i.i
  %prior.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %8, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %10 = load i16, i16* %prior.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %11 = load i16, i16* %prior.i46.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i = icmp slt i16 %10, %11
  br i1 %cmp.i.i, label %while.end, label %cond.false11.i.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i:                                 ; preds = %cond.false6.i.i
  %cmp16.i.i = icmp sgt i16 %10, %11
  br i1 %cmp16.i.i, label %while.body, label %_ZgtR8cMessageS0_.exit, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit:                           ; preds = %cond.false11.i.i
  %insertordr.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %8, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %12 = load i64, i64* %insertordr.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %13 = load i64, i64* %insertordr.i49.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i.not = icmp ugt i64 %12, %13, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i.not, label %while.body, label %while.end, !sourceFile !3, !mergedLineNum !4

while.body:                                       ; preds = %cond.false11.i.i, %cond.false.i.i, %_ZgtR8cMessageS0_.exit
  %idxprom11 = sext i32 %out.04362 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx12 = getelementptr inbounds %class.cMessage*, %class.cMessage** %9, i64 %idxprom11, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %8, %class.cMessage** %arrayidx12, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex13 = getelementptr inbounds %class.cMessage, %class.cMessage* %8, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %out.04362, i32* %heapindex13, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %cmp3.not = icmp ult i32 %shr4564, 2
  %.pre49.pre = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16
  br i1 %cmp3.not, label %while.end, label %while.body.land.rhs_crit_edge, !llvm.loop !117, !sourceFile !3, !mergedLineNum !4

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  %shr45 = ashr i32 %shr4564, 1
  %idxprom5 = sext i32 %shr45 to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx6 = getelementptr inbounds %class.cMessage*, %class.cMessage** %.pre49.pre, i64 %idxprom5, !sourceFile !3, !mergedLineNum !4
  %14 = load %class.cMessage*, %class.cMessage** %arrayidx6, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %14, i64 0, i32 13, i32 0
  %15 = load i64, i64* %t.i.i.i.i.i, align 8, !tbaa !26, !noalias !114, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i = icmp slt i64 %15, %4, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i, label %while.end, label %cond.false.i.i, !sourceFile !3, !mergedLineNum !4

while.end:                                        ; preds = %cond.false6.i.i, %while.body.land.rhs_crit_edge, %_ZgtR8cMessageS0_.exit, %while.body, %land.rhs.lr.ph, %if.end
  %16 = phi %class.cMessage** [ %1, %if.end ], [ %1, %land.rhs.lr.ph ], [ %9, %_ZgtR8cMessageS0_.exit ], [ %.pre49.pre, %while.body.land.rhs_crit_edge ], [ %9, %cond.false6.i.i ], [ %.pre49.pre, %while.body ]
  %out.0.lcssa = phi i32 [ %0, %if.end ], [ %0, %land.rhs.lr.ph ], [ %out.04362, %_ZgtR8cMessageS0_.exit ], [ %shr4564, %while.body.land.rhs_crit_edge ], [ %out.04362, %cond.false6.i.i ], [ %shr4564, %while.body ]
  %idxprom15 = sext i32 %out.0.lcssa to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx16 = getelementptr inbounds %class.cMessage*, %class.cMessage** %16, i64 %idxprom15, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %3, %class.cMessage** %arrayidx16, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex17 = getelementptr inbounds %class.cMessage, %class.cMessage* %3, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %out.0.lcssa, i32* %heapindex17, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %shl76.i = shl i32 %out.0.lcssa, 1, !sourceFile !3, !mergedLineNum !4
  %cmp.not77.i.not = icmp slt i32 %shl76.i, %2
  br i1 %cmp.not77.i.not, label %while.body.i, label %_ZN12cMessageHeap7shiftupEi.exit, !sourceFile !3, !mergedLineNum !4

while.body.i:                                     ; preds = %while.end, %if.then15.i
  %shl79.i = phi i32 [ %shl.i, %if.then15.i ], [ %shl76.i, %while.end ]
  %i.078.i = phi i32 [ %j.0.i, %if.then15.i ], [ %out.0.lcssa, %while.end ]
  %cmp3.i = icmp slt i32 %shl79.i, %dec, !sourceFile !3, !mergedLineNum !4
  %17 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16
  %idxprom.i = sext i32 %shl79.i to i64
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i, !sourceFile !3, !mergedLineNum !4

land.lhs.true.i:                                  ; preds = %while.body.i
  %arrayidx.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %17, i64 %idxprom.i, !sourceFile !3, !mergedLineNum !4
  %18 = load %class.cMessage*, %class.cMessage** %arrayidx.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %add.i = or i32 %shl79.i, 1
  %idxprom5.i = sext i32 %add.i to i64
  %arrayidx6.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %17, i64 %idxprom5.i, !sourceFile !3, !mergedLineNum !4
  %19 = load %class.cMessage*, %class.cMessage** %arrayidx6.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %18, i64 0, i32 13, i32 0
  %20 = load i64, i64* %t.i.i.i.i.i.i, align 8, !tbaa !26, !noalias !118, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %19, i64 0, i32 13, i32 0
  %21 = load i64, i64* %t.i.i.i37.i.i.i, align 8, !tbaa !26, !noalias !121, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i.i = icmp slt i64 %20, %21, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i.i, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i
  %cmp.i45.i.i.i = icmp sgt i64 %20, %21, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i.i, label %if.end.i, label %cond.false6.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i.i:                                ; preds = %cond.false.i.i.i
  %prior.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %18, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %22 = load i16, i16* %prior.i.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %19, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %23 = load i16, i16* %prior.i46.i.i.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i34 = icmp slt i16 %22, %23
  br i1 %cmp.i.i.i34, label %_ZgtR8cMessageS0_.exit.thread.i, label %cond.false11.i.i.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i.i:                               ; preds = %cond.false6.i.i.i
  %cmp16.i.i.i = icmp sgt i16 %22, %23
  br i1 %cmp16.i.i.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.i, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit.i:                         ; preds = %cond.false11.i.i.i
  %insertordr.i.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %18, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %24 = load i64, i64* %insertordr.i.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i.i = getelementptr inbounds %class.cMessage, %class.cMessage* %19, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %25 = load i64, i64* %insertordr.i49.i.i.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i.not.i = icmp ugt i64 %24, %25, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i.not.i, label %if.end.i, label %_ZgtR8cMessageS0_.exit.thread.i

_ZgtR8cMessageS0_.exit.thread.i:                  ; preds = %_ZgtR8cMessageS0_.exit.i, %cond.false6.i.i.i, %land.lhs.true.i
  br label %if.end.i

if.end.i:                                         ; preds = %_ZgtR8cMessageS0_.exit.thread.i, %_ZgtR8cMessageS0_.exit.i, %cond.false11.i.i.i, %cond.false.i.i.i, %while.body.i
  %idxprom11.pre-phi.i = phi i64 [ %idxprom5.i, %cond.false11.i.i.i ], [ %idxprom5.i, %cond.false.i.i.i ], [ %idxprom.i, %_ZgtR8cMessageS0_.exit.thread.i ], [ %idxprom5.i, %_ZgtR8cMessageS0_.exit.i ], [ %idxprom.i, %while.body.i ]
  %j.0.i = phi i32 [ %add.i, %cond.false11.i.i.i ], [ %add.i, %cond.false.i.i.i ], [ %shl79.i, %_ZgtR8cMessageS0_.exit.thread.i ], [ %add.i, %_ZgtR8cMessageS0_.exit.i ], [ %shl79.i, %while.body.i ], !sourceFile !3, !mergedLineNum !4
  %idxprom8.i = sext i32 %i.078.i to i64, !sourceFile !3, !mergedLineNum !4
  %arrayidx9.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %17, i64 %idxprom8.i, !sourceFile !3, !mergedLineNum !4
  %26 = load %class.cMessage*, %class.cMessage** %arrayidx9.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %arrayidx12.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %17, i64 %idxprom11.pre-phi.i, !sourceFile !3, !mergedLineNum !4
  %27 = load %class.cMessage*, %class.cMessage** %arrayidx12.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i.i.i46.i = getelementptr inbounds %class.cMessage, %class.cMessage* %26, i64 0, i32 13, i32 0
  %28 = load i64, i64* %t.i.i.i.i.i46.i, align 8, !tbaa !26, !noalias !124, !sourceFile !3, !mergedLineNum !4
  %t.i.i.i37.i.i47.i = getelementptr inbounds %class.cMessage, %class.cMessage* %27, i64 0, i32 13, i32 0
  %29 = load i64, i64* %t.i.i.i37.i.i47.i, align 8, !tbaa !26, !noalias !127, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i.i48.i = icmp slt i64 %28, %29, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i.i.i48.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %cond.false.i.i50.i, !sourceFile !3, !mergedLineNum !4

cond.false.i.i50.i:                               ; preds = %if.end.i
  %cmp.i45.i.i49.i = icmp sgt i64 %28, %29, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp.i45.i.i49.i, label %if.then15.i, label %cond.false6.i.i54.i, !sourceFile !3, !mergedLineNum !4

cond.false6.i.i54.i:                              ; preds = %cond.false.i.i50.i
  %prior.i.i.i51.i = getelementptr inbounds %class.cMessage, %class.cMessage* %26, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %30 = load i16, i16* %prior.i.i.i51.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %prior.i46.i.i52.i = getelementptr inbounds %class.cMessage, %class.cMessage* %27, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %31 = load i16, i16* %prior.i46.i.i52.i, align 2, !tbaa !66, !sourceFile !3, !mergedLineNum !4
  %cmp.i.i53.i = icmp slt i16 %30, %31
  br i1 %cmp.i.i53.i, label %_ZN12cMessageHeap7shiftupEi.exit, label %cond.false11.i.i56.i, !sourceFile !3, !mergedLineNum !4

cond.false11.i.i56.i:                             ; preds = %cond.false6.i.i54.i
  %cmp16.i.i55.i = icmp sgt i16 %30, %31
  br i1 %cmp16.i.i55.i, label %if.then15.i, label %_ZgtR8cMessageS0_.exit63.i, !sourceFile !3, !mergedLineNum !4

_ZgtR8cMessageS0_.exit63.i:                       ; preds = %cond.false11.i.i56.i
  %insertordr.i.i.i57.i = getelementptr inbounds %class.cMessage, %class.cMessage* %26, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %32 = load i64, i64* %insertordr.i.i.i57.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %insertordr.i49.i.i58.i = getelementptr inbounds %class.cMessage, %class.cMessage* %27, i64 0, i32 16, !sourceFile !3, !mergedLineNum !4
  %33 = load i64, i64* %insertordr.i49.i.i58.i, align 8, !tbaa !67, !sourceFile !3, !mergedLineNum !4
  %cmp21.i.not.i59.not.i = icmp ugt i64 %32, %33, !sourceFile !3, !mergedLineNum !4
  br i1 %cmp21.i.not.i59.not.i, label %if.then15.i, label %_ZN12cMessageHeap7shiftupEi.exit, !sourceFile !3, !mergedLineNum !4

if.then15.i:                                      ; preds = %_ZgtR8cMessageS0_.exit63.i, %cond.false11.i.i56.i, %cond.false.i.i50.i
  store %class.cMessage* %26, %class.cMessage** %arrayidx12.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex.i = getelementptr inbounds %class.cMessage, %class.cMessage* %26, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %j.0.i, i32* %heapindex.i, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %34 = load %class.cMessage**, %class.cMessage*** %h, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %arrayidx27.i = getelementptr inbounds %class.cMessage*, %class.cMessage** %34, i64 %idxprom8.i, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage* %27, %class.cMessage** %arrayidx27.i, align 8, !tbaa !17, !sourceFile !3, !mergedLineNum !4
  %heapindex28.i = getelementptr inbounds %class.cMessage, %class.cMessage* %27, i64 0, i32 15, !sourceFile !3, !mergedLineNum !4
  store i32 %i.078.i, i32* %heapindex28.i, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  %shl.i = shl i32 %j.0.i, 1, !sourceFile !3, !mergedLineNum !4
  %cmp.not.i.not = icmp slt i32 %shl.i, %2
  br i1 %cmp.not.i.not, label %while.body.i, label %_ZN12cMessageHeap7shiftupEi.exit, !llvm.loop !97, !sourceFile !3, !mergedLineNum !4

_ZN12cMessageHeap7shiftupEi.exit:                 ; preds = %if.end.i, %cond.false6.i.i54.i, %_ZgtR8cMessageS0_.exit63.i, %if.then15.i, %while.end
  %35 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %this, i64 0, i32 0, i32 0, i32 0
  %36 = bitcast %class.cMessage* %event to %class.cOwnedObject*, !sourceFile !3, !mergedLineNum !4
  %37 = bitcast %class.cMessageHeap* %this to void (%class.cObject*, %class.cOwnedObject*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load void (%class.cObject*, %class.cOwnedObject*)**, void (%class.cObject*, %class.cOwnedObject*)*** %37, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vtable, i64 13, !sourceFile !3, !mergedLineNum !4
  %38 = load void (%class.cObject*, %class.cOwnedObject*)*, void (%class.cObject*, %class.cOwnedObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  tail call void %38(%class.cObject* nonnull align 8 dereferenceable(8) %35, %class.cOwnedObject* %36), !sourceFile !3, !mergedLineNum !4
  store i32 -1, i32* %heapindex, align 8, !tbaa !52, !sourceFile !3, !mergedLineNum !4
  br label %return, !sourceFile !3, !mergedLineNum !4

return:                                           ; preds = %entry, %_ZN12cMessageHeap7shiftupEi.exit
  %retval.0 = phi %class.cMessage* [ %event, %_ZN12cMessageHeap7shiftupEi.exit ], [ null, %entry ], !sourceFile !3, !mergedLineNum !4
  ret %class.cMessage* %retval.0, !sourceFile !3, !mergedLineNum !4
}

declare dso_local %class.cClassDescriptor* @_ZN7cObject13getDescriptorEv(%class.cObject* nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare dso_local void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8), %class.cOwnedObject*) unnamed_addr #1

declare dso_local void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(%class.cObject* nonnull align 8 dereferenceable(8), %class.cOwnedObject*, %class.cObject*) unnamed_addr #1

declare dso_local i8* @_ZNK7cObject12getClassNameEv(%class.cObject* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8* @_ZNK12cNamedObject7getNameEv(%class.cNamedObject* nonnull align 8 dereferenceable(20) %this) unnamed_addr #16 comdat align 2 {
entry:
  %namep = getelementptr inbounds %class.cNamedObject, %class.cNamedObject* %this, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %0 = load i8*, i8** %namep, align 8, !tbaa !130, !sourceFile !3, !mergedLineNum !4
  %tobool.not = icmp eq i8* %0, null, !sourceFile !3, !mergedLineNum !4
  %moved.sel = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %0
  ret i8* %moved.sel, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i8* @_ZNK7cObject11getFullNameEv(%class.cObject* nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 comdat align 2 {
entry:
  %0 = bitcast %class.cObject* %this to i8* (%class.cObject*)***, !sourceFile !3, !mergedLineNum !4
  %vtable = load i8* (%class.cObject*)**, i8* (%class.cObject*)*** %0, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn = getelementptr inbounds i8* (%class.cObject*)*, i8* (%class.cObject*)** %vtable, i64 6, !sourceFile !3, !mergedLineNum !4
  %1 = load i8* (%class.cObject*)*, i8* (%class.cObject*)** %vfn, align 8, !sourceFile !3, !mergedLineNum !4
  %call = tail call i8* %1(%class.cObject* nonnull align 8 dereferenceable(8) %this), !sourceFile !3, !mergedLineNum !4
  ret i8* %call, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZNK7cObject11getFullPathB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %class.cObject* nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare dso_local void @_ZNK7cObject12detailedInfoB5cxx11Ev(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %class.cObject* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local %class.cMessageHeap* @_ZNK12cMessageHeap3dupEv(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call noalias nonnull dereferenceable(64) i8* @_Znwm(i64 64) #20, !sourceFile !3, !mergedLineNum !4
  %0 = bitcast i8* %call to %class.cMessageHeap*, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast i8* %call to %class.cOwnedObject*
  invoke void @_ZN12cOwnedObjectC2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %1)
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %entry
  %2 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %h.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  store %class.cMessage** null, %class.cMessage*** %h.i, align 8, !tbaa !16, !sourceFile !3, !mergedLineNum !4
  %n.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  store i32 0, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %3 = bitcast %class.cMessageHeap* %this to %class.cNamedObject*, !sourceFile !3, !mergedLineNum !4
  %4 = bitcast %class.cMessageHeap* %this to i8* (%class.cNamedObject*)***
  %vtable.i = load i8* (%class.cNamedObject*)**, i8* (%class.cNamedObject*)*** %4, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn.i = getelementptr inbounds i8* (%class.cNamedObject*)*, i8* (%class.cNamedObject*)** %vtable.i, i64 6, !sourceFile !3, !mergedLineNum !4
  %5 = load i8* (%class.cNamedObject*)*, i8* (%class.cNamedObject*)** %vfn.i, align 8, !sourceFile !3, !mergedLineNum !4
  %call.i = invoke i8* %5(%class.cNamedObject* nonnull align 8 dereferenceable(20) %3)
          to label %invoke.cont.i unwind label %lpad.i, !sourceFile !3, !mergedLineNum !4

invoke.cont.i:                                    ; preds = %.noexc
  %6 = bitcast i8* %call to %class.cNamedObject*
  %7 = bitcast i8* %call to void (%class.cNamedObject*, i8*)***
  %vtable2.i = load void (%class.cNamedObject*, i8*)**, void (%class.cNamedObject*, i8*)*** %7, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %vfn3.i = getelementptr inbounds void (%class.cNamedObject*, i8*)*, void (%class.cNamedObject*, i8*)** %vtable2.i, i64 19, !sourceFile !3, !mergedLineNum !4
  %8 = load void (%class.cNamedObject*, i8*)*, void (%class.cNamedObject*, i8*)** %vfn3.i, align 8, !sourceFile !3, !mergedLineNum !4
  invoke void %8(%class.cNamedObject* nonnull align 8 dereferenceable(20) %6, i8* %call.i)
          to label %invoke.cont4.i unwind label %lpad.i, !sourceFile !3, !mergedLineNum !4

invoke.cont4.i:                                   ; preds = %invoke.cont.i
  %call6.i = invoke nonnull align 8 dereferenceable(64) %class.cMessageHeap* @_ZN12cMessageHeapaSERKS_(%class.cMessageHeap* nonnull align 8 dereferenceable(64) %0, %class.cMessageHeap* nonnull align 8 dereferenceable(64) %this)
          to label %invoke.cont unwind label %lpad.i, !sourceFile !3, !mergedLineNum !4

lpad.i:                                           ; preds = %invoke.cont4.i, %invoke.cont.i, %.noexc
  %9 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %1) #22, !sourceFile !3, !mergedLineNum !4
  br label %lpad.body

invoke.cont:                                      ; preds = %invoke.cont4.i
  ret %class.cMessageHeap* %0, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  br label %lpad.body

lpad.body:                                        ; preds = %lpad.i, %lpad
  %eh.lpad-body = phi { i8*, i32 } [ %10, %lpad ], [ %9, %lpad.i ]
  tail call void @_ZdlPv(i8* nonnull %call) #21, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %eh.lpad-body, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN7cObject4takeEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8), %class.cOwnedObject*) unnamed_addr #1

declare dso_local void @_ZN7cObject4dropEP12cOwnedObject(%class.cObject* nonnull align 8 dereferenceable(8), %class.cOwnedObject*) unnamed_addr #1

declare dso_local void @_ZN12cOwnedObject10parsimPackEP11cCommBuffer(%class.cOwnedObject* nonnull align 8 dereferenceable(36), %class.cCommBuffer*) unnamed_addr #1

declare dso_local void @_ZN12cOwnedObject12parsimUnpackEP11cCommBuffer(%class.cOwnedObject* nonnull align 8 dereferenceable(36), %class.cCommBuffer*) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local %class.cObject* @_ZNK12cOwnedObject8getOwnerEv(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %this) unnamed_addr #16 comdat align 2 {
entry:
  %ownerp = getelementptr inbounds %class.cOwnedObject, %class.cOwnedObject* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load %class.cObject*, %class.cObject** %ownerp, align 8, !tbaa !132, !sourceFile !3, !mergedLineNum !4
  ret %class.cObject* %0, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %this) unnamed_addr #16 comdat align 2 {
entry:
  ret i1 true, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN12cNamedObject7setNameEPKc(%class.cNamedObject* nonnull align 8 dereferenceable(20), i8*) unnamed_addr #1

declare dso_local void @_ZN12cNamedObject14setNamePoolingEb(%class.cNamedObject* nonnull align 8 dereferenceable(20), i1 zeroext) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(%class.cNamedObject* nonnull align 8 dereferenceable(20) %this) unnamed_addr #16 comdat align 2 {
entry:
  %flags = getelementptr inbounds %class.cNamedObject, %class.cNamedObject* %this, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  %0 = load i16, i16* %flags, align 8, !tbaa !134, !sourceFile !3, !mergedLineNum !4
  %1 = and i16 %0, 1
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(%class.cOwnedObject* nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %this) unnamed_addr #16 comdat align 2 {
entry:
  ret i1 false, !sourceFile !3, !mergedLineNum !4
}

declare dso_local %class.cRegistrationList* @_ZN23cGlobalRegistrationList11getInstanceEv(%class.cGlobalRegistrationList* nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #6

declare dso_local i8* @_Z12opp_typenameRKSt9type_info(%"class.std::type_info"* nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal nonnull %class.cObject* @_ZL15__uniquename_49v() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call noalias nonnull dereferenceable(64) i8* @_Znwm(i64 64) #20, !sourceFile !3, !mergedLineNum !4
  %0 = bitcast i8* %call to %class.cMessageHeap*, !sourceFile !3, !mergedLineNum !4
  %1 = bitcast i8* %call to %class.cOwnedObject*
  invoke void @_ZN12cOwnedObjectC2EPKcb(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %1, i8* null, i1 zeroext false)
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %entry
  %2 = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*] }, { [26 x i8*] }* @_ZTV12cMessageHeap, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !5, !sourceFile !3, !mergedLineNum !4
  %insertcntr.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 4, !sourceFile !3, !mergedLineNum !4
  store i64 0, i64* %insertcntr.i, align 8, !tbaa !8, !sourceFile !3, !mergedLineNum !4
  %n.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 2, !sourceFile !3, !mergedLineNum !4
  store i32 0, i32* %n.i, align 8, !tbaa !14, !sourceFile !3, !mergedLineNum !4
  %size.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 3, !sourceFile !3, !mergedLineNum !4
  store i32 128, i32* %size.i, align 4, !tbaa !15, !sourceFile !3, !mergedLineNum !4
  %call.i = invoke noalias nonnull dereferenceable(1032) i8* @_Znam(i64 1032) #20
          to label %invoke.cont unwind label %lpad.i, !sourceFile !3, !mergedLineNum !4

lpad.i:                                           ; preds = %.noexc
  %3 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  tail call void @_ZN12cOwnedObjectD2Ev(%class.cOwnedObject* nonnull align 8 dereferenceable(36) %1) #22, !sourceFile !3, !mergedLineNum !4
  br label %lpad.body

invoke.cont:                                      ; preds = %.noexc
  %h.i = getelementptr inbounds %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 1, !sourceFile !3, !mergedLineNum !4
  %4 = bitcast %class.cMessage*** %h.i to i8**
  store i8* %call.i, i8** %4, align 8, !tbaa !16
  %5 = getelementptr %class.cMessageHeap, %class.cMessageHeap* %0, i64 0, i32 0, i32 0, i32 0
  ret %class.cObject* %5, !sourceFile !3, !mergedLineNum !4

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup, !sourceFile !3, !mergedLineNum !4
  br label %lpad.body

lpad.body:                                        ; preds = %lpad.i, %lpad
  %eh.lpad-body = phi { i8*, i32 } [ %6, %lpad ], [ %3, %lpad.i ]
  tail call void @_ZdlPv(i8* nonnull %call) #21, !sourceFile !3, !mergedLineNum !4
  resume { i8*, i32 } %eh.lpad-body, !sourceFile !3, !mergedLineNum !4
}

declare dso_local void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(%class.cClassFactory* nonnull align 8 dereferenceable(80), i8*, %class.cObject* ()*, i8*) unnamed_addr #1

declare dso_local i8* @_ZN7SimTime4ttoaEPcliRS0_(i8*, i64, i32, i8** nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #18

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #2

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #1

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmessageheap.cc() #4 section ".text.startup" {
entry:
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_49E, void ()* nonnull @_ZN12_GLOBAL__N_119__onstartup_func_49Ev), !sourceFile !3, !mergedLineNum !4
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZN12_GLOBAL__N_118__onstartup_obj_49E to i8*), i8* nonnull @__dso_handle) #22, !sourceFile !3, !mergedLineNum !4
  ret void, !sourceFile !3, !mergedLineNum !4
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (git@github.com:kirshanthans/llvm-project-exp.git e1e02a5ce5d3dd50375b9bb4f022c9816d9495f8)"}
!3 = !{!""}
!4 = !{!"-1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 56}
!9 = !{!"_ZTS12cMessageHeap", !10, i64 40, !12, i64 48, !12, i64 52, !13, i64 56}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"long", !11, i64 0}
!14 = !{!9, !12, i64 48}
!15 = !{!9, !12, i64 52}
!16 = !{!9, !10, i64 40}
!17 = !{!10, !10, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !10, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!24, !13, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !13, i64 8, !11, i64 16}
!25 = !{!11, !11, i64 0}
!26 = !{!27, !13, i64 0}
!27 = !{!"_ZTS7SimTime", !13, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!30 = distinct !{!30, !"_ZNK8cMessage14getArrivalTimeEv"}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !35, i64 32}
!33 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !10, i64 40, !36, i64 48, !11, i64 64, !12, i64 192, !10, i64 200, !37, i64 208}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !13, i64 8}
!37 = !{!"_ZTSSt6locale", !10, i64 0}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: %agg.result"}
!40 = distinct !{!40, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: %agg.result"}
!43 = distinct !{!43, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!44 = !{!42, !39}
!45 = !{!46, !10, i64 40}
!46 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !37, i64 56}
!47 = !{!46, !10, i64 24}
!48 = !{!46, !10, i64 32}
!49 = !{!24, !10, i64 0}
!50 = !{!51, !13, i64 8}
!51 = !{!"_ZTSSi", !13, i64 8}
!52 = !{!53, !12, i64 120}
!53 = !{!"_ZTS8cMessage", !54, i64 36, !54, i64 38, !54, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !12, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!54 = !{!"short", !11, i64 0}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !57}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!62 = distinct !{!62, !"_ZNK8cMessage14getArrivalTimeEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!65 = distinct !{!65, !"_ZNK8cMessage14getArrivalTimeEv"}
!66 = !{!53, !54, i64 38}
!67 = !{!53, !13, i64 128}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !19, !74}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !19, !74}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!80 = distinct !{!80, !"_ZNK8cMessage14getArrivalTimeEv"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!83 = distinct !{!83, !"_ZNK8cMessage14getArrivalTimeEv"}
!84 = distinct !{!84, !19}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!87 = distinct !{!87, !"_ZNK8cMessage14getArrivalTimeEv"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!90 = distinct !{!90, !"_ZNK8cMessage14getArrivalTimeEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!93 = distinct !{!93, !"_ZNK8cMessage14getArrivalTimeEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!96 = distinct !{!96, !"_ZNK8cMessage14getArrivalTimeEv"}
!97 = distinct !{!97, !19}
!98 = !{!"-1,-2"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!101 = distinct !{!101, !"_ZNK8cMessage14getArrivalTimeEv"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!104 = distinct !{!104, !"_ZNK8cMessage14getArrivalTimeEv"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!107 = distinct !{!107, !"_ZNK8cMessage14getArrivalTimeEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!110 = distinct !{!110, !"_ZNK8cMessage14getArrivalTimeEv"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!113 = distinct !{!113, !"_ZNK8cMessage14getArrivalTimeEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!116 = distinct !{!116, !"_ZNK8cMessage14getArrivalTimeEv"}
!117 = distinct !{!117, !19}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!120 = distinct !{!120, !"_ZNK8cMessage14getArrivalTimeEv"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!123 = distinct !{!123, !"_ZNK8cMessage14getArrivalTimeEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!126 = distinct !{!126, !"_ZNK8cMessage14getArrivalTimeEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK8cMessage14getArrivalTimeEv: %agg.result"}
!129 = distinct !{!129, !"_ZNK8cMessage14getArrivalTimeEv"}
!130 = !{!131, !10, i64 8}
!131 = !{!"_ZTS12cNamedObject", !10, i64 8, !54, i64 16, !54, i64 18}
!132 = !{!133, !10, i64 24}
!133 = !{!"_ZTS12cOwnedObject", !10, i64 24, !12, i64 32}
!134 = !{!131, !54, i64 16}
