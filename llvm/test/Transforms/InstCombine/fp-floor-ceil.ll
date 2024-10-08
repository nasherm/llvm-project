; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instcombine -S | FileCheck %s

define i1 @floor_x_ole(float %x) {
; CHECK-LABEL: @floor_x_ole(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf ord float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ninf ole float %floor, %x
  ret i1 %ret
}

define i1 @floor_x_ule(float %x) {
; CHECK-LABEL: @floor_x_ule(
; CHECK-NEXT:    ret i1 true
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ule float %floor, %x
  ret i1 %ret
}

define i1 @floor_x_ogt(float %x) {
; CHECK-LABEL: @floor_x_ogt(
; CHECK-NEXT:    ret i1 false
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ogt float %floor, %x
  ret i1 %ret
}

define i1 @floor_x_ugt(float %x) {
; CHECK-LABEL: @floor_x_ugt(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf uno float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ninf ugt float %floor, %x
  ret i1 %ret
}

define i1 @x_floor_oge(float %x) {
; CHECK-LABEL: @x_floor_oge(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf ord float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ninf oge float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_uge(float %x) {
; CHECK-LABEL: @x_floor_uge(
; CHECK-NEXT:    ret i1 true
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp uge float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_olt(float %x) {
; CHECK-LABEL: @x_floor_olt(
; CHECK-NEXT:    ret i1 false
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp olt float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_ult(float %x) {
; CHECK-LABEL: @x_floor_ult(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf uno float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ninf ult float %x, %floor
  ret i1 %ret
}

define <2 x i1> @x_floor_olt_vec(<2 x float> %x) {
; CHECK-LABEL: @x_floor_olt_vec(
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
  %floor = call <2 x float> @llvm.floor.f32(<2 x float> %x)
  %ret = fcmp olt <2 x float> %x, %floor
  ret <2 x i1> %ret
}

define i1 @x_floor_ole_neg(float %x) {
; CHECK-LABEL: @x_floor_ole_neg(
; CHECK-NEXT:    [[FLOOR:%.*]] = call float @llvm.floor.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp ole float [[X]], [[FLOOR]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ole float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_ogt_neg(float %x) {
; CHECK-LABEL: @x_floor_ogt_neg(
; CHECK-NEXT:    [[FLOOR:%.*]] = call float @llvm.floor.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp ogt float [[X]], [[FLOOR]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ogt float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_ueq_neg(float %x) {
; CHECK-LABEL: @x_floor_ueq_neg(
; CHECK-NEXT:    [[FLOOR:%.*]] = call float @llvm.floor.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp ueq float [[X]], [[FLOOR]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp ueq float %x, %floor
  ret i1 %ret
}

define i1 @x_floor_une_neg(float %x) {
; CHECK-LABEL: @x_floor_une_neg(
; CHECK-NEXT:    [[FLOOR:%.*]] = call float @llvm.floor.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp une float [[X]], [[FLOOR]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %floor = call float @llvm.floor.f32(float %x)
  %ret = fcmp une float %x, %floor
  ret i1 %ret
}

define i1 @ceil_x_oge(float %x) {
; CHECK-LABEL: @ceil_x_oge(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf ord float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ninf oge float %ceil, %x
  ret i1 %ret
}

define i1 @ceil_x_uge(float %x) {
; CHECK-LABEL: @ceil_x_uge(
; CHECK-NEXT:    ret i1 true
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp uge float %ceil, %x
  ret i1 %ret
}

define i1 @ceil_x_olt(float %x) {
; CHECK-LABEL: @ceil_x_olt(
; CHECK-NEXT:    ret i1 false
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp olt float %ceil, %x
  ret i1 %ret
}

define i1 @ceil_x_ult(float %x) {
; CHECK-LABEL: @ceil_x_ult(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf uno float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ninf ult float %ceil, %x
  ret i1 %ret
}

define i1 @x_ceil_ole(float %x) {
; CHECK-LABEL: @x_ceil_ole(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf ord float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ninf ole float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_ule(float %x) {
; CHECK-LABEL: @x_ceil_ule(
; CHECK-NEXT:    ret i1 true
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ule float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_ogt(float %x) {
; CHECK-LABEL: @x_ceil_ogt(
; CHECK-NEXT:    ret i1 false
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ogt float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_ugt(float %x) {
; CHECK-LABEL: @x_ceil_ugt(
; CHECK-NEXT:    [[RET:%.*]] = fcmp ninf uno float [[X:%.*]], 0.000000e+00
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp ninf ugt float %x, %ceil
  ret i1 %ret
}

define <2 x i1> @x_ceil_ogt_vec(<2 x float> %x) {
; CHECK-LABEL: @x_ceil_ogt_vec(
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
  %ceil = call <2 x float> @llvm.ceil.f32(<2 x float> %x)
  %ret = fcmp ogt <2 x float> %x, %ceil
  ret <2 x i1> %ret
}

define i1 @x_ceil_oge_neg(float %x) {
; CHECK-LABEL: @x_ceil_oge_neg(
; CHECK-NEXT:    [[CEIL:%.*]] = call float @llvm.ceil.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp oge float [[X]], [[CEIL]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp oge float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_olt_neg(float %x) {
; CHECK-LABEL: @x_ceil_olt_neg(
; CHECK-NEXT:    [[CEIL:%.*]] = call float @llvm.ceil.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp olt float [[X]], [[CEIL]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp olt float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_oeq_neg(float %x) {
; CHECK-LABEL: @x_ceil_oeq_neg(
; CHECK-NEXT:    [[CEIL:%.*]] = call float @llvm.ceil.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp oeq float [[X]], [[CEIL]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp oeq float %x, %ceil
  ret i1 %ret
}

define i1 @x_ceil_one_neg(float %x) {
; CHECK-LABEL: @x_ceil_one_neg(
; CHECK-NEXT:    [[CEIL:%.*]] = call float @llvm.ceil.f32(float [[X:%.*]])
; CHECK-NEXT:    [[RET:%.*]] = fcmp one float [[X]], [[CEIL]]
; CHECK-NEXT:    ret i1 [[RET]]
;
  %ceil = call float @llvm.ceil.f32(float %x)
  %ret = fcmp one float %x, %ceil
  ret i1 %ret
}
