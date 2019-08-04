@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00",align 1
@arr = common global [10 x i32] zeroinitializer, align 16
@len = global i32 0, align 4

define i32 @main() #0 {
entry:
  store i32 10, i32* @len, align 4
  %arrayidx0 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 1
  store i32 123, i32* %arrayidx0, align 4
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 2
  store i32 23, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 3
  store i32 1234, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 4
  store i32 1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 5
  store i32 21, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 6
  store i32 11, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 7
  store i32 213, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 8
  store i32 22, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 9
  store i32 121, i32* %arrayidx8, align 4
  %kk = alloca i32, align 4
  store i32 1, i32* %kk, align 4
  br label %for.cond0
for.cond0:
  %0 = load i32, i32* %kk, align 4
  %forcmp0 = icmp slt i32 %0, 10
  br i1 %forcmp0, label %for.body0, label %for.end0
for.body0:
  %1 = load i32, i32* %kk, align 4
  %2 = load i32, i32* %kk, align 4
  %idxprom9 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom9
  %3 = load i32, i32* %arrayidx9
  %call0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc0
for.inc0:
  %4 = load i32, i32* %kk, align 4
  %inc0 = add nsw i32 %4, 1
  store i32 %inc0, i32* %kk, align 4
  br label %for.cond0
for.end0:
  %5 = load i32, i32* @len, align 4
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond1
for.cond1:
  %6 = load i32, i32* %i, align 4
  %forcmp1 = icmp slt i32 %6, %5
  br i1 %forcmp1, label %for.body1, label %for.end1
for.body1:
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %op0 = sub nsw i32 %5, %8
  %j = alloca i32, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond2
for.cond2:
  %9 = load i32, i32* %j, align 4
  %forcmp2 = icmp slt i32 %9, %op0
  br i1 %forcmp2, label %for.body2, label %for.end2
for.body2:
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx10
  %op1 = add nsw i32 %11, 1
  %idxprom11 = sext i32 %op1 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom11
  %13 = load i32, i32* %arrayidx11
  %ifcmp0 = icmp sgt i32 %12, %13
  br i1 %ifcmp0, label %if.then0, label %if.else0
if.then0: 
  %idxprom12 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom12
  %op2 = add nsw i32 %11, 1
  %idxprom13 = sext i32 %op2 to i64
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom13
  %tmp14 = alloca i32, align 4
  %14 = load i32, i32* %arrayidx12
  store i32 %14, i32* %tmp14, align 4
  %15 = load i32, i32* %arrayidx13
  store i32 %15, i32* %arrayidx12, align 4
  %16 = load i32, i32* %tmp14
  store i32 %16, i32* %arrayidx13, align 4
  br label %if.end0
if.else0: 
  br label %if.end0
if.end0:
  br label %for.inc2
for.inc2:
  %17 = load i32, i32* %j, align 4
  %inc2 = add nsw i32 %17, 1
  store i32 %inc2, i32* %j, align 4
  br label %for.cond2
for.end2:
  br label %for.inc1
for.inc1:
  %18 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %18, 1
  store i32 %inc1, i32* %i, align 4
  br label %for.cond1
for.end1:
  %k = alloca i32, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond3
for.cond3:
  %19 = load i32, i32* %k, align 4
  %forcmp3 = icmp slt i32 %19, 10
  br i1 %forcmp3, label %for.body3, label %for.end3
for.body3:
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* @arr, i64 0, i64 %idxprom15
  %22 = load i32, i32* %arrayidx15
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %for.inc3
for.inc3:
  %23 = load i32, i32* %k, align 4
  %inc3 = add nsw i32 %23, 1
  store i32 %inc3, i32* %k, align 4
  br label %for.cond3
for.end3:
  ret i32 0
}
declare i32 @printf(i8*, ...)
