; ModuleID = 'header.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"(print.. v); unrecognized value %lu\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"(print v); unrecognized value %lu\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: nounwind uwtable
define i64* @alloc(i64 %m) #0 {
  %1 = alloca i64, align 8
  store i64 %m, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call noalias i8* @malloc(i64 %2) #6
  %4 = bitcast i8* %3 to i64*
  ret i64* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: uwtable
define void @fatal_err(i8* %msg) #2 {
  %1 = alloca i8*, align 8
  store i8* %msg, i8** %1, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: uwtable
define void @print_u64(i64 %i) #2 {
  %1 = alloca i64, align 8
  store i64 %i, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 %2)
  ret void
}

; Function Attrs: uwtable
define i64 @expect_args0(i64 %args) #2 {
  %1 = alloca i64, align 8
  store i64 %args, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %4, %0
  ret i64 0
}

; Function Attrs: uwtable
define i64 @expect_args1(i64 %args) #2 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  store i64 %args, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = and i64 %2, 7
  %4 = icmp ne i64 %3, 1
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64* %9, i64** %p, align 8
  %10 = load i64*, i64** %p, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %6
  %16 = load i64*, i64** %p, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @expect_cons(i64 %p, i64* %rest) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %1, align 8
  store i64* %rest, i64** %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %pp, align 8
  %11 = load i64*, i64** %pp, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  ret i64 %17
}

; Function Attrs: uwtable
define i64 @expect_other(i64 %v, i64* %rest) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %p = alloca i64*, align 8
  store i64 %v, i64* %1, align 8
  store i64* %rest, i64** %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 6
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %p, align 8
  %11 = load i64*, i64** %p, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %p, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i64 @const_init_int(i64 %i) #0 {
  %1 = alloca i64, align 8
  store i64 %i, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = trunc i64 %2 to i32
  %4 = zext i32 %3 to i64
  %5 = shl i64 %4, 32
  %6 = or i64 %5, 2
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @const_init_void() #0 {
  ret i64 39
}

; Function Attrs: nounwind uwtable
define i64 @const_init_null() #0 {
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @const_init_true() #0 {
  ret i64 31
}

; Function Attrs: nounwind uwtable
define i64 @const_init_false() #0 {
  ret i64 15
}

; Function Attrs: nounwind uwtable
define i64 @const_init_string(i8* %s) #0 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = or i64 %3, 3
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @const_init_symbol(i8* %s) #0 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = or i64 %3, 4
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @prim_print_aux(i64 %v) #2 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  %vec = alloca i64*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %108

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %107

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %p, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %106

; <label>:31                                      ; preds = %12
  %32 = load i64, i64* %1, align 8
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %1, align 8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %38)
  br label %105

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %1, align 8
  %42 = and i64 %41, 7
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %49

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %1, align 8
  %46 = and i64 %45, -8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %47)
  br label %104

; <label>:49                                      ; preds = %40
  %50 = load i64, i64* %1, align 8
  %51 = and i64 %50, 7
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %49
  %54 = load i64, i64* %1, align 8
  %55 = and i64 %54, -8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %56)
  br label %103

; <label>:58                                      ; preds = %49
  %59 = load i64, i64* %1, align 8
  %60 = and i64 %59, 7
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %62, label %99

; <label>:62                                      ; preds = %58
  %63 = load i64, i64* %1, align 8
  %64 = and i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 7
  %69 = icmp eq i64 1, %68
  br i1 %69, label %70, label %99

; <label>:70                                      ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %72 = load i64, i64* %1, align 8
  %73 = and i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64* %74, i64** %vec, align 8
  %75 = load i64*, i64** %vec, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = lshr i64 %77, 3
  store i64 %78, i64* %len, align 8
  %79 = load i64*, i64** %vec, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @prim_print_aux(i64 %81)
  store i64 2, i64* %i, align 8
  br label %83

; <label>:83                                      ; preds = %94, %70
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %len, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %vec, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @prim_print_aux(i64 %92)
  br label %94

; <label>:94                                      ; preds = %87
  %95 = load i64, i64* %i, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %i, align 8
  br label %83

; <label>:97                                      ; preds = %83
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %102

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i64 %100)
  br label %102

; <label>:102                                     ; preds = %99, %97
  br label %103

; <label>:103                                     ; preds = %102, %53
  br label %104

; <label>:104                                     ; preds = %103, %44
  br label %105

; <label>:105                                     ; preds = %104, %35
  br label %106

; <label>:106                                     ; preds = %105, %16
  br label %107

; <label>:107                                     ; preds = %106, %10
  br label %108

; <label>:108                                     ; preds = %107, %4
  ret i64 39
}

; Function Attrs: uwtable
define i64 @prim_print(i64 %v) #2 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  %vec = alloca i64*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %108

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %107

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %p, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %106

; <label>:31                                      ; preds = %12
  %32 = load i64, i64* %1, align 8
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %1, align 8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %38)
  br label %105

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %1, align 8
  %42 = and i64 %41, 7
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %49

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %1, align 8
  %46 = and i64 %45, -8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %47)
  br label %104

; <label>:49                                      ; preds = %40
  %50 = load i64, i64* %1, align 8
  %51 = and i64 %50, 7
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %49
  %54 = load i64, i64* %1, align 8
  %55 = and i64 %54, -8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %56)
  br label %103

; <label>:58                                      ; preds = %49
  %59 = load i64, i64* %1, align 8
  %60 = and i64 %59, 7
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %62, label %99

; <label>:62                                      ; preds = %58
  %63 = load i64, i64* %1, align 8
  %64 = and i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 7
  %69 = icmp eq i64 1, %68
  br i1 %69, label %70, label %99

; <label>:70                                      ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %72 = load i64, i64* %1, align 8
  %73 = and i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64* %74, i64** %vec, align 8
  %75 = load i64*, i64** %vec, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = lshr i64 %77, 3
  store i64 %78, i64* %len, align 8
  %79 = load i64*, i64** %vec, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @prim_print(i64 %81)
  store i64 2, i64* %i, align 8
  br label %83

; <label>:83                                      ; preds = %94, %70
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %len, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %vec, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @prim_print(i64 %92)
  br label %94

; <label>:94                                      ; preds = %87
  %95 = load i64, i64* %i, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %i, align 8
  br label %83

; <label>:97                                      ; preds = %83
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %102

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i64 %100)
  br label %102

; <label>:102                                     ; preds = %99, %97
  br label %103

; <label>:103                                     ; preds = %102, %53
  br label %104

; <label>:104                                     ; preds = %103, %44
  br label %105

; <label>:105                                     ; preds = %104, %35
  br label %106

; <label>:106                                     ; preds = %105, %16
  br label %107

; <label>:107                                     ; preds = %106, %10
  br label %108

; <label>:108                                     ; preds = %107, %4
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_print(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_print(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim_halt(i64 %v) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %v, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @prim_print(i64 %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable
                                                  ; No predecessors!
  %7 = load i64, i64* %1, align 8
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @applyprim_vector(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %buffer = alloca i64*, align 8
  %l = alloca i64, align 8
  %mem = alloca i64*, align 8
  %i = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 4096) #6
  %3 = bitcast i8* %2 to i64*
  store i64* %3, i64** %buffer, align 8
  store i64 0, i64* %l, align 8
  br label %4

; <label>:4                                       ; preds = %13, %0
  %5 = load i64, i64* %1, align 8
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = load i64, i64* %l, align 8
  %10 = icmp ult i64 %9, 512
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = phi i1 [ false, %4 ], [ %10, %8 ]
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %11
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @expect_cons(i64 %14, i64* %1)
  %16 = load i64, i64* %l, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %l, align 8
  %18 = load i64*, i64** %buffer, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 %16
  store i64 %15, i64* %19, align 8
  br label %4

; <label>:20                                      ; preds = %11
  %21 = load i64, i64* %l, align 8
  %22 = add i64 %21, 1
  %23 = mul i64 %22, 8
  %24 = call i64* @alloc(i64 %23)
  store i64* %24, i64** %mem, align 8
  %25 = load i64, i64* %l, align 8
  %26 = shl i64 %25, 3
  %27 = or i64 %26, 1
  %28 = load i64*, i64** %mem, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %27, i64* %29, align 8
  store i64 0, i64* %i, align 8
  br label %30

; <label>:30                                      ; preds = %43, %20
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %l, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %30
  %35 = load i64, i64* %i, align 8
  %36 = load i64*, i64** %buffer, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %i, align 8
  %40 = add i64 %39, 1
  %41 = load i64*, i64** %mem, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  store i64 %38, i64* %42, align 8
  br label %43

; <label>:43                                      ; preds = %34
  %44 = load i64, i64* %i, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %30

; <label>:46                                      ; preds = %30
  %47 = load i64*, i64** %buffer, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %51, label %49

; <label>:49                                      ; preds = %46
  %50 = bitcast i64* %47 to i8*
  call void @_ZdaPv(i8* %50) #8
  br label %51

; <label>:51                                      ; preds = %49, %46
  %52 = load i64*, i64** %mem, align 8
  %53 = ptrtoint i64* %52 to i64
  %54 = or i64 %53, 6
  ret i64 %54
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: uwtable
define i64 @prim_make_45vector(i64 %lenv, i64 %iv) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %l = alloca i64, align 8
  %vec = alloca i64*, align 8
  %i = alloca i64, align 8
  store i64 %lenv, i64* %1, align 8
  store i64 %iv, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = lshr i64 %9, 32
  %11 = trunc i64 %10 to i32
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 8
  %16 = call i64* @alloc(i64 %15)
  store i64* %16, i64** %vec, align 8
  %17 = load i64, i64* %l, align 8
  %18 = shl i64 %17, 3
  %19 = or i64 %18, 1
  %20 = load i64*, i64** %vec, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %19, i64* %21, align 8
  store i64 1, i64* %i, align 8
  br label %22

; <label>:22                                      ; preds = %31, %7
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %l, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %22
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %i, align 8
  %29 = load i64*, i64** %vec, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 %28
  store i64 %27, i64* %30, align 8
  br label %31

; <label>:31                                      ; preds = %26
  %32 = load i64, i64* %i, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %i, align 8
  br label %22

; <label>:34                                      ; preds = %22
  %35 = load i64*, i64** %vec, align 8
  %36 = ptrtoint i64* %35 to i64
  %37 = or i64 %36, 6
  ret i64 %37
}

; Function Attrs: uwtable
define i64 @applyprim_make_45vector(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_make_45vector(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_vector_45ref(i64 %v, i64 %i) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  store i64 %i, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 6
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %12
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %21

; <label>:21                                      ; preds = %20, %12
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %1, align 8
  %29 = and i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  %31 = getelementptr inbounds i64, i64* %30, i64 %27
  %32 = load i64, i64* %31, align 8
  ret i64 %32
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45ref(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_vector_45ref(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_vector_45set_33(i64 %a, i64 %i, i64 %v) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %i, i64* %2, align 8
  store i64 %v, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %1, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 6
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %1, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 7
  %20 = icmp ne i64 %19, 1
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %21, %13
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %1, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  store i64 %23, i64* %33, align 8
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45set_33(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %rest)
  store i64 %7, i64* %v2, align 8
  %8 = load i64, i64* %rest, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %0
  %12 = load i64, i64* %v0, align 8
  %13 = load i64, i64* %v1, align 8
  %14 = load i64, i64* %v2, align 8
  %15 = call i64 @prim_vector_45set_33(i64 %12, i64 %13, i64 %14)
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @prim_void() #0 {
  ret i64 39
}

; Function Attrs: nounwind uwtable
define i64 @prim_eq_63(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %9

; <label>:8                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_eq_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_eq_63(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @prim_eqv_63(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %9

; <label>:8                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_eqv_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_eqv_63(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @prim_number_63(i64 %a) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_number_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_number_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_integer_63(i64 %a) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_integer_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_integer_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_void_63(i64 %a) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 39
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_void_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_void_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_procedure_63(i64 %a) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_procedure_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_procedure_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_null_63(i64 %p) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_null_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_null_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_cons_63(i64 %p) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_cons_63(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_cons_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_cons(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %p = alloca i64*, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = call i64* @alloc(i64 16)
  store i64* %3, i64** %p, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64*, i64** %p, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 %4, i64* %6, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64*, i64** %p, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 %7, i64* %9, align 8
  %10 = load i64*, i64** %p, align 8
  %11 = ptrtoint i64* %10 to i64
  %12 = or i64 %11, 1
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @applyprim_cons(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_cons(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_car(i64 %p) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %p, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @applyprim_car(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_car(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim_cdr(i64 %p) #2 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %p, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @applyprim_cdr(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_cdr(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim__43(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__43(i64 %p) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 2, i64* %1, align 8
  br label %32

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load i64*, i64** %pp, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @applyprim__43(i64 %23)
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %1, align 8
  br label %32

; <label>:32                                      ; preds = %11, %5
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

; Function Attrs: uwtable
define i64 @prim__45(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__45(i64 %p) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 2, i64* %1, align 8
  br label %48

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %11
  %20 = load i64*, i64** %pp, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = sub nsw i32 0, %25
  %27 = zext i32 %26 to i64
  %28 = shl i64 %27, 32
  %29 = or i64 %28, 2
  store i64 %29, i64* %1, align 8
  br label %48

; <label>:30                                      ; preds = %11
  %31 = load i64*, i64** %pp, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = load i64*, i64** %pp, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @applyprim__43(i64 %39)
  %41 = and i64 %40, -8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = sub nsw i32 %36, %43
  %45 = zext i32 %44 to i64
  %46 = shl i64 %45, 32
  %47 = or i64 %46, 2
  store i64 %47, i64* %1, align 8
  br label %48

; <label>:48                                      ; preds = %30, %19, %5
  %49 = load i64, i64* %1, align 8
  ret i64 %49
}

; Function Attrs: uwtable
define i64 @prim__42(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__42(i64 %p) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 4294967298, i64* %1, align 8
  br label %32

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load i64*, i64** %pp, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @applyprim__42(i64 %23)
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %20, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %1, align 8
  br label %32

; <label>:32                                      ; preds = %11, %5
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

; Function Attrs: uwtable
define i64 @prim__47(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = sdiv i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @prim__61(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: uwtable
define i64 @prim__60(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: uwtable
define i64 @prim__60_61(i64 %a, i64 %b) #2 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp sle i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @prim_not(i64 %a) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 15
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_not(i64 %lst) #2 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_not(i64 %4)
  ret i64 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}


;;;;;;

define void @proc_main() {
  %cloptr294502 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294503 = getelementptr inbounds i64, i64* %cloptr294502, i64 0                ; &cloptr294502[0]
  %f294504 = ptrtoint void(i64,i64,i64)* @lam294500 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294504, i64* %eptr294503                                               ; store fptr
  %arg293170 = ptrtoint i64* %cloptr294502 to i64                                    ; closure cast; i64* -> i64
  %cloptr294505 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294506 = getelementptr inbounds i64, i64* %cloptr294505, i64 0                ; &cloptr294505[0]
  %f294507 = ptrtoint void(i64,i64,i64)* @lam294498 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294507, i64* %eptr294506                                               ; store fptr
  %arg293169 = ptrtoint i64* %cloptr294505 to i64                                    ; closure cast; i64* -> i64
  %cloptr294508 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294509 = getelementptr inbounds i64, i64* %cloptr294508, i64 0                ; &cloptr294508[0]
  %f294510 = ptrtoint void(i64,i64,i64)* @lam294044 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294510, i64* %eptr294509                                               ; store fptr
  %arg293168 = ptrtoint i64* %cloptr294508 to i64                                    ; closure cast; i64* -> i64
  %cloptr294511 = inttoptr i64 %arg293170 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr294512 = getelementptr inbounds i64, i64* %cloptr294511, i64 0               ; &cloptr294511[0]
  %f294514 = load i64, i64* %i0ptr294512, align 8                                    ; load; *i0ptr294512
  %fptr294513 = inttoptr i64 %f294514 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294513(i64 %arg293170, i64 %arg293169, i64 %arg293168); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam294500(i64 %env294501, i64 %cont293160, i64 %fof$yu) {
  %cloptr294515 = inttoptr i64 %fof$yu to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr294516 = getelementptr inbounds i64, i64* %cloptr294515, i64 0               ; &cloptr294515[0]
  %f294518 = load i64, i64* %i0ptr294516, align 8                                    ; load; *i0ptr294516
  %fptr294517 = inttoptr i64 %f294518 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294517(i64 %fof$yu, i64 %cont293160, i64 %fof$yu)   ; tail call
  ret void
}


define void @lam294498(i64 %env294499, i64 %_95292977, i64 %ViB$Ycmb) {
  %cloptr294519 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294521 = getelementptr inbounds i64, i64* %cloptr294519, i64 1                ; &eptr294521[1]
  store i64 %ViB$Ycmb, i64* %eptr294521                                              ; *eptr294521 = %ViB$Ycmb
  %eptr294520 = getelementptr inbounds i64, i64* %cloptr294519, i64 0                ; &cloptr294519[0]
  %f294522 = ptrtoint void(i64,i64,i64)* @lam294496 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294522, i64* %eptr294520                                               ; store fptr
  %arg293175 = ptrtoint i64* %cloptr294519 to i64                                    ; closure cast; i64* -> i64
  %cloptr294523 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294524 = getelementptr inbounds i64, i64* %cloptr294523, i64 0                ; &cloptr294523[0]
  %f294525 = ptrtoint void(i64,i64,i64)* @lam294052 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294525, i64* %eptr294524                                               ; store fptr
  %arg293174 = ptrtoint i64* %cloptr294523 to i64                                    ; closure cast; i64* -> i64
  %cloptr294526 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294527 = getelementptr inbounds i64, i64* %cloptr294526, i64 0               ; &cloptr294526[0]
  %f294529 = load i64, i64* %i0ptr294527, align 8                                    ; load; *i0ptr294527
  %fptr294528 = inttoptr i64 %f294529 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294528(i64 %ViB$Ycmb, i64 %arg293175, i64 %arg293174); tail call
  ret void
}


define void @lam294496(i64 %env294497, i64 %_95292978, i64 %Wco$_37foldr1) {
  %envptr294530 = inttoptr i64 %env294497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294531 = getelementptr inbounds i64, i64* %envptr294530, i64 1              ; &envptr294530[1]
  %ViB$Ycmb = load i64, i64* %envptr294531, align 8                                  ; load; *envptr294531
  %cloptr294532 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294534 = getelementptr inbounds i64, i64* %cloptr294532, i64 1                ; &eptr294534[1]
  %eptr294535 = getelementptr inbounds i64, i64* %cloptr294532, i64 2                ; &eptr294535[2]
  store i64 %ViB$Ycmb, i64* %eptr294534                                              ; *eptr294534 = %ViB$Ycmb
  store i64 %Wco$_37foldr1, i64* %eptr294535                                         ; *eptr294535 = %Wco$_37foldr1
  %eptr294533 = getelementptr inbounds i64, i64* %cloptr294532, i64 0                ; &cloptr294532[0]
  %f294536 = ptrtoint void(i64,i64,i64)* @lam294494 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294536, i64* %eptr294533                                               ; store fptr
  %arg293178 = ptrtoint i64* %cloptr294532 to i64                                    ; closure cast; i64* -> i64
  %cloptr294537 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294538 = getelementptr inbounds i64, i64* %cloptr294537, i64 0                ; &cloptr294537[0]
  %f294539 = ptrtoint void(i64,i64,i64)* @lam294064 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294539, i64* %eptr294538                                               ; store fptr
  %arg293177 = ptrtoint i64* %cloptr294537 to i64                                    ; closure cast; i64* -> i64
  %cloptr294540 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294541 = getelementptr inbounds i64, i64* %cloptr294540, i64 0               ; &cloptr294540[0]
  %f294543 = load i64, i64* %i0ptr294541, align 8                                    ; load; *i0ptr294541
  %fptr294542 = inttoptr i64 %f294543 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294542(i64 %ViB$Ycmb, i64 %arg293178, i64 %arg293177); tail call
  ret void
}


define void @lam294494(i64 %env294495, i64 %_95292979, i64 %J19$_37map1) {
  %envptr294544 = inttoptr i64 %env294495 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294545 = getelementptr inbounds i64, i64* %envptr294544, i64 2              ; &envptr294544[2]
  %Wco$_37foldr1 = load i64, i64* %envptr294545, align 8                             ; load; *envptr294545
  %envptr294546 = inttoptr i64 %env294495 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294547 = getelementptr inbounds i64, i64* %envptr294546, i64 1              ; &envptr294546[1]
  %ViB$Ycmb = load i64, i64* %envptr294547, align 8                                  ; load; *envptr294547
  %cloptr294548 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294550 = getelementptr inbounds i64, i64* %cloptr294548, i64 1                ; &eptr294550[1]
  %eptr294551 = getelementptr inbounds i64, i64* %cloptr294548, i64 2                ; &eptr294551[2]
  %eptr294552 = getelementptr inbounds i64, i64* %cloptr294548, i64 3                ; &eptr294552[3]
  store i64 %ViB$Ycmb, i64* %eptr294550                                              ; *eptr294550 = %ViB$Ycmb
  store i64 %Wco$_37foldr1, i64* %eptr294551                                         ; *eptr294551 = %Wco$_37foldr1
  store i64 %J19$_37map1, i64* %eptr294552                                           ; *eptr294552 = %J19$_37map1
  %eptr294549 = getelementptr inbounds i64, i64* %cloptr294548, i64 0                ; &cloptr294548[0]
  %f294553 = ptrtoint void(i64,i64,i64)* @lam294492 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294553, i64* %eptr294549                                               ; store fptr
  %arg293181 = ptrtoint i64* %cloptr294548 to i64                                    ; closure cast; i64* -> i64
  %cloptr294554 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294555 = getelementptr inbounds i64, i64* %cloptr294554, i64 0                ; &cloptr294554[0]
  %f294556 = ptrtoint void(i64,i64,i64)* @lam294078 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294556, i64* %eptr294555                                               ; store fptr
  %arg293180 = ptrtoint i64* %cloptr294554 to i64                                    ; closure cast; i64* -> i64
  %cloptr294557 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294558 = getelementptr inbounds i64, i64* %cloptr294557, i64 0               ; &cloptr294557[0]
  %f294560 = load i64, i64* %i0ptr294558, align 8                                    ; load; *i0ptr294558
  %fptr294559 = inttoptr i64 %f294560 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294559(i64 %ViB$Ycmb, i64 %arg293181, i64 %arg293180); tail call
  ret void
}


define void @lam294492(i64 %env294493, i64 %_95292980, i64 %NiE$_37take) {
  %envptr294561 = inttoptr i64 %env294493 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294562 = getelementptr inbounds i64, i64* %envptr294561, i64 3              ; &envptr294561[3]
  %J19$_37map1 = load i64, i64* %envptr294562, align 8                               ; load; *envptr294562
  %envptr294563 = inttoptr i64 %env294493 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294564 = getelementptr inbounds i64, i64* %envptr294563, i64 2              ; &envptr294563[2]
  %Wco$_37foldr1 = load i64, i64* %envptr294564, align 8                             ; load; *envptr294564
  %envptr294565 = inttoptr i64 %env294493 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294566 = getelementptr inbounds i64, i64* %envptr294565, i64 1              ; &envptr294565[1]
  %ViB$Ycmb = load i64, i64* %envptr294566, align 8                                  ; load; *envptr294566
  %cloptr294567 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr294569 = getelementptr inbounds i64, i64* %cloptr294567, i64 1                ; &eptr294569[1]
  %eptr294570 = getelementptr inbounds i64, i64* %cloptr294567, i64 2                ; &eptr294570[2]
  %eptr294571 = getelementptr inbounds i64, i64* %cloptr294567, i64 3                ; &eptr294571[3]
  %eptr294572 = getelementptr inbounds i64, i64* %cloptr294567, i64 4                ; &eptr294572[4]
  store i64 %ViB$Ycmb, i64* %eptr294569                                              ; *eptr294569 = %ViB$Ycmb
  store i64 %Wco$_37foldr1, i64* %eptr294570                                         ; *eptr294570 = %Wco$_37foldr1
  store i64 %J19$_37map1, i64* %eptr294571                                           ; *eptr294571 = %J19$_37map1
  store i64 %NiE$_37take, i64* %eptr294572                                           ; *eptr294572 = %NiE$_37take
  %eptr294568 = getelementptr inbounds i64, i64* %cloptr294567, i64 0                ; &cloptr294567[0]
  %f294573 = ptrtoint void(i64,i64,i64)* @lam294490 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294573, i64* %eptr294568                                               ; store fptr
  %arg293184 = ptrtoint i64* %cloptr294567 to i64                                    ; closure cast; i64* -> i64
  %cloptr294574 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294575 = getelementptr inbounds i64, i64* %cloptr294574, i64 0                ; &cloptr294574[0]
  %f294576 = ptrtoint void(i64,i64,i64)* @lam294089 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294576, i64* %eptr294575                                               ; store fptr
  %arg293183 = ptrtoint i64* %cloptr294574 to i64                                    ; closure cast; i64* -> i64
  %cloptr294577 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294578 = getelementptr inbounds i64, i64* %cloptr294577, i64 0               ; &cloptr294577[0]
  %f294580 = load i64, i64* %i0ptr294578, align 8                                    ; load; *i0ptr294578
  %fptr294579 = inttoptr i64 %f294580 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294579(i64 %ViB$Ycmb, i64 %arg293184, i64 %arg293183); tail call
  ret void
}


define void @lam294490(i64 %env294491, i64 %_95292981, i64 %QfF$_37length) {
  %envptr294581 = inttoptr i64 %env294491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294582 = getelementptr inbounds i64, i64* %envptr294581, i64 4              ; &envptr294581[4]
  %NiE$_37take = load i64, i64* %envptr294582, align 8                               ; load; *envptr294582
  %envptr294583 = inttoptr i64 %env294491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294584 = getelementptr inbounds i64, i64* %envptr294583, i64 3              ; &envptr294583[3]
  %J19$_37map1 = load i64, i64* %envptr294584, align 8                               ; load; *envptr294584
  %envptr294585 = inttoptr i64 %env294491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294586 = getelementptr inbounds i64, i64* %envptr294585, i64 2              ; &envptr294585[2]
  %Wco$_37foldr1 = load i64, i64* %envptr294586, align 8                             ; load; *envptr294586
  %envptr294587 = inttoptr i64 %env294491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294588 = getelementptr inbounds i64, i64* %envptr294587, i64 1              ; &envptr294587[1]
  %ViB$Ycmb = load i64, i64* %envptr294588, align 8                                  ; load; *envptr294588
  %cloptr294589 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr294591 = getelementptr inbounds i64, i64* %cloptr294589, i64 1                ; &eptr294591[1]
  %eptr294592 = getelementptr inbounds i64, i64* %cloptr294589, i64 2                ; &eptr294592[2]
  %eptr294593 = getelementptr inbounds i64, i64* %cloptr294589, i64 3                ; &eptr294593[3]
  %eptr294594 = getelementptr inbounds i64, i64* %cloptr294589, i64 4                ; &eptr294594[4]
  %eptr294595 = getelementptr inbounds i64, i64* %cloptr294589, i64 5                ; &eptr294595[5]
  store i64 %QfF$_37length, i64* %eptr294591                                         ; *eptr294591 = %QfF$_37length
  store i64 %ViB$Ycmb, i64* %eptr294592                                              ; *eptr294592 = %ViB$Ycmb
  store i64 %Wco$_37foldr1, i64* %eptr294593                                         ; *eptr294593 = %Wco$_37foldr1
  store i64 %J19$_37map1, i64* %eptr294594                                           ; *eptr294594 = %J19$_37map1
  store i64 %NiE$_37take, i64* %eptr294595                                           ; *eptr294595 = %NiE$_37take
  %eptr294590 = getelementptr inbounds i64, i64* %cloptr294589, i64 0                ; &cloptr294589[0]
  %f294596 = ptrtoint void(i64,i64,i64)* @lam294488 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294596, i64* %eptr294590                                               ; store fptr
  %arg293187 = ptrtoint i64* %cloptr294589 to i64                                    ; closure cast; i64* -> i64
  %cloptr294597 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294598 = getelementptr inbounds i64, i64* %cloptr294597, i64 0                ; &cloptr294597[0]
  %f294599 = ptrtoint void(i64,i64,i64)* @lam294097 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294599, i64* %eptr294598                                               ; store fptr
  %arg293186 = ptrtoint i64* %cloptr294597 to i64                                    ; closure cast; i64* -> i64
  %cloptr294600 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294601 = getelementptr inbounds i64, i64* %cloptr294600, i64 0               ; &cloptr294600[0]
  %f294603 = load i64, i64* %i0ptr294601, align 8                                    ; load; *i0ptr294601
  %fptr294602 = inttoptr i64 %f294603 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294602(i64 %ViB$Ycmb, i64 %arg293187, i64 %arg293186); tail call
  ret void
}


define void @lam294488(i64 %env294489, i64 %_95292982, i64 %p1e$_37foldl1) {
  %envptr294604 = inttoptr i64 %env294489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294605 = getelementptr inbounds i64, i64* %envptr294604, i64 5              ; &envptr294604[5]
  %NiE$_37take = load i64, i64* %envptr294605, align 8                               ; load; *envptr294605
  %envptr294606 = inttoptr i64 %env294489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294607 = getelementptr inbounds i64, i64* %envptr294606, i64 4              ; &envptr294606[4]
  %J19$_37map1 = load i64, i64* %envptr294607, align 8                               ; load; *envptr294607
  %envptr294608 = inttoptr i64 %env294489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294609 = getelementptr inbounds i64, i64* %envptr294608, i64 3              ; &envptr294608[3]
  %Wco$_37foldr1 = load i64, i64* %envptr294609, align 8                             ; load; *envptr294609
  %envptr294610 = inttoptr i64 %env294489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294611 = getelementptr inbounds i64, i64* %envptr294610, i64 2              ; &envptr294610[2]
  %ViB$Ycmb = load i64, i64* %envptr294611, align 8                                  ; load; *envptr294611
  %envptr294612 = inttoptr i64 %env294489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294613 = getelementptr inbounds i64, i64* %envptr294612, i64 1              ; &envptr294612[1]
  %QfF$_37length = load i64, i64* %envptr294613, align 8                             ; load; *envptr294613
  %cloptr294614 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294616 = getelementptr inbounds i64, i64* %cloptr294614, i64 1                ; &eptr294616[1]
  store i64 %p1e$_37foldl1, i64* %eptr294616                                         ; *eptr294616 = %p1e$_37foldl1
  %eptr294615 = getelementptr inbounds i64, i64* %cloptr294614, i64 0                ; &cloptr294614[0]
  %f294617 = ptrtoint void(i64,i64,i64)* @lam294486 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294617, i64* %eptr294615                                               ; store fptr
  %O6p$_37last = ptrtoint i64* %cloptr294614 to i64                                  ; closure cast; i64* -> i64
  %cloptr294618 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294620 = getelementptr inbounds i64, i64* %cloptr294618, i64 1                ; &eptr294620[1]
  %eptr294621 = getelementptr inbounds i64, i64* %cloptr294618, i64 2                ; &eptr294621[2]
  store i64 %QfF$_37length, i64* %eptr294620                                         ; *eptr294620 = %QfF$_37length
  store i64 %NiE$_37take, i64* %eptr294621                                           ; *eptr294621 = %NiE$_37take
  %eptr294619 = getelementptr inbounds i64, i64* %cloptr294618, i64 0                ; &cloptr294618[0]
  %f294622 = ptrtoint void(i64,i64,i64,i64)* @lam294480 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294622, i64* %eptr294619                                               ; store fptr
  %BzY$_37drop_45right = ptrtoint i64* %cloptr294618 to i64                          ; closure cast; i64* -> i64
  %cloptr294623 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr294625 = getelementptr inbounds i64, i64* %cloptr294623, i64 1                ; &eptr294625[1]
  %eptr294626 = getelementptr inbounds i64, i64* %cloptr294623, i64 2                ; &eptr294626[2]
  %eptr294627 = getelementptr inbounds i64, i64* %cloptr294623, i64 3                ; &eptr294627[3]
  %eptr294628 = getelementptr inbounds i64, i64* %cloptr294623, i64 4                ; &eptr294628[4]
  %eptr294629 = getelementptr inbounds i64, i64* %cloptr294623, i64 5                ; &eptr294629[5]
  %eptr294630 = getelementptr inbounds i64, i64* %cloptr294623, i64 6                ; &eptr294630[6]
  store i64 %QfF$_37length, i64* %eptr294625                                         ; *eptr294625 = %QfF$_37length
  store i64 %p1e$_37foldl1, i64* %eptr294626                                         ; *eptr294626 = %p1e$_37foldl1
  store i64 %ViB$Ycmb, i64* %eptr294627                                              ; *eptr294627 = %ViB$Ycmb
  store i64 %Wco$_37foldr1, i64* %eptr294628                                         ; *eptr294628 = %Wco$_37foldr1
  store i64 %O6p$_37last, i64* %eptr294629                                           ; *eptr294629 = %O6p$_37last
  store i64 %BzY$_37drop_45right, i64* %eptr294630                                   ; *eptr294630 = %BzY$_37drop_45right
  %eptr294624 = getelementptr inbounds i64, i64* %cloptr294623, i64 0                ; &cloptr294623[0]
  %f294631 = ptrtoint void(i64,i64,i64)* @lam294476 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294631, i64* %eptr294624                                               ; store fptr
  %arg293207 = ptrtoint i64* %cloptr294623 to i64                                    ; closure cast; i64* -> i64
  %cloptr294632 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294634 = getelementptr inbounds i64, i64* %cloptr294632, i64 1                ; &eptr294634[1]
  %eptr294635 = getelementptr inbounds i64, i64* %cloptr294632, i64 2                ; &eptr294635[2]
  store i64 %Wco$_37foldr1, i64* %eptr294634                                         ; *eptr294634 = %Wco$_37foldr1
  store i64 %J19$_37map1, i64* %eptr294635                                           ; *eptr294635 = %J19$_37map1
  %eptr294633 = getelementptr inbounds i64, i64* %cloptr294632, i64 0                ; &cloptr294632[0]
  %f294636 = ptrtoint void(i64,i64,i64)* @lam294134 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294636, i64* %eptr294633                                               ; store fptr
  %arg293206 = ptrtoint i64* %cloptr294632 to i64                                    ; closure cast; i64* -> i64
  %cloptr294637 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294638 = getelementptr inbounds i64, i64* %cloptr294637, i64 0               ; &cloptr294637[0]
  %f294640 = load i64, i64* %i0ptr294638, align 8                                    ; load; *i0ptr294638
  %fptr294639 = inttoptr i64 %f294640 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294639(i64 %ViB$Ycmb, i64 %arg293207, i64 %arg293206); tail call
  ret void
}


define void @lam294486(i64 %env294487, i64 %cont292983, i64 %uBr$lst) {
  %envptr294641 = inttoptr i64 %env294487 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294642 = getelementptr inbounds i64, i64* %envptr294641, i64 1              ; &envptr294641[1]
  %p1e$_37foldl1 = load i64, i64* %envptr294642, align 8                             ; load; *envptr294642
  %cloptr294643 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294644 = getelementptr inbounds i64, i64* %cloptr294643, i64 0                ; &cloptr294643[0]
  %f294645 = ptrtoint void(i64,i64,i64,i64)* @lam294484 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294645, i64* %eptr294644                                               ; store fptr
  %arg293191 = ptrtoint i64* %cloptr294643 to i64                                    ; closure cast; i64* -> i64
  %arg293190 = add i64 0, 0                                                          ; quoted ()
  %cloptr294646 = inttoptr i64 %p1e$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr294647 = getelementptr inbounds i64, i64* %cloptr294646, i64 0               ; &cloptr294646[0]
  %f294649 = load i64, i64* %i0ptr294647, align 8                                    ; load; *i0ptr294647
  %fptr294648 = inttoptr i64 %f294649 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294648(i64 %p1e$_37foldl1, i64 %cont292983, i64 %arg293191, i64 %arg293190, i64 %uBr$lst); tail call
  ret void
}


define void @lam294484(i64 %env294485, i64 %cont292984, i64 %Zci$x, i64 %IzD$y) {
  %arg293195 = add i64 0, 0                                                          ; quoted ()
  %cloptr294650 = inttoptr i64 %cont292984 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294651 = getelementptr inbounds i64, i64* %cloptr294650, i64 0               ; &cloptr294650[0]
  %f294653 = load i64, i64* %i0ptr294651, align 8                                    ; load; *i0ptr294651
  %fptr294652 = inttoptr i64 %f294653 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294652(i64 %cont292984, i64 %arg293195, i64 %Zci$x) ; tail call
  ret void
}


define void @lam294480(i64 %env294481, i64 %cont292985, i64 %WMr$lst, i64 %dxy$n) {
  %envptr294654 = inttoptr i64 %env294481 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294655 = getelementptr inbounds i64, i64* %envptr294654, i64 2              ; &envptr294654[2]
  %NiE$_37take = load i64, i64* %envptr294655, align 8                               ; load; *envptr294655
  %envptr294656 = inttoptr i64 %env294481 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294657 = getelementptr inbounds i64, i64* %envptr294656, i64 1              ; &envptr294656[1]
  %QfF$_37length = load i64, i64* %envptr294657, align 8                             ; load; *envptr294657
  %cloptr294658 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr294660 = getelementptr inbounds i64, i64* %cloptr294658, i64 1                ; &eptr294660[1]
  %eptr294661 = getelementptr inbounds i64, i64* %cloptr294658, i64 2                ; &eptr294661[2]
  %eptr294662 = getelementptr inbounds i64, i64* %cloptr294658, i64 3                ; &eptr294662[3]
  %eptr294663 = getelementptr inbounds i64, i64* %cloptr294658, i64 4                ; &eptr294663[4]
  store i64 %cont292985, i64* %eptr294660                                            ; *eptr294660 = %cont292985
  store i64 %NiE$_37take, i64* %eptr294661                                           ; *eptr294661 = %NiE$_37take
  store i64 %dxy$n, i64* %eptr294662                                                 ; *eptr294662 = %dxy$n
  store i64 %WMr$lst, i64* %eptr294663                                               ; *eptr294663 = %WMr$lst
  %eptr294659 = getelementptr inbounds i64, i64* %cloptr294658, i64 0                ; &cloptr294658[0]
  %f294664 = ptrtoint void(i64,i64,i64)* @lam294478 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294664, i64* %eptr294659                                               ; store fptr
  %arg293198 = ptrtoint i64* %cloptr294658 to i64                                    ; closure cast; i64* -> i64
  %cloptr294665 = inttoptr i64 %QfF$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr294666 = getelementptr inbounds i64, i64* %cloptr294665, i64 0               ; &cloptr294665[0]
  %f294668 = load i64, i64* %i0ptr294666, align 8                                    ; load; *i0ptr294666
  %fptr294667 = inttoptr i64 %f294668 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294667(i64 %QfF$_37length, i64 %arg293198, i64 %WMr$lst); tail call
  ret void
}


define void @lam294478(i64 %env294479, i64 %_95292986, i64 %a292879) {
  %envptr294669 = inttoptr i64 %env294479 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294670 = getelementptr inbounds i64, i64* %envptr294669, i64 4              ; &envptr294669[4]
  %WMr$lst = load i64, i64* %envptr294670, align 8                                   ; load; *envptr294670
  %envptr294671 = inttoptr i64 %env294479 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294672 = getelementptr inbounds i64, i64* %envptr294671, i64 3              ; &envptr294671[3]
  %dxy$n = load i64, i64* %envptr294672, align 8                                     ; load; *envptr294672
  %envptr294673 = inttoptr i64 %env294479 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294674 = getelementptr inbounds i64, i64* %envptr294673, i64 2              ; &envptr294673[2]
  %NiE$_37take = load i64, i64* %envptr294674, align 8                               ; load; *envptr294674
  %envptr294675 = inttoptr i64 %env294479 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294676 = getelementptr inbounds i64, i64* %envptr294675, i64 1              ; &envptr294675[1]
  %cont292985 = load i64, i64* %envptr294676, align 8                                ; load; *envptr294676
  %a292880 = call i64 @prim__45(i64 %a292879, i64 %dxy$n)                            ; call prim__45
  %cloptr294677 = inttoptr i64 %NiE$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr294678 = getelementptr inbounds i64, i64* %cloptr294677, i64 0               ; &cloptr294677[0]
  %f294680 = load i64, i64* %i0ptr294678, align 8                                    ; load; *i0ptr294678
  %fptr294679 = inttoptr i64 %f294680 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294679(i64 %NiE$_37take, i64 %cont292985, i64 %WMr$lst, i64 %a292880); tail call
  ret void
}


define void @lam294476(i64 %env294477, i64 %_95292987, i64 %oBT$_37foldr) {
  %envptr294681 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294682 = getelementptr inbounds i64, i64* %envptr294681, i64 6              ; &envptr294681[6]
  %BzY$_37drop_45right = load i64, i64* %envptr294682, align 8                       ; load; *envptr294682
  %envptr294683 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294684 = getelementptr inbounds i64, i64* %envptr294683, i64 5              ; &envptr294683[5]
  %O6p$_37last = load i64, i64* %envptr294684, align 8                               ; load; *envptr294684
  %envptr294685 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294686 = getelementptr inbounds i64, i64* %envptr294685, i64 4              ; &envptr294685[4]
  %Wco$_37foldr1 = load i64, i64* %envptr294686, align 8                             ; load; *envptr294686
  %envptr294687 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294688 = getelementptr inbounds i64, i64* %envptr294687, i64 3              ; &envptr294687[3]
  %ViB$Ycmb = load i64, i64* %envptr294688, align 8                                  ; load; *envptr294688
  %envptr294689 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294690 = getelementptr inbounds i64, i64* %envptr294689, i64 2              ; &envptr294689[2]
  %p1e$_37foldl1 = load i64, i64* %envptr294690, align 8                             ; load; *envptr294690
  %envptr294691 = inttoptr i64 %env294477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294692 = getelementptr inbounds i64, i64* %envptr294691, i64 1              ; &envptr294691[1]
  %QfF$_37length = load i64, i64* %envptr294692, align 8                             ; load; *envptr294692
  %cloptr294693 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294695 = getelementptr inbounds i64, i64* %cloptr294693, i64 1                ; &eptr294695[1]
  store i64 %Wco$_37foldr1, i64* %eptr294695                                         ; *eptr294695 = %Wco$_37foldr1
  %eptr294694 = getelementptr inbounds i64, i64* %cloptr294693, i64 0                ; &cloptr294693[0]
  %f294696 = ptrtoint void(i64,i64,i64,i64)* @lam294474 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294696, i64* %eptr294694                                               ; store fptr
  %eG7$_37map1 = ptrtoint i64* %cloptr294693 to i64                                  ; closure cast; i64* -> i64
  %cloptr294697 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294699 = getelementptr inbounds i64, i64* %cloptr294697, i64 1                ; &eptr294699[1]
  %eptr294700 = getelementptr inbounds i64, i64* %cloptr294697, i64 2                ; &eptr294700[2]
  %eptr294701 = getelementptr inbounds i64, i64* %cloptr294697, i64 3                ; &eptr294701[3]
  store i64 %oBT$_37foldr, i64* %eptr294699                                          ; *eptr294699 = %oBT$_37foldr
  store i64 %O6p$_37last, i64* %eptr294700                                           ; *eptr294700 = %O6p$_37last
  store i64 %BzY$_37drop_45right, i64* %eptr294701                                   ; *eptr294701 = %BzY$_37drop_45right
  %eptr294698 = getelementptr inbounds i64, i64* %cloptr294697, i64 0                ; &cloptr294697[0]
  %f294702 = ptrtoint void(i64,i64)* @lam294466 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f294702, i64* %eptr294698                                               ; store fptr
  %CFQ$_37map = ptrtoint i64* %cloptr294697 to i64                                   ; closure cast; i64* -> i64
  %cloptr294703 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294705 = getelementptr inbounds i64, i64* %cloptr294703, i64 1                ; &eptr294705[1]
  %eptr294706 = getelementptr inbounds i64, i64* %cloptr294703, i64 2                ; &eptr294706[2]
  store i64 %QfF$_37length, i64* %eptr294705                                         ; *eptr294705 = %QfF$_37length
  store i64 %p1e$_37foldl1, i64* %eptr294706                                         ; *eptr294706 = %p1e$_37foldl1
  %eptr294704 = getelementptr inbounds i64, i64* %cloptr294703, i64 0                ; &cloptr294703[0]
  %f294707 = ptrtoint void(i64,i64,i64)* @lam294453 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294707, i64* %eptr294704                                               ; store fptr
  %arg293249 = ptrtoint i64* %cloptr294703 to i64                                    ; closure cast; i64* -> i64
  %cloptr294708 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294710 = getelementptr inbounds i64, i64* %cloptr294708, i64 1                ; &eptr294710[1]
  %eptr294711 = getelementptr inbounds i64, i64* %cloptr294708, i64 2                ; &eptr294711[2]
  %eptr294712 = getelementptr inbounds i64, i64* %cloptr294708, i64 3                ; &eptr294712[3]
  store i64 %Wco$_37foldr1, i64* %eptr294710                                         ; *eptr294710 = %Wco$_37foldr1
  store i64 %eG7$_37map1, i64* %eptr294711                                           ; *eptr294711 = %eG7$_37map1
  store i64 %oBT$_37foldr, i64* %eptr294712                                          ; *eptr294712 = %oBT$_37foldr
  %eptr294709 = getelementptr inbounds i64, i64* %cloptr294708, i64 0                ; &cloptr294708[0]
  %f294713 = ptrtoint void(i64,i64,i64)* @lam294171 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294713, i64* %eptr294709                                               ; store fptr
  %arg293248 = ptrtoint i64* %cloptr294708 to i64                                    ; closure cast; i64* -> i64
  %cloptr294714 = inttoptr i64 %ViB$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr294715 = getelementptr inbounds i64, i64* %cloptr294714, i64 0               ; &cloptr294714[0]
  %f294717 = load i64, i64* %i0ptr294715, align 8                                    ; load; *i0ptr294715
  %fptr294716 = inttoptr i64 %f294717 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294716(i64 %ViB$Ycmb, i64 %arg293249, i64 %arg293248); tail call
  ret void
}


define void @lam294474(i64 %env294475, i64 %cont292988, i64 %sys$f, i64 %bzM$lst) {
  %envptr294718 = inttoptr i64 %env294475 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294719 = getelementptr inbounds i64, i64* %envptr294718, i64 1              ; &envptr294718[1]
  %Wco$_37foldr1 = load i64, i64* %envptr294719, align 8                             ; load; *envptr294719
  %cloptr294720 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294722 = getelementptr inbounds i64, i64* %cloptr294720, i64 1                ; &eptr294722[1]
  store i64 %sys$f, i64* %eptr294722                                                 ; *eptr294722 = %sys$f
  %eptr294721 = getelementptr inbounds i64, i64* %cloptr294720, i64 0                ; &cloptr294720[0]
  %f294723 = ptrtoint void(i64,i64,i64,i64)* @lam294472 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294723, i64* %eptr294721                                               ; store fptr
  %arg293211 = ptrtoint i64* %cloptr294720 to i64                                    ; closure cast; i64* -> i64
  %arg293210 = add i64 0, 0                                                          ; quoted ()
  %cloptr294724 = inttoptr i64 %Wco$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr294725 = getelementptr inbounds i64, i64* %cloptr294724, i64 0               ; &cloptr294724[0]
  %f294727 = load i64, i64* %i0ptr294725, align 8                                    ; load; *i0ptr294725
  %fptr294726 = inttoptr i64 %f294727 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294726(i64 %Wco$_37foldr1, i64 %cont292988, i64 %arg293211, i64 %arg293210, i64 %bzM$lst); tail call
  ret void
}


define void @lam294472(i64 %env294473, i64 %cont292989, i64 %Fzq$v, i64 %Dkk$r) {
  %envptr294728 = inttoptr i64 %env294473 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294729 = getelementptr inbounds i64, i64* %envptr294728, i64 1              ; &envptr294728[1]
  %sys$f = load i64, i64* %envptr294729, align 8                                     ; load; *envptr294729
  %cloptr294730 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294732 = getelementptr inbounds i64, i64* %cloptr294730, i64 1                ; &eptr294732[1]
  %eptr294733 = getelementptr inbounds i64, i64* %cloptr294730, i64 2                ; &eptr294733[2]
  store i64 %Dkk$r, i64* %eptr294732                                                 ; *eptr294732 = %Dkk$r
  store i64 %cont292989, i64* %eptr294733                                            ; *eptr294733 = %cont292989
  %eptr294731 = getelementptr inbounds i64, i64* %cloptr294730, i64 0                ; &cloptr294730[0]
  %f294734 = ptrtoint void(i64,i64,i64)* @lam294470 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294734, i64* %eptr294731                                               ; store fptr
  %arg293215 = ptrtoint i64* %cloptr294730 to i64                                    ; closure cast; i64* -> i64
  %cloptr294735 = inttoptr i64 %sys$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr294736 = getelementptr inbounds i64, i64* %cloptr294735, i64 0               ; &cloptr294735[0]
  %f294738 = load i64, i64* %i0ptr294736, align 8                                    ; load; *i0ptr294736
  %fptr294737 = inttoptr i64 %f294738 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294737(i64 %sys$f, i64 %arg293215, i64 %Fzq$v)      ; tail call
  ret void
}


define void @lam294470(i64 %env294471, i64 %_95292990, i64 %a292889) {
  %envptr294739 = inttoptr i64 %env294471 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294740 = getelementptr inbounds i64, i64* %envptr294739, i64 2              ; &envptr294739[2]
  %cont292989 = load i64, i64* %envptr294740, align 8                                ; load; *envptr294740
  %envptr294741 = inttoptr i64 %env294471 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294742 = getelementptr inbounds i64, i64* %envptr294741, i64 1              ; &envptr294741[1]
  %Dkk$r = load i64, i64* %envptr294742, align 8                                     ; load; *envptr294742
  %retprim292991 = call i64 @prim_cons(i64 %a292889, i64 %Dkk$r)                     ; call prim_cons
  %arg293220 = add i64 0, 0                                                          ; quoted ()
  %cloptr294743 = inttoptr i64 %cont292989 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294744 = getelementptr inbounds i64, i64* %cloptr294743, i64 0               ; &cloptr294743[0]
  %f294746 = load i64, i64* %i0ptr294744, align 8                                    ; load; *i0ptr294744
  %fptr294745 = inttoptr i64 %f294746 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294745(i64 %cont292989, i64 %arg293220, i64 %retprim292991); tail call
  ret void
}


define void @lam294466(i64 %env294467, i64 %Xpj$args292993) {
  %envptr294747 = inttoptr i64 %env294467 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294748 = getelementptr inbounds i64, i64* %envptr294747, i64 3              ; &envptr294747[3]
  %BzY$_37drop_45right = load i64, i64* %envptr294748, align 8                       ; load; *envptr294748
  %envptr294749 = inttoptr i64 %env294467 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294750 = getelementptr inbounds i64, i64* %envptr294749, i64 2              ; &envptr294749[2]
  %O6p$_37last = load i64, i64* %envptr294750, align 8                               ; load; *envptr294750
  %envptr294751 = inttoptr i64 %env294467 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294752 = getelementptr inbounds i64, i64* %envptr294751, i64 1              ; &envptr294751[1]
  %oBT$_37foldr = load i64, i64* %envptr294752, align 8                              ; load; *envptr294752
  %cont292992 = call i64 @prim_car(i64 %Xpj$args292993)                              ; call prim_car
  %Xpj$args = call i64 @prim_cdr(i64 %Xpj$args292993)                                ; call prim_cdr
  %JAm$f = call i64 @prim_car(i64 %Xpj$args)                                         ; call prim_car
  %WpE$lsts = call i64 @prim_cdr(i64 %Xpj$args)                                      ; call prim_cdr
  %arg293227 = add i64 0, 0                                                          ; quoted ()
  %a292893 = call i64 @prim_cons(i64 %arg293227, i64 %WpE$lsts)                      ; call prim_cons
  %cloptr294753 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294755 = getelementptr inbounds i64, i64* %cloptr294753, i64 1                ; &eptr294755[1]
  %eptr294756 = getelementptr inbounds i64, i64* %cloptr294753, i64 2                ; &eptr294756[2]
  %eptr294757 = getelementptr inbounds i64, i64* %cloptr294753, i64 3                ; &eptr294757[3]
  store i64 %O6p$_37last, i64* %eptr294755                                           ; *eptr294755 = %O6p$_37last
  store i64 %JAm$f, i64* %eptr294756                                                 ; *eptr294756 = %JAm$f
  store i64 %BzY$_37drop_45right, i64* %eptr294757                                   ; *eptr294757 = %BzY$_37drop_45right
  %eptr294754 = getelementptr inbounds i64, i64* %cloptr294753, i64 0                ; &cloptr294753[0]
  %f294758 = ptrtoint void(i64,i64)* @lam294463 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f294758, i64* %eptr294754                                               ; store fptr
  %arg293229 = ptrtoint i64* %cloptr294753 to i64                                    ; closure cast; i64* -> i64
  %a292894 = call i64 @prim_cons(i64 %arg293229, i64 %a292893)                       ; call prim_cons
  %cps_45lst293001 = call i64 @prim_cons(i64 %cont292992, i64 %a292894)              ; call prim_cons
  %cloptr294759 = inttoptr i64 %oBT$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr294760 = getelementptr inbounds i64, i64* %cloptr294759, i64 0               ; &cloptr294759[0]
  %f294762 = load i64, i64* %i0ptr294760, align 8                                    ; load; *i0ptr294760
  %fptr294761 = inttoptr i64 %f294762 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294761(i64 %oBT$_37foldr, i64 %cps_45lst293001)     ; tail call
  ret void
}


define void @lam294463(i64 %env294464, i64 %KlU$fargs292995) {
  %envptr294763 = inttoptr i64 %env294464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294764 = getelementptr inbounds i64, i64* %envptr294763, i64 3              ; &envptr294763[3]
  %BzY$_37drop_45right = load i64, i64* %envptr294764, align 8                       ; load; *envptr294764
  %envptr294765 = inttoptr i64 %env294464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294766 = getelementptr inbounds i64, i64* %envptr294765, i64 2              ; &envptr294765[2]
  %JAm$f = load i64, i64* %envptr294766, align 8                                     ; load; *envptr294766
  %envptr294767 = inttoptr i64 %env294464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294768 = getelementptr inbounds i64, i64* %envptr294767, i64 1              ; &envptr294767[1]
  %O6p$_37last = load i64, i64* %envptr294768, align 8                               ; load; *envptr294768
  %cont292994 = call i64 @prim_car(i64 %KlU$fargs292995)                             ; call prim_car
  %KlU$fargs = call i64 @prim_cdr(i64 %KlU$fargs292995)                              ; call prim_cdr
  %cloptr294769 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr294771 = getelementptr inbounds i64, i64* %cloptr294769, i64 1                ; &eptr294771[1]
  %eptr294772 = getelementptr inbounds i64, i64* %cloptr294769, i64 2                ; &eptr294772[2]
  %eptr294773 = getelementptr inbounds i64, i64* %cloptr294769, i64 3                ; &eptr294773[3]
  %eptr294774 = getelementptr inbounds i64, i64* %cloptr294769, i64 4                ; &eptr294774[4]
  store i64 %cont292994, i64* %eptr294771                                            ; *eptr294771 = %cont292994
  store i64 %O6p$_37last, i64* %eptr294772                                           ; *eptr294772 = %O6p$_37last
  store i64 %JAm$f, i64* %eptr294773                                                 ; *eptr294773 = %JAm$f
  store i64 %KlU$fargs, i64* %eptr294774                                             ; *eptr294774 = %KlU$fargs
  %eptr294770 = getelementptr inbounds i64, i64* %cloptr294769, i64 0                ; &cloptr294769[0]
  %f294775 = ptrtoint void(i64,i64,i64)* @lam294461 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294775, i64* %eptr294770                                               ; store fptr
  %arg293234 = ptrtoint i64* %cloptr294769 to i64                                    ; closure cast; i64* -> i64
  %arg293232 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr294776 = inttoptr i64 %BzY$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr294777 = getelementptr inbounds i64, i64* %cloptr294776, i64 0               ; &cloptr294776[0]
  %f294779 = load i64, i64* %i0ptr294777, align 8                                    ; load; *i0ptr294777
  %fptr294778 = inttoptr i64 %f294779 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294778(i64 %BzY$_37drop_45right, i64 %arg293234, i64 %KlU$fargs, i64 %arg293232); tail call
  ret void
}


define void @lam294461(i64 %env294462, i64 %_95292996, i64 %a292890) {
  %envptr294780 = inttoptr i64 %env294462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294781 = getelementptr inbounds i64, i64* %envptr294780, i64 4              ; &envptr294780[4]
  %KlU$fargs = load i64, i64* %envptr294781, align 8                                 ; load; *envptr294781
  %envptr294782 = inttoptr i64 %env294462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294783 = getelementptr inbounds i64, i64* %envptr294782, i64 3              ; &envptr294782[3]
  %JAm$f = load i64, i64* %envptr294783, align 8                                     ; load; *envptr294783
  %envptr294784 = inttoptr i64 %env294462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294785 = getelementptr inbounds i64, i64* %envptr294784, i64 2              ; &envptr294784[2]
  %O6p$_37last = load i64, i64* %envptr294785, align 8                               ; load; *envptr294785
  %envptr294786 = inttoptr i64 %env294462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294787 = getelementptr inbounds i64, i64* %envptr294786, i64 1              ; &envptr294786[1]
  %cont292994 = load i64, i64* %envptr294787, align 8                                ; load; *envptr294787
  %cloptr294788 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294790 = getelementptr inbounds i64, i64* %cloptr294788, i64 1                ; &eptr294790[1]
  %eptr294791 = getelementptr inbounds i64, i64* %cloptr294788, i64 2                ; &eptr294791[2]
  %eptr294792 = getelementptr inbounds i64, i64* %cloptr294788, i64 3                ; &eptr294792[3]
  store i64 %cont292994, i64* %eptr294790                                            ; *eptr294790 = %cont292994
  store i64 %O6p$_37last, i64* %eptr294791                                           ; *eptr294791 = %O6p$_37last
  store i64 %KlU$fargs, i64* %eptr294792                                             ; *eptr294792 = %KlU$fargs
  %eptr294789 = getelementptr inbounds i64, i64* %cloptr294788, i64 0                ; &cloptr294788[0]
  %f294793 = ptrtoint void(i64,i64,i64)* @lam294459 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294793, i64* %eptr294789                                               ; store fptr
  %arg293237 = ptrtoint i64* %cloptr294788 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst293000 = call i64 @prim_cons(i64 %arg293237, i64 %a292890)               ; call prim_cons
  %cloptr294794 = inttoptr i64 %JAm$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr294795 = getelementptr inbounds i64, i64* %cloptr294794, i64 0               ; &cloptr294794[0]
  %f294797 = load i64, i64* %i0ptr294795, align 8                                    ; load; *i0ptr294795
  %fptr294796 = inttoptr i64 %f294797 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294796(i64 %JAm$f, i64 %cps_45lst293000)            ; tail call
  ret void
}


define void @lam294459(i64 %env294460, i64 %_95292997, i64 %a292891) {
  %envptr294798 = inttoptr i64 %env294460 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294799 = getelementptr inbounds i64, i64* %envptr294798, i64 3              ; &envptr294798[3]
  %KlU$fargs = load i64, i64* %envptr294799, align 8                                 ; load; *envptr294799
  %envptr294800 = inttoptr i64 %env294460 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294801 = getelementptr inbounds i64, i64* %envptr294800, i64 2              ; &envptr294800[2]
  %O6p$_37last = load i64, i64* %envptr294801, align 8                               ; load; *envptr294801
  %envptr294802 = inttoptr i64 %env294460 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294803 = getelementptr inbounds i64, i64* %envptr294802, i64 1              ; &envptr294802[1]
  %cont292994 = load i64, i64* %envptr294803, align 8                                ; load; *envptr294803
  %cloptr294804 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294806 = getelementptr inbounds i64, i64* %cloptr294804, i64 1                ; &eptr294806[1]
  %eptr294807 = getelementptr inbounds i64, i64* %cloptr294804, i64 2                ; &eptr294807[2]
  store i64 %cont292994, i64* %eptr294806                                            ; *eptr294806 = %cont292994
  store i64 %a292891, i64* %eptr294807                                               ; *eptr294807 = %a292891
  %eptr294805 = getelementptr inbounds i64, i64* %cloptr294804, i64 0                ; &cloptr294804[0]
  %f294808 = ptrtoint void(i64,i64,i64)* @lam294457 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294808, i64* %eptr294805                                               ; store fptr
  %arg293239 = ptrtoint i64* %cloptr294804 to i64                                    ; closure cast; i64* -> i64
  %cloptr294809 = inttoptr i64 %O6p$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr294810 = getelementptr inbounds i64, i64* %cloptr294809, i64 0               ; &cloptr294809[0]
  %f294812 = load i64, i64* %i0ptr294810, align 8                                    ; load; *i0ptr294810
  %fptr294811 = inttoptr i64 %f294812 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294811(i64 %O6p$_37last, i64 %arg293239, i64 %KlU$fargs); tail call
  ret void
}


define void @lam294457(i64 %env294458, i64 %_95292998, i64 %a292892) {
  %envptr294813 = inttoptr i64 %env294458 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294814 = getelementptr inbounds i64, i64* %envptr294813, i64 2              ; &envptr294813[2]
  %a292891 = load i64, i64* %envptr294814, align 8                                   ; load; *envptr294814
  %envptr294815 = inttoptr i64 %env294458 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294816 = getelementptr inbounds i64, i64* %envptr294815, i64 1              ; &envptr294815[1]
  %cont292994 = load i64, i64* %envptr294816, align 8                                ; load; *envptr294816
  %retprim292999 = call i64 @prim_cons(i64 %a292891, i64 %a292892)                   ; call prim_cons
  %arg293244 = add i64 0, 0                                                          ; quoted ()
  %cloptr294817 = inttoptr i64 %cont292994 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294818 = getelementptr inbounds i64, i64* %cloptr294817, i64 0               ; &cloptr294817[0]
  %f294820 = load i64, i64* %i0ptr294818, align 8                                    ; load; *i0ptr294818
  %fptr294819 = inttoptr i64 %f294820 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294819(i64 %cont292994, i64 %arg293244, i64 %retprim292999); tail call
  ret void
}


define void @lam294453(i64 %env294454, i64 %_95293002, i64 %ag9$_37foldl) {
  %envptr294821 = inttoptr i64 %env294454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294822 = getelementptr inbounds i64, i64* %envptr294821, i64 2              ; &envptr294821[2]
  %p1e$_37foldl1 = load i64, i64* %envptr294822, align 8                             ; load; *envptr294822
  %envptr294823 = inttoptr i64 %env294454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294824 = getelementptr inbounds i64, i64* %envptr294823, i64 1              ; &envptr294823[1]
  %QfF$_37length = load i64, i64* %envptr294824, align 8                             ; load; *envptr294824
  %cloptr294825 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294826 = getelementptr inbounds i64, i64* %cloptr294825, i64 0                ; &cloptr294825[0]
  %f294827 = ptrtoint void(i64,i64,i64,i64)* @lam294451 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294827, i64* %eptr294826                                               ; store fptr
  %Fld$_37_62 = ptrtoint i64* %cloptr294825 to i64                                   ; closure cast; i64* -> i64
  %cloptr294828 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294829 = getelementptr inbounds i64, i64* %cloptr294828, i64 0                ; &cloptr294828[0]
  %f294830 = ptrtoint void(i64,i64,i64,i64)* @lam294448 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294830, i64* %eptr294829                                               ; store fptr
  %dkJ$_37_62_61 = ptrtoint i64* %cloptr294828 to i64                                ; closure cast; i64* -> i64
  %arg293264 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg293263 = add i64 0, 0                                                          ; quoted ()
  %ZRY$_37append = call i64 @prim_make_45vector(i64 %arg293264, i64 %arg293263)      ; call prim_make_45vector
  %arg293266 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg293265 = add i64 0, 0                                                          ; quoted ()
  %u7c$_37append2 = call i64 @prim_make_45vector(i64 %arg293266, i64 %arg293265)     ; call prim_make_45vector
  %arg293268 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr294831 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294833 = getelementptr inbounds i64, i64* %cloptr294831, i64 1                ; &eptr294833[1]
  store i64 %u7c$_37append2, i64* %eptr294833                                        ; *eptr294833 = %u7c$_37append2
  %eptr294832 = getelementptr inbounds i64, i64* %cloptr294831, i64 0                ; &cloptr294831[0]
  %f294834 = ptrtoint void(i64,i64,i64,i64)* @lam294440 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294834, i64* %eptr294832                                               ; store fptr
  %arg293267 = ptrtoint i64* %cloptr294831 to i64                                    ; closure cast; i64* -> i64
  %Pva$_950 = call i64 @prim_vector_45set_33(i64 %u7c$_37append2, i64 %arg293268, i64 %arg293267); call prim_vector_45set_33
  %arg293288 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr294835 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294837 = getelementptr inbounds i64, i64* %cloptr294835, i64 1                ; &eptr294837[1]
  %eptr294838 = getelementptr inbounds i64, i64* %cloptr294835, i64 2                ; &eptr294838[2]
  store i64 %ZRY$_37append, i64* %eptr294837                                         ; *eptr294837 = %ZRY$_37append
  store i64 %u7c$_37append2, i64* %eptr294838                                        ; *eptr294838 = %u7c$_37append2
  %eptr294836 = getelementptr inbounds i64, i64* %cloptr294835, i64 0                ; &cloptr294835[0]
  %f294839 = ptrtoint void(i64,i64)* @lam294432 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f294839, i64* %eptr294836                                               ; store fptr
  %arg293287 = ptrtoint i64* %cloptr294835 to i64                                    ; closure cast; i64* -> i64
  %Vwp$_951 = call i64 @prim_vector_45set_33(i64 %ZRY$_37append, i64 %arg293288, i64 %arg293287); call prim_vector_45set_33
  %arg293308 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293096 = call i64 @prim_vector_45ref(i64 %ZRY$_37append, i64 %arg293308)   ; call prim_vector_45ref
  %cloptr294840 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294842 = getelementptr inbounds i64, i64* %cloptr294840, i64 1                ; &eptr294842[1]
  %eptr294843 = getelementptr inbounds i64, i64* %cloptr294840, i64 2                ; &eptr294843[2]
  %eptr294844 = getelementptr inbounds i64, i64* %cloptr294840, i64 3                ; &eptr294844[3]
  store i64 %QfF$_37length, i64* %eptr294842                                         ; *eptr294842 = %QfF$_37length
  store i64 %p1e$_37foldl1, i64* %eptr294843                                         ; *eptr294843 = %p1e$_37foldl1
  store i64 %Fld$_37_62, i64* %eptr294844                                            ; *eptr294844 = %Fld$_37_62
  %eptr294841 = getelementptr inbounds i64, i64* %cloptr294840, i64 0                ; &cloptr294840[0]
  %f294845 = ptrtoint void(i64,i64,i64)* @lam294423 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294845, i64* %eptr294841                                               ; store fptr
  %arg293312 = ptrtoint i64* %cloptr294840 to i64                                    ; closure cast; i64* -> i64
  %arg293311 = add i64 0, 0                                                          ; quoted ()
  %cloptr294846 = inttoptr i64 %arg293312 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr294847 = getelementptr inbounds i64, i64* %cloptr294846, i64 0               ; &cloptr294846[0]
  %f294849 = load i64, i64* %i0ptr294847, align 8                                    ; load; *i0ptr294847
  %fptr294848 = inttoptr i64 %f294849 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294848(i64 %arg293312, i64 %arg293311, i64 %retprim293096); tail call
  ret void
}


define void @lam294451(i64 %env294452, i64 %cont293003, i64 %jG0$a, i64 %mw5$b) {
  %a292902 = call i64 @prim__60_61(i64 %jG0$a, i64 %mw5$b)                           ; call prim__60_61
  %retprim293004 = call i64 @prim_not(i64 %a292902)                                  ; call prim_not
  %arg293255 = add i64 0, 0                                                          ; quoted ()
  %cloptr294850 = inttoptr i64 %cont293003 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294851 = getelementptr inbounds i64, i64* %cloptr294850, i64 0               ; &cloptr294850[0]
  %f294853 = load i64, i64* %i0ptr294851, align 8                                    ; load; *i0ptr294851
  %fptr294852 = inttoptr i64 %f294853 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294852(i64 %cont293003, i64 %arg293255, i64 %retprim293004); tail call
  ret void
}


define void @lam294448(i64 %env294449, i64 %cont293005, i64 %H8v$a, i64 %E9Y$b) {
  %a292903 = call i64 @prim__60(i64 %H8v$a, i64 %E9Y$b)                              ; call prim__60
  %retprim293006 = call i64 @prim_not(i64 %a292903)                                  ; call prim_not
  %arg293261 = add i64 0, 0                                                          ; quoted ()
  %cloptr294854 = inttoptr i64 %cont293005 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294855 = getelementptr inbounds i64, i64* %cloptr294854, i64 0               ; &cloptr294854[0]
  %f294857 = load i64, i64* %i0ptr294855, align 8                                    ; load; *i0ptr294855
  %fptr294856 = inttoptr i64 %f294857 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294856(i64 %cont293005, i64 %arg293261, i64 %retprim293006); tail call
  ret void
}


define void @lam294440(i64 %env294441, i64 %cont293089, i64 %EOX$ls0, i64 %MBy$ls1) {
  %envptr294858 = inttoptr i64 %env294441 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294859 = getelementptr inbounds i64, i64* %envptr294858, i64 1              ; &envptr294858[1]
  %u7c$_37append2 = load i64, i64* %envptr294859, align 8                            ; load; *envptr294859
  %a292904 = call i64 @prim_null_63(i64 %EOX$ls0)                                    ; call prim_null_63
  %cmp294860 = icmp eq i64 %a292904, 15                                              ; false?
  br i1 %cmp294860, label %else294862, label %then294861                             ; if

then294861:
  %arg293272 = add i64 0, 0                                                          ; quoted ()
  %cloptr294863 = inttoptr i64 %cont293089 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294864 = getelementptr inbounds i64, i64* %cloptr294863, i64 0               ; &cloptr294863[0]
  %f294866 = load i64, i64* %i0ptr294864, align 8                                    ; load; *i0ptr294864
  %fptr294865 = inttoptr i64 %f294866 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294865(i64 %cont293089, i64 %arg293272, i64 %MBy$ls1); tail call
  ret void

else294862:
  %a292905 = call i64 @prim_car(i64 %EOX$ls0)                                        ; call prim_car
  %arg293275 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292906 = call i64 @prim_vector_45ref(i64 %u7c$_37append2, i64 %arg293275)        ; call prim_vector_45ref
  %a292907 = call i64 @prim_cdr(i64 %EOX$ls0)                                        ; call prim_cdr
  %cloptr294867 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294869 = getelementptr inbounds i64, i64* %cloptr294867, i64 1                ; &eptr294869[1]
  %eptr294870 = getelementptr inbounds i64, i64* %cloptr294867, i64 2                ; &eptr294870[2]
  store i64 %a292905, i64* %eptr294869                                               ; *eptr294869 = %a292905
  store i64 %cont293089, i64* %eptr294870                                            ; *eptr294870 = %cont293089
  %eptr294868 = getelementptr inbounds i64, i64* %cloptr294867, i64 0                ; &cloptr294867[0]
  %f294871 = ptrtoint void(i64,i64,i64)* @lam294437 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294871, i64* %eptr294868                                               ; store fptr
  %arg293280 = ptrtoint i64* %cloptr294867 to i64                                    ; closure cast; i64* -> i64
  %cloptr294872 = inttoptr i64 %a292906 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr294873 = getelementptr inbounds i64, i64* %cloptr294872, i64 0               ; &cloptr294872[0]
  %f294875 = load i64, i64* %i0ptr294873, align 8                                    ; load; *i0ptr294873
  %fptr294874 = inttoptr i64 %f294875 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294874(i64 %a292906, i64 %arg293280, i64 %a292907, i64 %MBy$ls1); tail call
  ret void
}


define void @lam294437(i64 %env294438, i64 %_95293090, i64 %a292908) {
  %envptr294876 = inttoptr i64 %env294438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294877 = getelementptr inbounds i64, i64* %envptr294876, i64 2              ; &envptr294876[2]
  %cont293089 = load i64, i64* %envptr294877, align 8                                ; load; *envptr294877
  %envptr294878 = inttoptr i64 %env294438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294879 = getelementptr inbounds i64, i64* %envptr294878, i64 1              ; &envptr294878[1]
  %a292905 = load i64, i64* %envptr294879, align 8                                   ; load; *envptr294879
  %retprim293091 = call i64 @prim_cons(i64 %a292905, i64 %a292908)                   ; call prim_cons
  %arg293285 = add i64 0, 0                                                          ; quoted ()
  %cloptr294880 = inttoptr i64 %cont293089 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294881 = getelementptr inbounds i64, i64* %cloptr294880, i64 0               ; &cloptr294880[0]
  %f294883 = load i64, i64* %i0ptr294881, align 8                                    ; load; *i0ptr294881
  %fptr294882 = inttoptr i64 %f294883 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294882(i64 %cont293089, i64 %arg293285, i64 %retprim293091); tail call
  ret void
}


define void @lam294432(i64 %env294433, i64 %nhj$xs293093) {
  %envptr294884 = inttoptr i64 %env294433 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294885 = getelementptr inbounds i64, i64* %envptr294884, i64 2              ; &envptr294884[2]
  %u7c$_37append2 = load i64, i64* %envptr294885, align 8                            ; load; *envptr294885
  %envptr294886 = inttoptr i64 %env294433 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294887 = getelementptr inbounds i64, i64* %envptr294886, i64 1              ; &envptr294886[1]
  %ZRY$_37append = load i64, i64* %envptr294887, align 8                             ; load; *envptr294887
  %cont293092 = call i64 @prim_car(i64 %nhj$xs293093)                                ; call prim_car
  %nhj$xs = call i64 @prim_cdr(i64 %nhj$xs293093)                                    ; call prim_cdr
  %a292909 = call i64 @prim_null_63(i64 %nhj$xs)                                     ; call prim_null_63
  %cmp294888 = icmp eq i64 %a292909, 15                                              ; false?
  br i1 %cmp294888, label %else294890, label %then294889                             ; if

then294889:
  %arg293294 = add i64 0, 0                                                          ; quoted ()
  %arg293293 = add i64 0, 0                                                          ; quoted ()
  %cloptr294891 = inttoptr i64 %cont293092 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294892 = getelementptr inbounds i64, i64* %cloptr294891, i64 0               ; &cloptr294891[0]
  %f294894 = load i64, i64* %i0ptr294892, align 8                                    ; load; *i0ptr294892
  %fptr294893 = inttoptr i64 %f294894 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294893(i64 %cont293092, i64 %arg293294, i64 %arg293293); tail call
  ret void

else294890:
  %SxO$hd = call i64 @prim_car(i64 %nhj$xs)                                          ; call prim_car
  %MGC$tl = call i64 @prim_cdr(i64 %nhj$xs)                                          ; call prim_cdr
  %arg293298 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292910 = call i64 @prim_vector_45ref(i64 %ZRY$_37append, i64 %arg293298)         ; call prim_vector_45ref
  %cloptr294895 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294897 = getelementptr inbounds i64, i64* %cloptr294895, i64 1                ; &eptr294897[1]
  %eptr294898 = getelementptr inbounds i64, i64* %cloptr294895, i64 2                ; &eptr294898[2]
  %eptr294899 = getelementptr inbounds i64, i64* %cloptr294895, i64 3                ; &eptr294899[3]
  store i64 %SxO$hd, i64* %eptr294897                                                ; *eptr294897 = %SxO$hd
  store i64 %cont293092, i64* %eptr294898                                            ; *eptr294898 = %cont293092
  store i64 %u7c$_37append2, i64* %eptr294899                                        ; *eptr294899 = %u7c$_37append2
  %eptr294896 = getelementptr inbounds i64, i64* %cloptr294895, i64 0                ; &cloptr294895[0]
  %f294900 = ptrtoint void(i64,i64,i64)* @lam294429 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294900, i64* %eptr294896                                               ; store fptr
  %arg293301 = ptrtoint i64* %cloptr294895 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst293095 = call i64 @prim_cons(i64 %arg293301, i64 %MGC$tl)                ; call prim_cons
  %cloptr294901 = inttoptr i64 %a292910 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr294902 = getelementptr inbounds i64, i64* %cloptr294901, i64 0               ; &cloptr294901[0]
  %f294904 = load i64, i64* %i0ptr294902, align 8                                    ; load; *i0ptr294902
  %fptr294903 = inttoptr i64 %f294904 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294903(i64 %a292910, i64 %cps_45lst293095)          ; tail call
  ret void
}


define void @lam294429(i64 %env294430, i64 %_95293094, i64 %E9p$result1) {
  %envptr294905 = inttoptr i64 %env294430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294906 = getelementptr inbounds i64, i64* %envptr294905, i64 3              ; &envptr294905[3]
  %u7c$_37append2 = load i64, i64* %envptr294906, align 8                            ; load; *envptr294906
  %envptr294907 = inttoptr i64 %env294430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294908 = getelementptr inbounds i64, i64* %envptr294907, i64 2              ; &envptr294907[2]
  %cont293092 = load i64, i64* %envptr294908, align 8                                ; load; *envptr294908
  %envptr294909 = inttoptr i64 %env294430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294910 = getelementptr inbounds i64, i64* %envptr294909, i64 1              ; &envptr294909[1]
  %SxO$hd = load i64, i64* %envptr294910, align 8                                    ; load; *envptr294910
  %arg293302 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292911 = call i64 @prim_vector_45ref(i64 %u7c$_37append2, i64 %arg293302)        ; call prim_vector_45ref
  %cloptr294911 = inttoptr i64 %a292911 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr294912 = getelementptr inbounds i64, i64* %cloptr294911, i64 0               ; &cloptr294911[0]
  %f294914 = load i64, i64* %i0ptr294912, align 8                                    ; load; *i0ptr294912
  %fptr294913 = inttoptr i64 %f294914 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294913(i64 %a292911, i64 %cont293092, i64 %SxO$hd, i64 %E9p$result1); tail call
  ret void
}


define void @lam294423(i64 %env294424, i64 %_95293007, i64 %cie$_37append) {
  %envptr294915 = inttoptr i64 %env294424 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294916 = getelementptr inbounds i64, i64* %envptr294915, i64 3              ; &envptr294915[3]
  %Fld$_37_62 = load i64, i64* %envptr294916, align 8                                ; load; *envptr294916
  %envptr294917 = inttoptr i64 %env294424 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294918 = getelementptr inbounds i64, i64* %envptr294917, i64 2              ; &envptr294917[2]
  %p1e$_37foldl1 = load i64, i64* %envptr294918, align 8                             ; load; *envptr294918
  %envptr294919 = inttoptr i64 %env294424 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294920 = getelementptr inbounds i64, i64* %envptr294919, i64 1              ; &envptr294919[1]
  %QfF$_37length = load i64, i64* %envptr294920, align 8                             ; load; *envptr294920
  %cloptr294921 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294922 = getelementptr inbounds i64, i64* %cloptr294921, i64 0                ; &cloptr294921[0]
  %f294923 = ptrtoint void(i64,i64,i64)* @lam294421 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294923, i64* %eptr294922                                               ; store fptr
  %ohT$_37list_63 = ptrtoint i64* %cloptr294921 to i64                               ; closure cast; i64* -> i64
  %cloptr294924 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294925 = getelementptr inbounds i64, i64* %cloptr294924, i64 0                ; &cloptr294924[0]
  %f294926 = ptrtoint void(i64,i64,i64,i64)* @lam294381 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294926, i64* %eptr294925                                               ; store fptr
  %RpZ$_37drop = ptrtoint i64* %cloptr294924 to i64                                  ; closure cast; i64* -> i64
  %cloptr294927 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294928 = getelementptr inbounds i64, i64* %cloptr294927, i64 0                ; &cloptr294927[0]
  %f294929 = ptrtoint void(i64,i64,i64,i64)* @lam294341 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f294929, i64* %eptr294928                                               ; store fptr
  %ilA$_37memv = ptrtoint i64* %cloptr294927 to i64                                  ; closure cast; i64* -> i64
  %cloptr294930 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr294932 = getelementptr inbounds i64, i64* %cloptr294930, i64 1                ; &eptr294932[1]
  store i64 %p1e$_37foldl1, i64* %eptr294932                                         ; *eptr294932 = %p1e$_37foldl1
  %eptr294931 = getelementptr inbounds i64, i64* %cloptr294930, i64 0                ; &cloptr294930[0]
  %f294933 = ptrtoint void(i64,i64)* @lam294310 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f294933, i64* %eptr294931                                               ; store fptr
  %uLU$_37_47 = ptrtoint i64* %cloptr294930 to i64                                   ; closure cast; i64* -> i64
  %cloptr294934 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294935 = getelementptr inbounds i64, i64* %cloptr294934, i64 0                ; &cloptr294934[0]
  %f294936 = ptrtoint void(i64,i64,i64)* @lam294302 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294936, i64* %eptr294935                                               ; store fptr
  %BrY$_37first = ptrtoint i64* %cloptr294934 to i64                                 ; closure cast; i64* -> i64
  %cloptr294937 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294938 = getelementptr inbounds i64, i64* %cloptr294937, i64 0                ; &cloptr294937[0]
  %f294939 = ptrtoint void(i64,i64,i64)* @lam294299 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294939, i64* %eptr294938                                               ; store fptr
  %QjA$_37second = ptrtoint i64* %cloptr294937 to i64                                ; closure cast; i64* -> i64
  %cloptr294940 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294941 = getelementptr inbounds i64, i64* %cloptr294940, i64 0                ; &cloptr294940[0]
  %f294942 = ptrtoint void(i64,i64,i64)* @lam294296 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294942, i64* %eptr294941                                               ; store fptr
  %ZMn$_37third = ptrtoint i64* %cloptr294940 to i64                                 ; closure cast; i64* -> i64
  %cloptr294943 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294944 = getelementptr inbounds i64, i64* %cloptr294943, i64 0                ; &cloptr294943[0]
  %f294945 = ptrtoint void(i64,i64,i64)* @lam294293 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294945, i64* %eptr294944                                               ; store fptr
  %Gu1$_37fourth = ptrtoint i64* %cloptr294943 to i64                                ; closure cast; i64* -> i64
  %cloptr294946 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294947 = getelementptr inbounds i64, i64* %cloptr294946, i64 0                ; &cloptr294946[0]
  %f294948 = ptrtoint void(i64,i64,i64)* @lam294290 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294948, i64* %eptr294947                                               ; store fptr
  %fsV$promise_63 = ptrtoint i64* %cloptr294946 to i64                               ; closure cast; i64* -> i64
  %cloptr294949 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294950 = getelementptr inbounds i64, i64* %cloptr294949, i64 0                ; &cloptr294949[0]
  %f294951 = ptrtoint void(i64,i64)* @lam294284 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f294951, i64* %eptr294950                                               ; store fptr
  %arg293574 = ptrtoint i64* %cloptr294949 to i64                                    ; closure cast; i64* -> i64
  %cloptr294952 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294954 = getelementptr inbounds i64, i64* %cloptr294952, i64 1                ; &eptr294954[1]
  %eptr294955 = getelementptr inbounds i64, i64* %cloptr294952, i64 2                ; &eptr294955[2]
  %eptr294956 = getelementptr inbounds i64, i64* %cloptr294952, i64 3                ; &eptr294956[3]
  store i64 %QfF$_37length, i64* %eptr294954                                         ; *eptr294954 = %QfF$_37length
  store i64 %Fld$_37_62, i64* %eptr294955                                            ; *eptr294955 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr294956                                           ; *eptr294956 = %RpZ$_37drop
  %eptr294953 = getelementptr inbounds i64, i64* %cloptr294952, i64 0                ; &cloptr294952[0]
  %f294957 = ptrtoint void(i64,i64,i64)* @lam294281 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294957, i64* %eptr294953                                               ; store fptr
  %arg293573 = ptrtoint i64* %cloptr294952 to i64                                    ; closure cast; i64* -> i64
  %rva294034 = add i64 0, 0                                                          ; quoted ()
  %rva294033 = call i64 @prim_cons(i64 %arg293573, i64 %rva294034)                   ; call prim_cons
  %cloptr294958 = inttoptr i64 %arg293574 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr294959 = getelementptr inbounds i64, i64* %cloptr294958, i64 0               ; &cloptr294958[0]
  %f294961 = load i64, i64* %i0ptr294959, align 8                                    ; load; *i0ptr294959
  %fptr294960 = inttoptr i64 %f294961 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294960(i64 %arg293574, i64 %rva294033)              ; tail call
  ret void
}


define void @lam294421(i64 %env294422, i64 %cont293008, i64 %zF6$a) {
  %arg293314 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %eYW$a = call i64 @prim_make_45vector(i64 %arg293314, i64 %zF6$a)                  ; call prim_make_45vector
  %cloptr294962 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr294963 = getelementptr inbounds i64, i64* %cloptr294962, i64 0                ; &cloptr294962[0]
  %f294964 = ptrtoint void(i64,i64,i64)* @lam294418 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294964, i64* %eptr294963                                               ; store fptr
  %arg293317 = ptrtoint i64* %cloptr294962 to i64                                    ; closure cast; i64* -> i64
  %cloptr294965 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294967 = getelementptr inbounds i64, i64* %cloptr294965, i64 1                ; &eptr294967[1]
  %eptr294968 = getelementptr inbounds i64, i64* %cloptr294965, i64 2                ; &eptr294968[2]
  store i64 %eYW$a, i64* %eptr294967                                                 ; *eptr294967 = %eYW$a
  store i64 %cont293008, i64* %eptr294968                                            ; *eptr294968 = %cont293008
  %eptr294966 = getelementptr inbounds i64, i64* %cloptr294965, i64 0                ; &cloptr294965[0]
  %f294969 = ptrtoint void(i64,i64,i64)* @lam294415 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294969, i64* %eptr294966                                               ; store fptr
  %arg293316 = ptrtoint i64* %cloptr294965 to i64                                    ; closure cast; i64* -> i64
  %cloptr294970 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr294972 = getelementptr inbounds i64, i64* %cloptr294970, i64 1                ; &eptr294972[1]
  %eptr294973 = getelementptr inbounds i64, i64* %cloptr294970, i64 2                ; &eptr294973[2]
  store i64 %eYW$a, i64* %eptr294972                                                 ; *eptr294972 = %eYW$a
  store i64 %cont293008, i64* %eptr294973                                            ; *eptr294973 = %cont293008
  %eptr294971 = getelementptr inbounds i64, i64* %cloptr294970, i64 0                ; &cloptr294970[0]
  %f294974 = ptrtoint void(i64,i64,i64)* @lam294398 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f294974, i64* %eptr294971                                               ; store fptr
  %arg293315 = ptrtoint i64* %cloptr294970 to i64                                    ; closure cast; i64* -> i64
  %cloptr294975 = inttoptr i64 %arg293317 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr294976 = getelementptr inbounds i64, i64* %cloptr294975, i64 0               ; &cloptr294975[0]
  %f294978 = load i64, i64* %i0ptr294976, align 8                                    ; load; *i0ptr294976
  %fptr294977 = inttoptr i64 %f294978 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294977(i64 %arg293317, i64 %arg293316, i64 %arg293315); tail call
  ret void
}


define void @lam294418(i64 %env294419, i64 %cont293014, i64 %i7c$k) {
  %arg293319 = add i64 0, 0                                                          ; quoted ()
  %cloptr294979 = inttoptr i64 %cont293014 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294980 = getelementptr inbounds i64, i64* %cloptr294979, i64 0               ; &cloptr294979[0]
  %f294982 = load i64, i64* %i0ptr294980, align 8                                    ; load; *i0ptr294980
  %fptr294981 = inttoptr i64 %f294982 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294981(i64 %cont293014, i64 %arg293319, i64 %i7c$k) ; tail call
  ret void
}


define void @lam294415(i64 %env294416, i64 %_95293009, i64 %JF4$cc) {
  %envptr294983 = inttoptr i64 %env294416 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294984 = getelementptr inbounds i64, i64* %envptr294983, i64 2              ; &envptr294983[2]
  %cont293008 = load i64, i64* %envptr294984, align 8                                ; load; *envptr294984
  %envptr294985 = inttoptr i64 %env294416 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr294986 = getelementptr inbounds i64, i64* %envptr294985, i64 1              ; &envptr294985[1]
  %eYW$a = load i64, i64* %envptr294986, align 8                                     ; load; *envptr294986
  %arg293321 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292912 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293321)                 ; call prim_vector_45ref
  %a292913 = call i64 @prim_null_63(i64 %a292912)                                    ; call prim_null_63
  %cmp294987 = icmp eq i64 %a292913, 15                                              ; false?
  br i1 %cmp294987, label %else294989, label %then294988                             ; if

then294988:
  %arg293325 = add i64 0, 0                                                          ; quoted ()
  %arg293324 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr294990 = inttoptr i64 %cont293008 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr294991 = getelementptr inbounds i64, i64* %cloptr294990, i64 0               ; &cloptr294990[0]
  %f294993 = load i64, i64* %i0ptr294991, align 8                                    ; load; *i0ptr294991
  %fptr294992 = inttoptr i64 %f294993 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr294992(i64 %cont293008, i64 %arg293325, i64 %arg293324); tail call
  ret void

else294989:
  %arg293327 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292914 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293327)                 ; call prim_vector_45ref
  %a292915 = call i64 @prim_cons_63(i64 %a292914)                                    ; call prim_cons_63
  %cmp294994 = icmp eq i64 %a292915, 15                                              ; false?
  br i1 %cmp294994, label %else294996, label %then294995                             ; if

then294995:
  %arg293330 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292916 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293330)                 ; call prim_vector_45ref
  %retprim293013 = call i64 @prim_cdr(i64 %a292916)                                  ; call prim_cdr
  %cloptr294997 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr294999 = getelementptr inbounds i64, i64* %cloptr294997, i64 1                ; &eptr294999[1]
  %eptr295000 = getelementptr inbounds i64, i64* %cloptr294997, i64 2                ; &eptr295000[2]
  %eptr295001 = getelementptr inbounds i64, i64* %cloptr294997, i64 3                ; &eptr295001[3]
  store i64 %JF4$cc, i64* %eptr294999                                                ; *eptr294999 = %JF4$cc
  store i64 %eYW$a, i64* %eptr295000                                                 ; *eptr295000 = %eYW$a
  store i64 %cont293008, i64* %eptr295001                                            ; *eptr295001 = %cont293008
  %eptr294998 = getelementptr inbounds i64, i64* %cloptr294997, i64 0                ; &cloptr294997[0]
  %f295002 = ptrtoint void(i64,i64,i64)* @lam294408 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295002, i64* %eptr294998                                               ; store fptr
  %arg293335 = ptrtoint i64* %cloptr294997 to i64                                    ; closure cast; i64* -> i64
  %arg293334 = add i64 0, 0                                                          ; quoted ()
  %cloptr295003 = inttoptr i64 %arg293335 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295004 = getelementptr inbounds i64, i64* %cloptr295003, i64 0               ; &cloptr295003[0]
  %f295006 = load i64, i64* %i0ptr295004, align 8                                    ; load; *i0ptr295004
  %fptr295005 = inttoptr i64 %f295006 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295005(i64 %arg293335, i64 %arg293334, i64 %retprim293013); tail call
  ret void

else294996:
  %arg293349 = add i64 0, 0                                                          ; quoted ()
  %arg293348 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr295007 = inttoptr i64 %cont293008 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295008 = getelementptr inbounds i64, i64* %cloptr295007, i64 0               ; &cloptr295007[0]
  %f295010 = load i64, i64* %i0ptr295008, align 8                                    ; load; *i0ptr295008
  %fptr295009 = inttoptr i64 %f295010 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295009(i64 %cont293008, i64 %arg293349, i64 %arg293348); tail call
  ret void
}


define void @lam294408(i64 %env294409, i64 %_95293010, i64 %fG7$b) {
  %envptr295011 = inttoptr i64 %env294409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295012 = getelementptr inbounds i64, i64* %envptr295011, i64 3              ; &envptr295011[3]
  %cont293008 = load i64, i64* %envptr295012, align 8                                ; load; *envptr295012
  %envptr295013 = inttoptr i64 %env294409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295014 = getelementptr inbounds i64, i64* %envptr295013, i64 2              ; &envptr295013[2]
  %eYW$a = load i64, i64* %envptr295014, align 8                                     ; load; *envptr295014
  %envptr295015 = inttoptr i64 %env294409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295016 = getelementptr inbounds i64, i64* %envptr295015, i64 1              ; &envptr295015[1]
  %JF4$cc = load i64, i64* %envptr295016, align 8                                    ; load; *envptr295016
  %arg293336 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292917 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293336)                 ; call prim_vector_45ref
  %a292918 = call i64 @prim_cdr(i64 %a292917)                                        ; call prim_cdr
  %arg293340 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293012 = call i64 @prim_vector_45set_33(i64 %eYW$a, i64 %arg293340, i64 %a292918); call prim_vector_45set_33
  %cloptr295017 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295019 = getelementptr inbounds i64, i64* %cloptr295017, i64 1                ; &eptr295019[1]
  %eptr295020 = getelementptr inbounds i64, i64* %cloptr295017, i64 2                ; &eptr295020[2]
  store i64 %JF4$cc, i64* %eptr295019                                                ; *eptr295019 = %JF4$cc
  store i64 %cont293008, i64* %eptr295020                                            ; *eptr295020 = %cont293008
  %eptr295018 = getelementptr inbounds i64, i64* %cloptr295017, i64 0                ; &cloptr295017[0]
  %f295021 = ptrtoint void(i64,i64,i64)* @lam294404 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295021, i64* %eptr295018                                               ; store fptr
  %arg293344 = ptrtoint i64* %cloptr295017 to i64                                    ; closure cast; i64* -> i64
  %arg293343 = add i64 0, 0                                                          ; quoted ()
  %cloptr295022 = inttoptr i64 %arg293344 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295023 = getelementptr inbounds i64, i64* %cloptr295022, i64 0               ; &cloptr295022[0]
  %f295025 = load i64, i64* %i0ptr295023, align 8                                    ; load; *i0ptr295023
  %fptr295024 = inttoptr i64 %f295025 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295024(i64 %arg293344, i64 %arg293343, i64 %retprim293012); tail call
  ret void
}


define void @lam294404(i64 %env294405, i64 %_95293011, i64 %gn3$_950) {
  %envptr295026 = inttoptr i64 %env294405 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295027 = getelementptr inbounds i64, i64* %envptr295026, i64 2              ; &envptr295026[2]
  %cont293008 = load i64, i64* %envptr295027, align 8                                ; load; *envptr295027
  %envptr295028 = inttoptr i64 %env294405 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295029 = getelementptr inbounds i64, i64* %envptr295028, i64 1              ; &envptr295028[1]
  %JF4$cc = load i64, i64* %envptr295029, align 8                                    ; load; *envptr295029
  %cloptr295030 = inttoptr i64 %JF4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295031 = getelementptr inbounds i64, i64* %cloptr295030, i64 0               ; &cloptr295030[0]
  %f295033 = load i64, i64* %i0ptr295031, align 8                                    ; load; *i0ptr295031
  %fptr295032 = inttoptr i64 %f295033 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295032(i64 %JF4$cc, i64 %cont293008, i64 %JF4$cc)   ; tail call
  ret void
}


define void @lam294398(i64 %env294399, i64 %_95293009, i64 %JF4$cc) {
  %envptr295034 = inttoptr i64 %env294399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295035 = getelementptr inbounds i64, i64* %envptr295034, i64 2              ; &envptr295034[2]
  %cont293008 = load i64, i64* %envptr295035, align 8                                ; load; *envptr295035
  %envptr295036 = inttoptr i64 %env294399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295037 = getelementptr inbounds i64, i64* %envptr295036, i64 1              ; &envptr295036[1]
  %eYW$a = load i64, i64* %envptr295037, align 8                                     ; load; *envptr295037
  %arg293351 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292912 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293351)                 ; call prim_vector_45ref
  %a292913 = call i64 @prim_null_63(i64 %a292912)                                    ; call prim_null_63
  %cmp295038 = icmp eq i64 %a292913, 15                                              ; false?
  br i1 %cmp295038, label %else295040, label %then295039                             ; if

then295039:
  %arg293355 = add i64 0, 0                                                          ; quoted ()
  %arg293354 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr295041 = inttoptr i64 %cont293008 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295042 = getelementptr inbounds i64, i64* %cloptr295041, i64 0               ; &cloptr295041[0]
  %f295044 = load i64, i64* %i0ptr295042, align 8                                    ; load; *i0ptr295042
  %fptr295043 = inttoptr i64 %f295044 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295043(i64 %cont293008, i64 %arg293355, i64 %arg293354); tail call
  ret void

else295040:
  %arg293357 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292914 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293357)                 ; call prim_vector_45ref
  %a292915 = call i64 @prim_cons_63(i64 %a292914)                                    ; call prim_cons_63
  %cmp295045 = icmp eq i64 %a292915, 15                                              ; false?
  br i1 %cmp295045, label %else295047, label %then295046                             ; if

then295046:
  %arg293360 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292916 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293360)                 ; call prim_vector_45ref
  %retprim293013 = call i64 @prim_cdr(i64 %a292916)                                  ; call prim_cdr
  %cloptr295048 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295050 = getelementptr inbounds i64, i64* %cloptr295048, i64 1                ; &eptr295050[1]
  %eptr295051 = getelementptr inbounds i64, i64* %cloptr295048, i64 2                ; &eptr295051[2]
  %eptr295052 = getelementptr inbounds i64, i64* %cloptr295048, i64 3                ; &eptr295052[3]
  store i64 %JF4$cc, i64* %eptr295050                                                ; *eptr295050 = %JF4$cc
  store i64 %eYW$a, i64* %eptr295051                                                 ; *eptr295051 = %eYW$a
  store i64 %cont293008, i64* %eptr295052                                            ; *eptr295052 = %cont293008
  %eptr295049 = getelementptr inbounds i64, i64* %cloptr295048, i64 0                ; &cloptr295048[0]
  %f295053 = ptrtoint void(i64,i64,i64)* @lam294391 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295053, i64* %eptr295049                                               ; store fptr
  %arg293365 = ptrtoint i64* %cloptr295048 to i64                                    ; closure cast; i64* -> i64
  %arg293364 = add i64 0, 0                                                          ; quoted ()
  %cloptr295054 = inttoptr i64 %arg293365 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295055 = getelementptr inbounds i64, i64* %cloptr295054, i64 0               ; &cloptr295054[0]
  %f295057 = load i64, i64* %i0ptr295055, align 8                                    ; load; *i0ptr295055
  %fptr295056 = inttoptr i64 %f295057 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295056(i64 %arg293365, i64 %arg293364, i64 %retprim293013); tail call
  ret void

else295047:
  %arg293379 = add i64 0, 0                                                          ; quoted ()
  %arg293378 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr295058 = inttoptr i64 %cont293008 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295059 = getelementptr inbounds i64, i64* %cloptr295058, i64 0               ; &cloptr295058[0]
  %f295061 = load i64, i64* %i0ptr295059, align 8                                    ; load; *i0ptr295059
  %fptr295060 = inttoptr i64 %f295061 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295060(i64 %cont293008, i64 %arg293379, i64 %arg293378); tail call
  ret void
}


define void @lam294391(i64 %env294392, i64 %_95293010, i64 %fG7$b) {
  %envptr295062 = inttoptr i64 %env294392 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295063 = getelementptr inbounds i64, i64* %envptr295062, i64 3              ; &envptr295062[3]
  %cont293008 = load i64, i64* %envptr295063, align 8                                ; load; *envptr295063
  %envptr295064 = inttoptr i64 %env294392 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295065 = getelementptr inbounds i64, i64* %envptr295064, i64 2              ; &envptr295064[2]
  %eYW$a = load i64, i64* %envptr295065, align 8                                     ; load; *envptr295065
  %envptr295066 = inttoptr i64 %env294392 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295067 = getelementptr inbounds i64, i64* %envptr295066, i64 1              ; &envptr295066[1]
  %JF4$cc = load i64, i64* %envptr295067, align 8                                    ; load; *envptr295067
  %arg293366 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292917 = call i64 @prim_vector_45ref(i64 %eYW$a, i64 %arg293366)                 ; call prim_vector_45ref
  %a292918 = call i64 @prim_cdr(i64 %a292917)                                        ; call prim_cdr
  %arg293370 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293012 = call i64 @prim_vector_45set_33(i64 %eYW$a, i64 %arg293370, i64 %a292918); call prim_vector_45set_33
  %cloptr295068 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295070 = getelementptr inbounds i64, i64* %cloptr295068, i64 1                ; &eptr295070[1]
  %eptr295071 = getelementptr inbounds i64, i64* %cloptr295068, i64 2                ; &eptr295071[2]
  store i64 %JF4$cc, i64* %eptr295070                                                ; *eptr295070 = %JF4$cc
  store i64 %cont293008, i64* %eptr295071                                            ; *eptr295071 = %cont293008
  %eptr295069 = getelementptr inbounds i64, i64* %cloptr295068, i64 0                ; &cloptr295068[0]
  %f295072 = ptrtoint void(i64,i64,i64)* @lam294387 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295072, i64* %eptr295069                                               ; store fptr
  %arg293374 = ptrtoint i64* %cloptr295068 to i64                                    ; closure cast; i64* -> i64
  %arg293373 = add i64 0, 0                                                          ; quoted ()
  %cloptr295073 = inttoptr i64 %arg293374 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295074 = getelementptr inbounds i64, i64* %cloptr295073, i64 0               ; &cloptr295073[0]
  %f295076 = load i64, i64* %i0ptr295074, align 8                                    ; load; *i0ptr295074
  %fptr295075 = inttoptr i64 %f295076 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295075(i64 %arg293374, i64 %arg293373, i64 %retprim293012); tail call
  ret void
}


define void @lam294387(i64 %env294388, i64 %_95293011, i64 %gn3$_950) {
  %envptr295077 = inttoptr i64 %env294388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295078 = getelementptr inbounds i64, i64* %envptr295077, i64 2              ; &envptr295077[2]
  %cont293008 = load i64, i64* %envptr295078, align 8                                ; load; *envptr295078
  %envptr295079 = inttoptr i64 %env294388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295080 = getelementptr inbounds i64, i64* %envptr295079, i64 1              ; &envptr295079[1]
  %JF4$cc = load i64, i64* %envptr295080, align 8                                    ; load; *envptr295080
  %cloptr295081 = inttoptr i64 %JF4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295082 = getelementptr inbounds i64, i64* %cloptr295081, i64 0               ; &cloptr295081[0]
  %f295084 = load i64, i64* %i0ptr295082, align 8                                    ; load; *i0ptr295082
  %fptr295083 = inttoptr i64 %f295084 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295083(i64 %JF4$cc, i64 %cont293008, i64 %JF4$cc)   ; tail call
  ret void
}


define void @lam294381(i64 %env294382, i64 %cont293015, i64 %Xad$lst, i64 %OsV$n) {
  %arg293382 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %XdD$lst = call i64 @prim_make_45vector(i64 %arg293382, i64 %Xad$lst)              ; call prim_make_45vector
  %arg293384 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %QjC$n = call i64 @prim_make_45vector(i64 %arg293384, i64 %OsV$n)                  ; call prim_make_45vector
  %cloptr295085 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295086 = getelementptr inbounds i64, i64* %cloptr295085, i64 0                ; &cloptr295085[0]
  %f295087 = ptrtoint void(i64,i64,i64)* @lam294377 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295087, i64* %eptr295086                                               ; store fptr
  %arg293387 = ptrtoint i64* %cloptr295085 to i64                                    ; closure cast; i64* -> i64
  %cloptr295088 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295090 = getelementptr inbounds i64, i64* %cloptr295088, i64 1                ; &eptr295090[1]
  %eptr295091 = getelementptr inbounds i64, i64* %cloptr295088, i64 2                ; &eptr295091[2]
  %eptr295092 = getelementptr inbounds i64, i64* %cloptr295088, i64 3                ; &eptr295092[3]
  store i64 %cont293015, i64* %eptr295090                                            ; *eptr295090 = %cont293015
  store i64 %QjC$n, i64* %eptr295091                                                 ; *eptr295091 = %QjC$n
  store i64 %XdD$lst, i64* %eptr295092                                               ; *eptr295092 = %XdD$lst
  %eptr295089 = getelementptr inbounds i64, i64* %cloptr295088, i64 0                ; &cloptr295088[0]
  %f295093 = ptrtoint void(i64,i64,i64)* @lam294375 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295093, i64* %eptr295089                                               ; store fptr
  %arg293386 = ptrtoint i64* %cloptr295088 to i64                                    ; closure cast; i64* -> i64
  %cloptr295094 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295096 = getelementptr inbounds i64, i64* %cloptr295094, i64 1                ; &eptr295096[1]
  %eptr295097 = getelementptr inbounds i64, i64* %cloptr295094, i64 2                ; &eptr295097[2]
  %eptr295098 = getelementptr inbounds i64, i64* %cloptr295094, i64 3                ; &eptr295098[3]
  store i64 %cont293015, i64* %eptr295096                                            ; *eptr295096 = %cont293015
  store i64 %QjC$n, i64* %eptr295097                                                 ; *eptr295097 = %QjC$n
  store i64 %XdD$lst, i64* %eptr295098                                               ; *eptr295098 = %XdD$lst
  %eptr295095 = getelementptr inbounds i64, i64* %cloptr295094, i64 0                ; &cloptr295094[0]
  %f295099 = ptrtoint void(i64,i64,i64)* @lam294358 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295099, i64* %eptr295095                                               ; store fptr
  %arg293385 = ptrtoint i64* %cloptr295094 to i64                                    ; closure cast; i64* -> i64
  %cloptr295100 = inttoptr i64 %arg293387 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295101 = getelementptr inbounds i64, i64* %cloptr295100, i64 0               ; &cloptr295100[0]
  %f295103 = load i64, i64* %i0ptr295101, align 8                                    ; load; *i0ptr295101
  %fptr295102 = inttoptr i64 %f295103 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295102(i64 %arg293387, i64 %arg293386, i64 %arg293385); tail call
  ret void
}


define void @lam294377(i64 %env294378, i64 %cont293022, i64 %PEI$u) {
  %cloptr295104 = inttoptr i64 %PEI$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr295105 = getelementptr inbounds i64, i64* %cloptr295104, i64 0               ; &cloptr295104[0]
  %f295107 = load i64, i64* %i0ptr295105, align 8                                    ; load; *i0ptr295105
  %fptr295106 = inttoptr i64 %f295107 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295106(i64 %PEI$u, i64 %cont293022, i64 %PEI$u)     ; tail call
  ret void
}


define void @lam294375(i64 %env294376, i64 %_95293016, i64 %uxA$cc) {
  %envptr295108 = inttoptr i64 %env294376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295109 = getelementptr inbounds i64, i64* %envptr295108, i64 3              ; &envptr295108[3]
  %XdD$lst = load i64, i64* %envptr295109, align 8                                   ; load; *envptr295109
  %envptr295110 = inttoptr i64 %env294376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295111 = getelementptr inbounds i64, i64* %envptr295110, i64 2              ; &envptr295110[2]
  %QjC$n = load i64, i64* %envptr295111, align 8                                     ; load; *envptr295111
  %envptr295112 = inttoptr i64 %env294376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295113 = getelementptr inbounds i64, i64* %envptr295112, i64 1              ; &envptr295112[1]
  %cont293015 = load i64, i64* %envptr295113, align 8                                ; load; *envptr295113
  %arg293391 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292919 = call i64 @prim_vector_45ref(i64 %QjC$n, i64 %arg293391)                 ; call prim_vector_45ref
  %arg293394 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292920 = call i64 @prim__61(i64 %arg293394, i64 %a292919)                        ; call prim__61
  %cmp295114 = icmp eq i64 %a292920, 15                                              ; false?
  br i1 %cmp295114, label %else295116, label %then295115                             ; if

then295115:
  %arg293395 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293017 = call i64 @prim_vector_45ref(i64 %XdD$lst, i64 %arg293395)         ; call prim_vector_45ref
  %arg293398 = add i64 0, 0                                                          ; quoted ()
  %cloptr295117 = inttoptr i64 %cont293015 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295118 = getelementptr inbounds i64, i64* %cloptr295117, i64 0               ; &cloptr295117[0]
  %f295120 = load i64, i64* %i0ptr295118, align 8                                    ; load; *i0ptr295118
  %fptr295119 = inttoptr i64 %f295120 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295119(i64 %cont293015, i64 %arg293398, i64 %retprim293017); tail call
  ret void

else295116:
  %arg293400 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292921 = call i64 @prim_vector_45ref(i64 %XdD$lst, i64 %arg293400)               ; call prim_vector_45ref
  %a292922 = call i64 @prim_cdr(i64 %a292921)                                        ; call prim_cdr
  %arg293404 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293021 = call i64 @prim_vector_45set_33(i64 %XdD$lst, i64 %arg293404, i64 %a292922); call prim_vector_45set_33
  %cloptr295121 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295123 = getelementptr inbounds i64, i64* %cloptr295121, i64 1                ; &eptr295123[1]
  %eptr295124 = getelementptr inbounds i64, i64* %cloptr295121, i64 2                ; &eptr295124[2]
  %eptr295125 = getelementptr inbounds i64, i64* %cloptr295121, i64 3                ; &eptr295125[3]
  store i64 %uxA$cc, i64* %eptr295123                                                ; *eptr295123 = %uxA$cc
  store i64 %cont293015, i64* %eptr295124                                            ; *eptr295124 = %cont293015
  store i64 %QjC$n, i64* %eptr295125                                                 ; *eptr295125 = %QjC$n
  %eptr295122 = getelementptr inbounds i64, i64* %cloptr295121, i64 0                ; &cloptr295121[0]
  %f295126 = ptrtoint void(i64,i64,i64)* @lam294369 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295126, i64* %eptr295122                                               ; store fptr
  %arg293408 = ptrtoint i64* %cloptr295121 to i64                                    ; closure cast; i64* -> i64
  %arg293407 = add i64 0, 0                                                          ; quoted ()
  %cloptr295127 = inttoptr i64 %arg293408 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295128 = getelementptr inbounds i64, i64* %cloptr295127, i64 0               ; &cloptr295127[0]
  %f295130 = load i64, i64* %i0ptr295128, align 8                                    ; load; *i0ptr295128
  %fptr295129 = inttoptr i64 %f295130 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295129(i64 %arg293408, i64 %arg293407, i64 %retprim293021); tail call
  ret void
}


define void @lam294369(i64 %env294370, i64 %_95293018, i64 %irL$_950) {
  %envptr295131 = inttoptr i64 %env294370 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295132 = getelementptr inbounds i64, i64* %envptr295131, i64 3              ; &envptr295131[3]
  %QjC$n = load i64, i64* %envptr295132, align 8                                     ; load; *envptr295132
  %envptr295133 = inttoptr i64 %env294370 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295134 = getelementptr inbounds i64, i64* %envptr295133, i64 2              ; &envptr295133[2]
  %cont293015 = load i64, i64* %envptr295134, align 8                                ; load; *envptr295134
  %envptr295135 = inttoptr i64 %env294370 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295136 = getelementptr inbounds i64, i64* %envptr295135, i64 1              ; &envptr295135[1]
  %uxA$cc = load i64, i64* %envptr295136, align 8                                    ; load; *envptr295136
  %arg293409 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292923 = call i64 @prim_vector_45ref(i64 %QjC$n, i64 %arg293409)                 ; call prim_vector_45ref
  %arg293411 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a292924 = call i64 @prim__45(i64 %a292923, i64 %arg293411)                        ; call prim__45
  %arg293414 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293020 = call i64 @prim_vector_45set_33(i64 %QjC$n, i64 %arg293414, i64 %a292924); call prim_vector_45set_33
  %cloptr295137 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295139 = getelementptr inbounds i64, i64* %cloptr295137, i64 1                ; &eptr295139[1]
  %eptr295140 = getelementptr inbounds i64, i64* %cloptr295137, i64 2                ; &eptr295140[2]
  store i64 %uxA$cc, i64* %eptr295139                                                ; *eptr295139 = %uxA$cc
  store i64 %cont293015, i64* %eptr295140                                            ; *eptr295140 = %cont293015
  %eptr295138 = getelementptr inbounds i64, i64* %cloptr295137, i64 0                ; &cloptr295137[0]
  %f295141 = ptrtoint void(i64,i64,i64)* @lam294364 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295141, i64* %eptr295138                                               ; store fptr
  %arg293418 = ptrtoint i64* %cloptr295137 to i64                                    ; closure cast; i64* -> i64
  %arg293417 = add i64 0, 0                                                          ; quoted ()
  %cloptr295142 = inttoptr i64 %arg293418 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295143 = getelementptr inbounds i64, i64* %cloptr295142, i64 0               ; &cloptr295142[0]
  %f295145 = load i64, i64* %i0ptr295143, align 8                                    ; load; *i0ptr295143
  %fptr295144 = inttoptr i64 %f295145 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295144(i64 %arg293418, i64 %arg293417, i64 %retprim293020); tail call
  ret void
}


define void @lam294364(i64 %env294365, i64 %_95293019, i64 %ixf$_951) {
  %envptr295146 = inttoptr i64 %env294365 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295147 = getelementptr inbounds i64, i64* %envptr295146, i64 2              ; &envptr295146[2]
  %cont293015 = load i64, i64* %envptr295147, align 8                                ; load; *envptr295147
  %envptr295148 = inttoptr i64 %env294365 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295149 = getelementptr inbounds i64, i64* %envptr295148, i64 1              ; &envptr295148[1]
  %uxA$cc = load i64, i64* %envptr295149, align 8                                    ; load; *envptr295149
  %cloptr295150 = inttoptr i64 %uxA$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295151 = getelementptr inbounds i64, i64* %cloptr295150, i64 0               ; &cloptr295150[0]
  %f295153 = load i64, i64* %i0ptr295151, align 8                                    ; load; *i0ptr295151
  %fptr295152 = inttoptr i64 %f295153 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295152(i64 %uxA$cc, i64 %cont293015, i64 %uxA$cc)   ; tail call
  ret void
}


define void @lam294358(i64 %env294359, i64 %_95293016, i64 %uxA$cc) {
  %envptr295154 = inttoptr i64 %env294359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295155 = getelementptr inbounds i64, i64* %envptr295154, i64 3              ; &envptr295154[3]
  %XdD$lst = load i64, i64* %envptr295155, align 8                                   ; load; *envptr295155
  %envptr295156 = inttoptr i64 %env294359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295157 = getelementptr inbounds i64, i64* %envptr295156, i64 2              ; &envptr295156[2]
  %QjC$n = load i64, i64* %envptr295157, align 8                                     ; load; *envptr295157
  %envptr295158 = inttoptr i64 %env294359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295159 = getelementptr inbounds i64, i64* %envptr295158, i64 1              ; &envptr295158[1]
  %cont293015 = load i64, i64* %envptr295159, align 8                                ; load; *envptr295159
  %arg293422 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292919 = call i64 @prim_vector_45ref(i64 %QjC$n, i64 %arg293422)                 ; call prim_vector_45ref
  %arg293425 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292920 = call i64 @prim__61(i64 %arg293425, i64 %a292919)                        ; call prim__61
  %cmp295160 = icmp eq i64 %a292920, 15                                              ; false?
  br i1 %cmp295160, label %else295162, label %then295161                             ; if

then295161:
  %arg293426 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293017 = call i64 @prim_vector_45ref(i64 %XdD$lst, i64 %arg293426)         ; call prim_vector_45ref
  %arg293429 = add i64 0, 0                                                          ; quoted ()
  %cloptr295163 = inttoptr i64 %cont293015 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295164 = getelementptr inbounds i64, i64* %cloptr295163, i64 0               ; &cloptr295163[0]
  %f295166 = load i64, i64* %i0ptr295164, align 8                                    ; load; *i0ptr295164
  %fptr295165 = inttoptr i64 %f295166 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295165(i64 %cont293015, i64 %arg293429, i64 %retprim293017); tail call
  ret void

else295162:
  %arg293431 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292921 = call i64 @prim_vector_45ref(i64 %XdD$lst, i64 %arg293431)               ; call prim_vector_45ref
  %a292922 = call i64 @prim_cdr(i64 %a292921)                                        ; call prim_cdr
  %arg293435 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293021 = call i64 @prim_vector_45set_33(i64 %XdD$lst, i64 %arg293435, i64 %a292922); call prim_vector_45set_33
  %cloptr295167 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295169 = getelementptr inbounds i64, i64* %cloptr295167, i64 1                ; &eptr295169[1]
  %eptr295170 = getelementptr inbounds i64, i64* %cloptr295167, i64 2                ; &eptr295170[2]
  %eptr295171 = getelementptr inbounds i64, i64* %cloptr295167, i64 3                ; &eptr295171[3]
  store i64 %uxA$cc, i64* %eptr295169                                                ; *eptr295169 = %uxA$cc
  store i64 %cont293015, i64* %eptr295170                                            ; *eptr295170 = %cont293015
  store i64 %QjC$n, i64* %eptr295171                                                 ; *eptr295171 = %QjC$n
  %eptr295168 = getelementptr inbounds i64, i64* %cloptr295167, i64 0                ; &cloptr295167[0]
  %f295172 = ptrtoint void(i64,i64,i64)* @lam294352 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295172, i64* %eptr295168                                               ; store fptr
  %arg293439 = ptrtoint i64* %cloptr295167 to i64                                    ; closure cast; i64* -> i64
  %arg293438 = add i64 0, 0                                                          ; quoted ()
  %cloptr295173 = inttoptr i64 %arg293439 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295174 = getelementptr inbounds i64, i64* %cloptr295173, i64 0               ; &cloptr295173[0]
  %f295176 = load i64, i64* %i0ptr295174, align 8                                    ; load; *i0ptr295174
  %fptr295175 = inttoptr i64 %f295176 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295175(i64 %arg293439, i64 %arg293438, i64 %retprim293021); tail call
  ret void
}


define void @lam294352(i64 %env294353, i64 %_95293018, i64 %irL$_950) {
  %envptr295177 = inttoptr i64 %env294353 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295178 = getelementptr inbounds i64, i64* %envptr295177, i64 3              ; &envptr295177[3]
  %QjC$n = load i64, i64* %envptr295178, align 8                                     ; load; *envptr295178
  %envptr295179 = inttoptr i64 %env294353 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295180 = getelementptr inbounds i64, i64* %envptr295179, i64 2              ; &envptr295179[2]
  %cont293015 = load i64, i64* %envptr295180, align 8                                ; load; *envptr295180
  %envptr295181 = inttoptr i64 %env294353 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295182 = getelementptr inbounds i64, i64* %envptr295181, i64 1              ; &envptr295181[1]
  %uxA$cc = load i64, i64* %envptr295182, align 8                                    ; load; *envptr295182
  %arg293440 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292923 = call i64 @prim_vector_45ref(i64 %QjC$n, i64 %arg293440)                 ; call prim_vector_45ref
  %arg293442 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a292924 = call i64 @prim__45(i64 %a292923, i64 %arg293442)                        ; call prim__45
  %arg293445 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293020 = call i64 @prim_vector_45set_33(i64 %QjC$n, i64 %arg293445, i64 %a292924); call prim_vector_45set_33
  %cloptr295183 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295185 = getelementptr inbounds i64, i64* %cloptr295183, i64 1                ; &eptr295185[1]
  %eptr295186 = getelementptr inbounds i64, i64* %cloptr295183, i64 2                ; &eptr295186[2]
  store i64 %uxA$cc, i64* %eptr295185                                                ; *eptr295185 = %uxA$cc
  store i64 %cont293015, i64* %eptr295186                                            ; *eptr295186 = %cont293015
  %eptr295184 = getelementptr inbounds i64, i64* %cloptr295183, i64 0                ; &cloptr295183[0]
  %f295187 = ptrtoint void(i64,i64,i64)* @lam294347 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295187, i64* %eptr295184                                               ; store fptr
  %arg293449 = ptrtoint i64* %cloptr295183 to i64                                    ; closure cast; i64* -> i64
  %arg293448 = add i64 0, 0                                                          ; quoted ()
  %cloptr295188 = inttoptr i64 %arg293449 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295189 = getelementptr inbounds i64, i64* %cloptr295188, i64 0               ; &cloptr295188[0]
  %f295191 = load i64, i64* %i0ptr295189, align 8                                    ; load; *i0ptr295189
  %fptr295190 = inttoptr i64 %f295191 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295190(i64 %arg293449, i64 %arg293448, i64 %retprim293020); tail call
  ret void
}


define void @lam294347(i64 %env294348, i64 %_95293019, i64 %ixf$_951) {
  %envptr295192 = inttoptr i64 %env294348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295193 = getelementptr inbounds i64, i64* %envptr295192, i64 2              ; &envptr295192[2]
  %cont293015 = load i64, i64* %envptr295193, align 8                                ; load; *envptr295193
  %envptr295194 = inttoptr i64 %env294348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295195 = getelementptr inbounds i64, i64* %envptr295194, i64 1              ; &envptr295194[1]
  %uxA$cc = load i64, i64* %envptr295195, align 8                                    ; load; *envptr295195
  %cloptr295196 = inttoptr i64 %uxA$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295197 = getelementptr inbounds i64, i64* %cloptr295196, i64 0               ; &cloptr295196[0]
  %f295199 = load i64, i64* %i0ptr295197, align 8                                    ; load; *i0ptr295197
  %fptr295198 = inttoptr i64 %f295199 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295198(i64 %uxA$cc, i64 %cont293015, i64 %uxA$cc)   ; tail call
  ret void
}


define void @lam294341(i64 %env294342, i64 %cont293023, i64 %QUK$v, i64 %eyi$lst) {
  %arg293454 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %k3x$lst = call i64 @prim_make_45vector(i64 %arg293454, i64 %eyi$lst)              ; call prim_make_45vector
  %cloptr295200 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295201 = getelementptr inbounds i64, i64* %cloptr295200, i64 0                ; &cloptr295200[0]
  %f295202 = ptrtoint void(i64,i64,i64)* @lam294338 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295202, i64* %eptr295201                                               ; store fptr
  %arg293457 = ptrtoint i64* %cloptr295200 to i64                                    ; closure cast; i64* -> i64
  %cloptr295203 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295205 = getelementptr inbounds i64, i64* %cloptr295203, i64 1                ; &eptr295205[1]
  %eptr295206 = getelementptr inbounds i64, i64* %cloptr295203, i64 2                ; &eptr295206[2]
  %eptr295207 = getelementptr inbounds i64, i64* %cloptr295203, i64 3                ; &eptr295207[3]
  store i64 %QUK$v, i64* %eptr295205                                                 ; *eptr295205 = %QUK$v
  store i64 %cont293023, i64* %eptr295206                                            ; *eptr295206 = %cont293023
  store i64 %k3x$lst, i64* %eptr295207                                               ; *eptr295207 = %k3x$lst
  %eptr295204 = getelementptr inbounds i64, i64* %cloptr295203, i64 0                ; &cloptr295203[0]
  %f295208 = ptrtoint void(i64,i64,i64)* @lam294336 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295208, i64* %eptr295204                                               ; store fptr
  %arg293456 = ptrtoint i64* %cloptr295203 to i64                                    ; closure cast; i64* -> i64
  %cloptr295209 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295211 = getelementptr inbounds i64, i64* %cloptr295209, i64 1                ; &eptr295211[1]
  %eptr295212 = getelementptr inbounds i64, i64* %cloptr295209, i64 2                ; &eptr295212[2]
  %eptr295213 = getelementptr inbounds i64, i64* %cloptr295209, i64 3                ; &eptr295213[3]
  store i64 %QUK$v, i64* %eptr295211                                                 ; *eptr295211 = %QUK$v
  store i64 %cont293023, i64* %eptr295212                                            ; *eptr295212 = %cont293023
  store i64 %k3x$lst, i64* %eptr295213                                               ; *eptr295213 = %k3x$lst
  %eptr295210 = getelementptr inbounds i64, i64* %cloptr295209, i64 0                ; &cloptr295209[0]
  %f295214 = ptrtoint void(i64,i64,i64)* @lam294323 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295214, i64* %eptr295210                                               ; store fptr
  %arg293455 = ptrtoint i64* %cloptr295209 to i64                                    ; closure cast; i64* -> i64
  %cloptr295215 = inttoptr i64 %arg293457 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295216 = getelementptr inbounds i64, i64* %cloptr295215, i64 0               ; &cloptr295215[0]
  %f295218 = load i64, i64* %i0ptr295216, align 8                                    ; load; *i0ptr295216
  %fptr295217 = inttoptr i64 %f295218 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295217(i64 %arg293457, i64 %arg293456, i64 %arg293455); tail call
  ret void
}


define void @lam294338(i64 %env294339, i64 %cont293028, i64 %eJf$u) {
  %cloptr295219 = inttoptr i64 %eJf$u to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr295220 = getelementptr inbounds i64, i64* %cloptr295219, i64 0               ; &cloptr295219[0]
  %f295222 = load i64, i64* %i0ptr295220, align 8                                    ; load; *i0ptr295220
  %fptr295221 = inttoptr i64 %f295222 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295221(i64 %eJf$u, i64 %cont293028, i64 %eJf$u)     ; tail call
  ret void
}


define void @lam294336(i64 %env294337, i64 %_95293024, i64 %Ekp$cc) {
  %envptr295223 = inttoptr i64 %env294337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295224 = getelementptr inbounds i64, i64* %envptr295223, i64 3              ; &envptr295223[3]
  %k3x$lst = load i64, i64* %envptr295224, align 8                                   ; load; *envptr295224
  %envptr295225 = inttoptr i64 %env294337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295226 = getelementptr inbounds i64, i64* %envptr295225, i64 2              ; &envptr295225[2]
  %cont293023 = load i64, i64* %envptr295226, align 8                                ; load; *envptr295226
  %envptr295227 = inttoptr i64 %env294337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295228 = getelementptr inbounds i64, i64* %envptr295227, i64 1              ; &envptr295227[1]
  %QUK$v = load i64, i64* %envptr295228, align 8                                     ; load; *envptr295228
  %arg293461 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292925 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293461)               ; call prim_vector_45ref
  %a292926 = call i64 @prim_null_63(i64 %a292925)                                    ; call prim_null_63
  %cmp295229 = icmp eq i64 %a292926, 15                                              ; false?
  br i1 %cmp295229, label %else295231, label %then295230                             ; if

then295230:
  %arg293465 = add i64 0, 0                                                          ; quoted ()
  %arg293464 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr295232 = inttoptr i64 %cont293023 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295233 = getelementptr inbounds i64, i64* %cloptr295232, i64 0               ; &cloptr295232[0]
  %f295235 = load i64, i64* %i0ptr295233, align 8                                    ; load; *i0ptr295233
  %fptr295234 = inttoptr i64 %f295235 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295234(i64 %cont293023, i64 %arg293465, i64 %arg293464); tail call
  ret void

else295231:
  %arg293467 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292927 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293467)               ; call prim_vector_45ref
  %a292928 = call i64 @prim_car(i64 %a292927)                                        ; call prim_car
  %a292929 = call i64 @prim_eqv_63(i64 %a292928, i64 %QUK$v)                         ; call prim_eqv_63
  %cmp295236 = icmp eq i64 %a292929, 15                                              ; false?
  br i1 %cmp295236, label %else295238, label %then295237                             ; if

then295237:
  %arg293472 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293025 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293472)         ; call prim_vector_45ref
  %arg293475 = add i64 0, 0                                                          ; quoted ()
  %cloptr295239 = inttoptr i64 %cont293023 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295240 = getelementptr inbounds i64, i64* %cloptr295239, i64 0               ; &cloptr295239[0]
  %f295242 = load i64, i64* %i0ptr295240, align 8                                    ; load; *i0ptr295240
  %fptr295241 = inttoptr i64 %f295242 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295241(i64 %cont293023, i64 %arg293475, i64 %retprim293025); tail call
  ret void

else295238:
  %arg293477 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292930 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293477)               ; call prim_vector_45ref
  %a292931 = call i64 @prim_cdr(i64 %a292930)                                        ; call prim_cdr
  %arg293481 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293027 = call i64 @prim_vector_45set_33(i64 %k3x$lst, i64 %arg293481, i64 %a292931); call prim_vector_45set_33
  %cloptr295243 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295245 = getelementptr inbounds i64, i64* %cloptr295243, i64 1                ; &eptr295245[1]
  %eptr295246 = getelementptr inbounds i64, i64* %cloptr295243, i64 2                ; &eptr295246[2]
  store i64 %cont293023, i64* %eptr295245                                            ; *eptr295245 = %cont293023
  store i64 %Ekp$cc, i64* %eptr295246                                                ; *eptr295246 = %Ekp$cc
  %eptr295244 = getelementptr inbounds i64, i64* %cloptr295243, i64 0                ; &cloptr295243[0]
  %f295247 = ptrtoint void(i64,i64,i64)* @lam294330 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295247, i64* %eptr295244                                               ; store fptr
  %arg293485 = ptrtoint i64* %cloptr295243 to i64                                    ; closure cast; i64* -> i64
  %arg293484 = add i64 0, 0                                                          ; quoted ()
  %cloptr295248 = inttoptr i64 %arg293485 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295249 = getelementptr inbounds i64, i64* %cloptr295248, i64 0               ; &cloptr295248[0]
  %f295251 = load i64, i64* %i0ptr295249, align 8                                    ; load; *i0ptr295249
  %fptr295250 = inttoptr i64 %f295251 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295250(i64 %arg293485, i64 %arg293484, i64 %retprim293027); tail call
  ret void
}


define void @lam294330(i64 %env294331, i64 %_95293026, i64 %XRf$_950) {
  %envptr295252 = inttoptr i64 %env294331 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295253 = getelementptr inbounds i64, i64* %envptr295252, i64 2              ; &envptr295252[2]
  %Ekp$cc = load i64, i64* %envptr295253, align 8                                    ; load; *envptr295253
  %envptr295254 = inttoptr i64 %env294331 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295255 = getelementptr inbounds i64, i64* %envptr295254, i64 1              ; &envptr295254[1]
  %cont293023 = load i64, i64* %envptr295255, align 8                                ; load; *envptr295255
  %cloptr295256 = inttoptr i64 %Ekp$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295257 = getelementptr inbounds i64, i64* %cloptr295256, i64 0               ; &cloptr295256[0]
  %f295259 = load i64, i64* %i0ptr295257, align 8                                    ; load; *i0ptr295257
  %fptr295258 = inttoptr i64 %f295259 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295258(i64 %Ekp$cc, i64 %cont293023, i64 %Ekp$cc)   ; tail call
  ret void
}


define void @lam294323(i64 %env294324, i64 %_95293024, i64 %Ekp$cc) {
  %envptr295260 = inttoptr i64 %env294324 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295261 = getelementptr inbounds i64, i64* %envptr295260, i64 3              ; &envptr295260[3]
  %k3x$lst = load i64, i64* %envptr295261, align 8                                   ; load; *envptr295261
  %envptr295262 = inttoptr i64 %env294324 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295263 = getelementptr inbounds i64, i64* %envptr295262, i64 2              ; &envptr295262[2]
  %cont293023 = load i64, i64* %envptr295263, align 8                                ; load; *envptr295263
  %envptr295264 = inttoptr i64 %env294324 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295265 = getelementptr inbounds i64, i64* %envptr295264, i64 1              ; &envptr295264[1]
  %QUK$v = load i64, i64* %envptr295265, align 8                                     ; load; *envptr295265
  %arg293489 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292925 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293489)               ; call prim_vector_45ref
  %a292926 = call i64 @prim_null_63(i64 %a292925)                                    ; call prim_null_63
  %cmp295266 = icmp eq i64 %a292926, 15                                              ; false?
  br i1 %cmp295266, label %else295268, label %then295267                             ; if

then295267:
  %arg293493 = add i64 0, 0                                                          ; quoted ()
  %arg293492 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr295269 = inttoptr i64 %cont293023 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295270 = getelementptr inbounds i64, i64* %cloptr295269, i64 0               ; &cloptr295269[0]
  %f295272 = load i64, i64* %i0ptr295270, align 8                                    ; load; *i0ptr295270
  %fptr295271 = inttoptr i64 %f295272 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295271(i64 %cont293023, i64 %arg293493, i64 %arg293492); tail call
  ret void

else295268:
  %arg293495 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292927 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293495)               ; call prim_vector_45ref
  %a292928 = call i64 @prim_car(i64 %a292927)                                        ; call prim_car
  %a292929 = call i64 @prim_eqv_63(i64 %a292928, i64 %QUK$v)                         ; call prim_eqv_63
  %cmp295273 = icmp eq i64 %a292929, 15                                              ; false?
  br i1 %cmp295273, label %else295275, label %then295274                             ; if

then295274:
  %arg293500 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293025 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293500)         ; call prim_vector_45ref
  %arg293503 = add i64 0, 0                                                          ; quoted ()
  %cloptr295276 = inttoptr i64 %cont293023 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295277 = getelementptr inbounds i64, i64* %cloptr295276, i64 0               ; &cloptr295276[0]
  %f295279 = load i64, i64* %i0ptr295277, align 8                                    ; load; *i0ptr295277
  %fptr295278 = inttoptr i64 %f295279 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295278(i64 %cont293023, i64 %arg293503, i64 %retprim293025); tail call
  ret void

else295275:
  %arg293505 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292930 = call i64 @prim_vector_45ref(i64 %k3x$lst, i64 %arg293505)               ; call prim_vector_45ref
  %a292931 = call i64 @prim_cdr(i64 %a292930)                                        ; call prim_cdr
  %arg293509 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293027 = call i64 @prim_vector_45set_33(i64 %k3x$lst, i64 %arg293509, i64 %a292931); call prim_vector_45set_33
  %cloptr295280 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295282 = getelementptr inbounds i64, i64* %cloptr295280, i64 1                ; &eptr295282[1]
  %eptr295283 = getelementptr inbounds i64, i64* %cloptr295280, i64 2                ; &eptr295283[2]
  store i64 %cont293023, i64* %eptr295282                                            ; *eptr295282 = %cont293023
  store i64 %Ekp$cc, i64* %eptr295283                                                ; *eptr295283 = %Ekp$cc
  %eptr295281 = getelementptr inbounds i64, i64* %cloptr295280, i64 0                ; &cloptr295280[0]
  %f295284 = ptrtoint void(i64,i64,i64)* @lam294317 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295284, i64* %eptr295281                                               ; store fptr
  %arg293513 = ptrtoint i64* %cloptr295280 to i64                                    ; closure cast; i64* -> i64
  %arg293512 = add i64 0, 0                                                          ; quoted ()
  %cloptr295285 = inttoptr i64 %arg293513 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295286 = getelementptr inbounds i64, i64* %cloptr295285, i64 0               ; &cloptr295285[0]
  %f295288 = load i64, i64* %i0ptr295286, align 8                                    ; load; *i0ptr295286
  %fptr295287 = inttoptr i64 %f295288 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295287(i64 %arg293513, i64 %arg293512, i64 %retprim293027); tail call
  ret void
}


define void @lam294317(i64 %env294318, i64 %_95293026, i64 %XRf$_950) {
  %envptr295289 = inttoptr i64 %env294318 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295290 = getelementptr inbounds i64, i64* %envptr295289, i64 2              ; &envptr295289[2]
  %Ekp$cc = load i64, i64* %envptr295290, align 8                                    ; load; *envptr295290
  %envptr295291 = inttoptr i64 %env294318 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295292 = getelementptr inbounds i64, i64* %envptr295291, i64 1              ; &envptr295291[1]
  %cont293023 = load i64, i64* %envptr295292, align 8                                ; load; *envptr295292
  %cloptr295293 = inttoptr i64 %Ekp$cc to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr295294 = getelementptr inbounds i64, i64* %cloptr295293, i64 0               ; &cloptr295293[0]
  %f295296 = load i64, i64* %i0ptr295294, align 8                                    ; load; *i0ptr295294
  %fptr295295 = inttoptr i64 %f295296 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295295(i64 %Ekp$cc, i64 %cont293023, i64 %Ekp$cc)   ; tail call
  ret void
}


define void @lam294310(i64 %env294311, i64 %Do3$args293030) {
  %envptr295297 = inttoptr i64 %env294311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295298 = getelementptr inbounds i64, i64* %envptr295297, i64 1              ; &envptr295297[1]
  %p1e$_37foldl1 = load i64, i64* %envptr295298, align 8                             ; load; *envptr295298
  %cont293029 = call i64 @prim_car(i64 %Do3$args293030)                              ; call prim_car
  %Do3$args = call i64 @prim_cdr(i64 %Do3$args293030)                                ; call prim_cdr
  %a292932 = call i64 @prim_null_63(i64 %Do3$args)                                   ; call prim_null_63
  %cmp295299 = icmp eq i64 %a292932, 15                                              ; false?
  br i1 %cmp295299, label %else295301, label %then295300                             ; if

then295300:
  %arg293521 = add i64 0, 0                                                          ; quoted ()
  %arg293520 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr295302 = inttoptr i64 %cont293029 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295303 = getelementptr inbounds i64, i64* %cloptr295302, i64 0               ; &cloptr295302[0]
  %f295305 = load i64, i64* %i0ptr295303, align 8                                    ; load; *i0ptr295303
  %fptr295304 = inttoptr i64 %f295305 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295304(i64 %cont293029, i64 %arg293521, i64 %arg293520); tail call
  ret void

else295301:
  %a292933 = call i64 @prim_cdr(i64 %Do3$args)                                       ; call prim_cdr
  %a292934 = call i64 @prim_null_63(i64 %a292933)                                    ; call prim_null_63
  %cmp295306 = icmp eq i64 %a292934, 15                                              ; false?
  br i1 %cmp295306, label %else295308, label %then295307                             ; if

then295307:
  %retprim293031 = call i64 @prim_car(i64 %Do3$args)                                 ; call prim_car
  %arg293527 = add i64 0, 0                                                          ; quoted ()
  %cloptr295309 = inttoptr i64 %cont293029 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295310 = getelementptr inbounds i64, i64* %cloptr295309, i64 0               ; &cloptr295309[0]
  %f295312 = load i64, i64* %i0ptr295310, align 8                                    ; load; *i0ptr295310
  %fptr295311 = inttoptr i64 %f295312 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295311(i64 %cont293029, i64 %arg293527, i64 %retprim293031); tail call
  ret void

else295308:
  %a292935 = call i64 @prim_car(i64 %Do3$args)                                       ; call prim_car
  %a292936 = call i64 @prim_cdr(i64 %Do3$args)                                       ; call prim_cdr
  %cloptr295313 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295314 = getelementptr inbounds i64, i64* %cloptr295313, i64 0                ; &cloptr295313[0]
  %f295315 = ptrtoint void(i64,i64,i64,i64)* @lam294308 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f295315, i64* %eptr295314                                               ; store fptr
  %arg293533 = ptrtoint i64* %cloptr295313 to i64                                    ; closure cast; i64* -> i64
  %cloptr295316 = inttoptr i64 %p1e$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr295317 = getelementptr inbounds i64, i64* %cloptr295316, i64 0               ; &cloptr295316[0]
  %f295319 = load i64, i64* %i0ptr295317, align 8                                    ; load; *i0ptr295317
  %fptr295318 = inttoptr i64 %f295319 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295318(i64 %p1e$_37foldl1, i64 %cont293029, i64 %arg293533, i64 %a292935, i64 %a292936); tail call
  ret void
}


define void @lam294308(i64 %env294309, i64 %cont293032, i64 %iax$n, i64 %zNU$v) {
  %retprim293033 = call i64 @prim__47(i64 %zNU$v, i64 %iax$n)                        ; call prim__47
  %arg293539 = add i64 0, 0                                                          ; quoted ()
  %cloptr295320 = inttoptr i64 %cont293032 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295321 = getelementptr inbounds i64, i64* %cloptr295320, i64 0               ; &cloptr295320[0]
  %f295323 = load i64, i64* %i0ptr295321, align 8                                    ; load; *i0ptr295321
  %fptr295322 = inttoptr i64 %f295323 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295322(i64 %cont293032, i64 %arg293539, i64 %retprim293033); tail call
  ret void
}


define void @lam294302(i64 %env294303, i64 %cont293034, i64 %oyY$x) {
  %retprim293035 = call i64 @prim_car(i64 %oyY$x)                                    ; call prim_car
  %arg293543 = add i64 0, 0                                                          ; quoted ()
  %cloptr295324 = inttoptr i64 %cont293034 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295325 = getelementptr inbounds i64, i64* %cloptr295324, i64 0               ; &cloptr295324[0]
  %f295327 = load i64, i64* %i0ptr295325, align 8                                    ; load; *i0ptr295325
  %fptr295326 = inttoptr i64 %f295327 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295326(i64 %cont293034, i64 %arg293543, i64 %retprim293035); tail call
  ret void
}


define void @lam294299(i64 %env294300, i64 %cont293036, i64 %Q3g$x) {
  %a292937 = call i64 @prim_cdr(i64 %Q3g$x)                                          ; call prim_cdr
  %retprim293037 = call i64 @prim_car(i64 %a292937)                                  ; call prim_car
  %arg293548 = add i64 0, 0                                                          ; quoted ()
  %cloptr295328 = inttoptr i64 %cont293036 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295329 = getelementptr inbounds i64, i64* %cloptr295328, i64 0               ; &cloptr295328[0]
  %f295331 = load i64, i64* %i0ptr295329, align 8                                    ; load; *i0ptr295329
  %fptr295330 = inttoptr i64 %f295331 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295330(i64 %cont293036, i64 %arg293548, i64 %retprim293037); tail call
  ret void
}


define void @lam294296(i64 %env294297, i64 %cont293038, i64 %cag$x) {
  %a292938 = call i64 @prim_cdr(i64 %cag$x)                                          ; call prim_cdr
  %a292939 = call i64 @prim_cdr(i64 %a292938)                                        ; call prim_cdr
  %retprim293039 = call i64 @prim_car(i64 %a292939)                                  ; call prim_car
  %arg293554 = add i64 0, 0                                                          ; quoted ()
  %cloptr295332 = inttoptr i64 %cont293038 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295333 = getelementptr inbounds i64, i64* %cloptr295332, i64 0               ; &cloptr295332[0]
  %f295335 = load i64, i64* %i0ptr295333, align 8                                    ; load; *i0ptr295333
  %fptr295334 = inttoptr i64 %f295335 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295334(i64 %cont293038, i64 %arg293554, i64 %retprim293039); tail call
  ret void
}


define void @lam294293(i64 %env294294, i64 %cont293040, i64 %wf1$x) {
  %a292940 = call i64 @prim_cdr(i64 %wf1$x)                                          ; call prim_cdr
  %a292941 = call i64 @prim_cdr(i64 %a292940)                                        ; call prim_cdr
  %a292942 = call i64 @prim_cdr(i64 %a292941)                                        ; call prim_cdr
  %retprim293041 = call i64 @prim_car(i64 %a292942)                                  ; call prim_car
  %arg293561 = add i64 0, 0                                                          ; quoted ()
  %cloptr295336 = inttoptr i64 %cont293040 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295337 = getelementptr inbounds i64, i64* %cloptr295336, i64 0               ; &cloptr295336[0]
  %f295339 = load i64, i64* %i0ptr295337, align 8                                    ; load; *i0ptr295337
  %fptr295338 = inttoptr i64 %f295339 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295338(i64 %cont293040, i64 %arg293561, i64 %retprim293041); tail call
  ret void
}


define void @lam294290(i64 %env294291, i64 %cont293042, i64 %AWc$p) {
  %a292943 = call i64 @prim_cons_63(i64 %AWc$p)                                      ; call prim_cons_63
  %cmp295340 = icmp eq i64 %a292943, 15                                              ; false?
  br i1 %cmp295340, label %else295342, label %then295341                             ; if

then295341:
  %a292944 = call i64 @prim_car(i64 %AWc$p)                                          ; call prim_car
  %arg293565 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym295343, i32 0, i32 0)); quoted string
  %retprim293043 = call i64 @prim_eq_63(i64 %a292944, i64 %arg293565)                ; call prim_eq_63
  %arg293568 = add i64 0, 0                                                          ; quoted ()
  %cloptr295344 = inttoptr i64 %cont293042 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295345 = getelementptr inbounds i64, i64* %cloptr295344, i64 0               ; &cloptr295344[0]
  %f295347 = load i64, i64* %i0ptr295345, align 8                                    ; load; *i0ptr295345
  %fptr295346 = inttoptr i64 %f295347 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295346(i64 %cont293042, i64 %arg293568, i64 %retprim293043); tail call
  ret void

else295342:
  %arg293571 = add i64 0, 0                                                          ; quoted ()
  %arg293570 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr295348 = inttoptr i64 %cont293042 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295349 = getelementptr inbounds i64, i64* %cloptr295348, i64 0               ; &cloptr295348[0]
  %f295351 = load i64, i64* %i0ptr295349, align 8                                    ; load; *i0ptr295349
  %fptr295350 = inttoptr i64 %f295351 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295350(i64 %cont293042, i64 %arg293571, i64 %arg293570); tail call
  ret void
}


define void @lam294284(i64 %env294285, i64 %iBk$lst293088) {
  %cont293087 = call i64 @prim_car(i64 %iBk$lst293088)                               ; call prim_car
  %iBk$lst = call i64 @prim_cdr(i64 %iBk$lst293088)                                  ; call prim_cdr
  %arg293578 = add i64 0, 0                                                          ; quoted ()
  %cloptr295352 = inttoptr i64 %cont293087 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295353 = getelementptr inbounds i64, i64* %cloptr295352, i64 0               ; &cloptr295352[0]
  %f295355 = load i64, i64* %i0ptr295353, align 8                                    ; load; *i0ptr295353
  %fptr295354 = inttoptr i64 %f295355 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295354(i64 %cont293087, i64 %arg293578, i64 %iBk$lst); tail call
  ret void
}


define void @lam294281(i64 %env294282, i64 %_95293044, i64 %hUk$_37raise_45handler) {
  %envptr295356 = inttoptr i64 %env294282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295357 = getelementptr inbounds i64, i64* %envptr295356, i64 3              ; &envptr295356[3]
  %RpZ$_37drop = load i64, i64* %envptr295357, align 8                               ; load; *envptr295357
  %envptr295358 = inttoptr i64 %env294282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295359 = getelementptr inbounds i64, i64* %envptr295358, i64 2              ; &envptr295358[2]
  %Fld$_37_62 = load i64, i64* %envptr295359, align 8                                ; load; *envptr295359
  %envptr295360 = inttoptr i64 %env294282 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295361 = getelementptr inbounds i64, i64* %envptr295360, i64 1              ; &envptr295360[1]
  %QfF$_37length = load i64, i64* %envptr295361, align 8                             ; load; *envptr295361
  %cloptr295362 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295363 = getelementptr inbounds i64, i64* %cloptr295362, i64 0                ; &cloptr295362[0]
  %f295364 = ptrtoint void(i64,i64)* @lam294279 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f295364, i64* %eptr295363                                               ; store fptr
  %arg293581 = ptrtoint i64* %cloptr295362 to i64                                    ; closure cast; i64* -> i64
  %cloptr295365 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295367 = getelementptr inbounds i64, i64* %cloptr295365, i64 1                ; &eptr295367[1]
  %eptr295368 = getelementptr inbounds i64, i64* %cloptr295365, i64 2                ; &eptr295368[2]
  %eptr295369 = getelementptr inbounds i64, i64* %cloptr295365, i64 3                ; &eptr295369[3]
  store i64 %QfF$_37length, i64* %eptr295367                                         ; *eptr295367 = %QfF$_37length
  store i64 %Fld$_37_62, i64* %eptr295368                                            ; *eptr295368 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295369                                           ; *eptr295369 = %RpZ$_37drop
  %eptr295366 = getelementptr inbounds i64, i64* %cloptr295365, i64 0                ; &cloptr295365[0]
  %f295370 = ptrtoint void(i64,i64,i64)* @lam294276 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295370, i64* %eptr295366                                               ; store fptr
  %arg293580 = ptrtoint i64* %cloptr295365 to i64                                    ; closure cast; i64* -> i64
  %rva294032 = add i64 0, 0                                                          ; quoted ()
  %rva294031 = call i64 @prim_cons(i64 %arg293580, i64 %rva294032)                   ; call prim_cons
  %cloptr295371 = inttoptr i64 %arg293581 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295372 = getelementptr inbounds i64, i64* %cloptr295371, i64 0               ; &cloptr295371[0]
  %f295374 = load i64, i64* %i0ptr295372, align 8                                    ; load; *i0ptr295372
  %fptr295373 = inttoptr i64 %f295374 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295373(i64 %arg293581, i64 %rva294031)              ; tail call
  ret void
}


define void @lam294279(i64 %env294280, i64 %m5e$lst293086) {
  %cont293085 = call i64 @prim_car(i64 %m5e$lst293086)                               ; call prim_car
  %m5e$lst = call i64 @prim_cdr(i64 %m5e$lst293086)                                  ; call prim_cdr
  %arg293585 = add i64 0, 0                                                          ; quoted ()
  %cloptr295375 = inttoptr i64 %cont293085 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295376 = getelementptr inbounds i64, i64* %cloptr295375, i64 0               ; &cloptr295375[0]
  %f295378 = load i64, i64* %i0ptr295376, align 8                                    ; load; *i0ptr295376
  %fptr295377 = inttoptr i64 %f295378 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295377(i64 %cont293085, i64 %arg293585, i64 %m5e$lst); tail call
  ret void
}


define void @lam294276(i64 %env294277, i64 %_95293083, i64 %a292945) {
  %envptr295379 = inttoptr i64 %env294277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295380 = getelementptr inbounds i64, i64* %envptr295379, i64 3              ; &envptr295379[3]
  %RpZ$_37drop = load i64, i64* %envptr295380, align 8                               ; load; *envptr295380
  %envptr295381 = inttoptr i64 %env294277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295382 = getelementptr inbounds i64, i64* %envptr295381, i64 2              ; &envptr295381[2]
  %Fld$_37_62 = load i64, i64* %envptr295382, align 8                                ; load; *envptr295382
  %envptr295383 = inttoptr i64 %env294277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295384 = getelementptr inbounds i64, i64* %envptr295383, i64 1              ; &envptr295383[1]
  %QfF$_37length = load i64, i64* %envptr295384, align 8                             ; load; *envptr295384
  %arg293588 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293084 = call i64 @prim_make_45vector(i64 %arg293588, i64 %a292945)        ; call prim_make_45vector
  %cloptr295385 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295387 = getelementptr inbounds i64, i64* %cloptr295385, i64 1                ; &eptr295387[1]
  %eptr295388 = getelementptr inbounds i64, i64* %cloptr295385, i64 2                ; &eptr295388[2]
  %eptr295389 = getelementptr inbounds i64, i64* %cloptr295385, i64 3                ; &eptr295389[3]
  store i64 %QfF$_37length, i64* %eptr295387                                         ; *eptr295387 = %QfF$_37length
  store i64 %Fld$_37_62, i64* %eptr295388                                            ; *eptr295388 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295389                                           ; *eptr295389 = %RpZ$_37drop
  %eptr295386 = getelementptr inbounds i64, i64* %cloptr295385, i64 0                ; &cloptr295385[0]
  %f295390 = ptrtoint void(i64,i64,i64)* @lam294273 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295390, i64* %eptr295386                                               ; store fptr
  %arg293591 = ptrtoint i64* %cloptr295385 to i64                                    ; closure cast; i64* -> i64
  %arg293590 = add i64 0, 0                                                          ; quoted ()
  %cloptr295391 = inttoptr i64 %arg293591 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295392 = getelementptr inbounds i64, i64* %cloptr295391, i64 0               ; &cloptr295391[0]
  %f295394 = load i64, i64* %i0ptr295392, align 8                                    ; load; *i0ptr295392
  %fptr295393 = inttoptr i64 %f295394 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295393(i64 %arg293591, i64 %arg293590, i64 %retprim293084); tail call
  ret void
}


define void @lam294273(i64 %env294274, i64 %_95293045, i64 %PvE$_37wind_45stack) {
  %envptr295395 = inttoptr i64 %env294274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295396 = getelementptr inbounds i64, i64* %envptr295395, i64 3              ; &envptr295395[3]
  %RpZ$_37drop = load i64, i64* %envptr295396, align 8                               ; load; *envptr295396
  %envptr295397 = inttoptr i64 %env294274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295398 = getelementptr inbounds i64, i64* %envptr295397, i64 2              ; &envptr295397[2]
  %Fld$_37_62 = load i64, i64* %envptr295398, align 8                                ; load; *envptr295398
  %envptr295399 = inttoptr i64 %env294274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295400 = getelementptr inbounds i64, i64* %envptr295399, i64 1              ; &envptr295399[1]
  %QfF$_37length = load i64, i64* %envptr295400, align 8                             ; load; *envptr295400
  %cloptr295401 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295403 = getelementptr inbounds i64, i64* %cloptr295401, i64 1                ; &eptr295403[1]
  %eptr295404 = getelementptr inbounds i64, i64* %cloptr295401, i64 2                ; &eptr295404[2]
  %eptr295405 = getelementptr inbounds i64, i64* %cloptr295401, i64 3                ; &eptr295405[3]
  store i64 %QfF$_37length, i64* %eptr295403                                         ; *eptr295403 = %QfF$_37length
  store i64 %Fld$_37_62, i64* %eptr295404                                            ; *eptr295404 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295405                                           ; *eptr295405 = %RpZ$_37drop
  %eptr295402 = getelementptr inbounds i64, i64* %cloptr295401, i64 0                ; &cloptr295401[0]
  %f295406 = ptrtoint void(i64,i64,i64,i64)* @lam294271 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f295406, i64* %eptr295402                                               ; store fptr
  %yQn$_37common_45tail = ptrtoint i64* %cloptr295401 to i64                         ; closure cast; i64* -> i64
  %cloptr295407 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr295409 = getelementptr inbounds i64, i64* %cloptr295407, i64 1                ; &eptr295409[1]
  %eptr295410 = getelementptr inbounds i64, i64* %cloptr295407, i64 2                ; &eptr295410[2]
  store i64 %yQn$_37common_45tail, i64* %eptr295409                                  ; *eptr295409 = %yQn$_37common_45tail
  store i64 %PvE$_37wind_45stack, i64* %eptr295410                                   ; *eptr295410 = %PvE$_37wind_45stack
  %eptr295408 = getelementptr inbounds i64, i64* %cloptr295407, i64 0                ; &cloptr295407[0]
  %f295411 = ptrtoint void(i64,i64,i64)* @lam294229 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295411, i64* %eptr295408                                               ; store fptr
  %HAy$_37do_45wind = ptrtoint i64* %cloptr295407 to i64                             ; closure cast; i64* -> i64
  %arg293776 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293082 = call i64 @prim_equal_63(i64 %arg293776)                           ; call prim_equal_63
  %cloptr295412 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295413 = getelementptr inbounds i64, i64* %cloptr295412, i64 0                ; &cloptr295412[0]
  %f295414 = ptrtoint void(i64,i64,i64)* @lam294178 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295414, i64* %eptr295413                                               ; store fptr
  %arg293779 = ptrtoint i64* %cloptr295412 to i64                                    ; closure cast; i64* -> i64
  %arg293778 = add i64 0, 0                                                          ; quoted ()
  %cloptr295415 = inttoptr i64 %arg293779 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295416 = getelementptr inbounds i64, i64* %cloptr295415, i64 0               ; &cloptr295415[0]
  %f295418 = load i64, i64* %i0ptr295416, align 8                                    ; load; *i0ptr295416
  %fptr295417 = inttoptr i64 %f295418 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295417(i64 %arg293779, i64 %arg293778, i64 %retprim293082); tail call
  ret void
}


define void @lam294271(i64 %env294272, i64 %cont293046, i64 %rkO$x, i64 %xV2$y) {
  %envptr295419 = inttoptr i64 %env294272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295420 = getelementptr inbounds i64, i64* %envptr295419, i64 3              ; &envptr295419[3]
  %RpZ$_37drop = load i64, i64* %envptr295420, align 8                               ; load; *envptr295420
  %envptr295421 = inttoptr i64 %env294272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295422 = getelementptr inbounds i64, i64* %envptr295421, i64 2              ; &envptr295421[2]
  %Fld$_37_62 = load i64, i64* %envptr295422, align 8                                ; load; *envptr295422
  %envptr295423 = inttoptr i64 %env294272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295424 = getelementptr inbounds i64, i64* %envptr295423, i64 1              ; &envptr295423[1]
  %QfF$_37length = load i64, i64* %envptr295424, align 8                             ; load; *envptr295424
  %cloptr295425 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr295427 = getelementptr inbounds i64, i64* %cloptr295425, i64 1                ; &eptr295427[1]
  %eptr295428 = getelementptr inbounds i64, i64* %cloptr295425, i64 2                ; &eptr295428[2]
  %eptr295429 = getelementptr inbounds i64, i64* %cloptr295425, i64 3                ; &eptr295429[3]
  %eptr295430 = getelementptr inbounds i64, i64* %cloptr295425, i64 4                ; &eptr295430[4]
  %eptr295431 = getelementptr inbounds i64, i64* %cloptr295425, i64 5                ; &eptr295431[5]
  %eptr295432 = getelementptr inbounds i64, i64* %cloptr295425, i64 6                ; &eptr295432[6]
  store i64 %QfF$_37length, i64* %eptr295427                                         ; *eptr295427 = %QfF$_37length
  store i64 %xV2$y, i64* %eptr295428                                                 ; *eptr295428 = %xV2$y
  store i64 %rkO$x, i64* %eptr295429                                                 ; *eptr295429 = %rkO$x
  store i64 %cont293046, i64* %eptr295430                                            ; *eptr295430 = %cont293046
  store i64 %Fld$_37_62, i64* %eptr295431                                            ; *eptr295431 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295432                                           ; *eptr295432 = %RpZ$_37drop
  %eptr295426 = getelementptr inbounds i64, i64* %cloptr295425, i64 0                ; &cloptr295425[0]
  %f295433 = ptrtoint void(i64,i64,i64)* @lam294269 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295433, i64* %eptr295426                                               ; store fptr
  %arg293593 = ptrtoint i64* %cloptr295425 to i64                                    ; closure cast; i64* -> i64
  %cloptr295434 = inttoptr i64 %QfF$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr295435 = getelementptr inbounds i64, i64* %cloptr295434, i64 0               ; &cloptr295434[0]
  %f295437 = load i64, i64* %i0ptr295435, align 8                                    ; load; *i0ptr295435
  %fptr295436 = inttoptr i64 %f295437 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295436(i64 %QfF$_37length, i64 %arg293593, i64 %rkO$x); tail call
  ret void
}


define void @lam294269(i64 %env294270, i64 %_95293047, i64 %URe$lx) {
  %envptr295438 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295439 = getelementptr inbounds i64, i64* %envptr295438, i64 6              ; &envptr295438[6]
  %RpZ$_37drop = load i64, i64* %envptr295439, align 8                               ; load; *envptr295439
  %envptr295440 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295441 = getelementptr inbounds i64, i64* %envptr295440, i64 5              ; &envptr295440[5]
  %Fld$_37_62 = load i64, i64* %envptr295441, align 8                                ; load; *envptr295441
  %envptr295442 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295443 = getelementptr inbounds i64, i64* %envptr295442, i64 4              ; &envptr295442[4]
  %cont293046 = load i64, i64* %envptr295443, align 8                                ; load; *envptr295443
  %envptr295444 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295445 = getelementptr inbounds i64, i64* %envptr295444, i64 3              ; &envptr295444[3]
  %rkO$x = load i64, i64* %envptr295445, align 8                                     ; load; *envptr295445
  %envptr295446 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295447 = getelementptr inbounds i64, i64* %envptr295446, i64 2              ; &envptr295446[2]
  %xV2$y = load i64, i64* %envptr295447, align 8                                     ; load; *envptr295447
  %envptr295448 = inttoptr i64 %env294270 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295449 = getelementptr inbounds i64, i64* %envptr295448, i64 1              ; &envptr295448[1]
  %QfF$_37length = load i64, i64* %envptr295449, align 8                             ; load; *envptr295449
  %cloptr295450 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr295452 = getelementptr inbounds i64, i64* %cloptr295450, i64 1                ; &eptr295452[1]
  %eptr295453 = getelementptr inbounds i64, i64* %cloptr295450, i64 2                ; &eptr295453[2]
  %eptr295454 = getelementptr inbounds i64, i64* %cloptr295450, i64 3                ; &eptr295454[3]
  %eptr295455 = getelementptr inbounds i64, i64* %cloptr295450, i64 4                ; &eptr295455[4]
  %eptr295456 = getelementptr inbounds i64, i64* %cloptr295450, i64 5                ; &eptr295456[5]
  %eptr295457 = getelementptr inbounds i64, i64* %cloptr295450, i64 6                ; &eptr295457[6]
  store i64 %URe$lx, i64* %eptr295452                                                ; *eptr295452 = %URe$lx
  store i64 %xV2$y, i64* %eptr295453                                                 ; *eptr295453 = %xV2$y
  store i64 %rkO$x, i64* %eptr295454                                                 ; *eptr295454 = %rkO$x
  store i64 %cont293046, i64* %eptr295455                                            ; *eptr295455 = %cont293046
  store i64 %Fld$_37_62, i64* %eptr295456                                            ; *eptr295456 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295457                                           ; *eptr295457 = %RpZ$_37drop
  %eptr295451 = getelementptr inbounds i64, i64* %cloptr295450, i64 0                ; &cloptr295450[0]
  %f295458 = ptrtoint void(i64,i64,i64)* @lam294267 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295458, i64* %eptr295451                                               ; store fptr
  %arg293596 = ptrtoint i64* %cloptr295450 to i64                                    ; closure cast; i64* -> i64
  %cloptr295459 = inttoptr i64 %QfF$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr295460 = getelementptr inbounds i64, i64* %cloptr295459, i64 0               ; &cloptr295459[0]
  %f295462 = load i64, i64* %i0ptr295460, align 8                                    ; load; *i0ptr295460
  %fptr295461 = inttoptr i64 %f295462 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295461(i64 %QfF$_37length, i64 %arg293596, i64 %xV2$y); tail call
  ret void
}


define void @lam294267(i64 %env294268, i64 %_95293048, i64 %Wk8$ly) {
  %envptr295463 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295464 = getelementptr inbounds i64, i64* %envptr295463, i64 6              ; &envptr295463[6]
  %RpZ$_37drop = load i64, i64* %envptr295464, align 8                               ; load; *envptr295464
  %envptr295465 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295466 = getelementptr inbounds i64, i64* %envptr295465, i64 5              ; &envptr295465[5]
  %Fld$_37_62 = load i64, i64* %envptr295466, align 8                                ; load; *envptr295466
  %envptr295467 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295468 = getelementptr inbounds i64, i64* %envptr295467, i64 4              ; &envptr295467[4]
  %cont293046 = load i64, i64* %envptr295468, align 8                                ; load; *envptr295468
  %envptr295469 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295470 = getelementptr inbounds i64, i64* %envptr295469, i64 3              ; &envptr295469[3]
  %rkO$x = load i64, i64* %envptr295470, align 8                                     ; load; *envptr295470
  %envptr295471 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295472 = getelementptr inbounds i64, i64* %envptr295471, i64 2              ; &envptr295471[2]
  %xV2$y = load i64, i64* %envptr295472, align 8                                     ; load; *envptr295472
  %envptr295473 = inttoptr i64 %env294268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295474 = getelementptr inbounds i64, i64* %envptr295473, i64 1              ; &envptr295473[1]
  %URe$lx = load i64, i64* %envptr295474, align 8                                    ; load; *envptr295474
  %cloptr295475 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295476 = getelementptr inbounds i64, i64* %cloptr295475, i64 0                ; &cloptr295475[0]
  %f295477 = ptrtoint void(i64,i64)* @lam294265 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f295477, i64* %eptr295476                                               ; store fptr
  %arg293599 = ptrtoint i64* %cloptr295475 to i64                                    ; closure cast; i64* -> i64
  %cloptr295478 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295480 = getelementptr inbounds i64, i64* %cloptr295478, i64 1                ; &eptr295480[1]
  %eptr295481 = getelementptr inbounds i64, i64* %cloptr295478, i64 2                ; &eptr295481[2]
  %eptr295482 = getelementptr inbounds i64, i64* %cloptr295478, i64 3                ; &eptr295482[3]
  %eptr295483 = getelementptr inbounds i64, i64* %cloptr295478, i64 4                ; &eptr295483[4]
  %eptr295484 = getelementptr inbounds i64, i64* %cloptr295478, i64 5                ; &eptr295484[5]
  %eptr295485 = getelementptr inbounds i64, i64* %cloptr295478, i64 6                ; &eptr295485[6]
  %eptr295486 = getelementptr inbounds i64, i64* %cloptr295478, i64 7                ; &eptr295486[7]
  store i64 %URe$lx, i64* %eptr295480                                                ; *eptr295480 = %URe$lx
  store i64 %xV2$y, i64* %eptr295481                                                 ; *eptr295481 = %xV2$y
  store i64 %rkO$x, i64* %eptr295482                                                 ; *eptr295482 = %rkO$x
  store i64 %cont293046, i64* %eptr295483                                            ; *eptr295483 = %cont293046
  store i64 %Fld$_37_62, i64* %eptr295484                                            ; *eptr295484 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295485                                           ; *eptr295485 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295486                                                ; *eptr295486 = %Wk8$ly
  %eptr295479 = getelementptr inbounds i64, i64* %cloptr295478, i64 0                ; &cloptr295478[0]
  %f295487 = ptrtoint void(i64,i64,i64)* @lam294262 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295487, i64* %eptr295479                                               ; store fptr
  %arg293598 = ptrtoint i64* %cloptr295478 to i64                                    ; closure cast; i64* -> i64
  %cloptr295488 = inttoptr i64 %arg293599 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295489 = getelementptr inbounds i64, i64* %cloptr295488, i64 0               ; &cloptr295488[0]
  %f295491 = load i64, i64* %i0ptr295489, align 8                                    ; load; *i0ptr295489
  %fptr295490 = inttoptr i64 %f295491 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295490(i64 %arg293599, i64 %arg293598)              ; tail call
  ret void
}


define void @lam294265(i64 %env294266, i64 %Pu1$lst293058) {
  %cont293057 = call i64 @prim_car(i64 %Pu1$lst293058)                               ; call prim_car
  %Pu1$lst = call i64 @prim_cdr(i64 %Pu1$lst293058)                                  ; call prim_cdr
  %arg293603 = add i64 0, 0                                                          ; quoted ()
  %cloptr295492 = inttoptr i64 %cont293057 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295493 = getelementptr inbounds i64, i64* %cloptr295492, i64 0               ; &cloptr295492[0]
  %f295495 = load i64, i64* %i0ptr295493, align 8                                    ; load; *i0ptr295493
  %fptr295494 = inttoptr i64 %f295495 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295494(i64 %cont293057, i64 %arg293603, i64 %Pu1$lst); tail call
  ret void
}


define void @lam294262(i64 %env294263, i64 %_95293055, i64 %a292946) {
  %envptr295496 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295497 = getelementptr inbounds i64, i64* %envptr295496, i64 7              ; &envptr295496[7]
  %Wk8$ly = load i64, i64* %envptr295497, align 8                                    ; load; *envptr295497
  %envptr295498 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295499 = getelementptr inbounds i64, i64* %envptr295498, i64 6              ; &envptr295498[6]
  %RpZ$_37drop = load i64, i64* %envptr295499, align 8                               ; load; *envptr295499
  %envptr295500 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295501 = getelementptr inbounds i64, i64* %envptr295500, i64 5              ; &envptr295500[5]
  %Fld$_37_62 = load i64, i64* %envptr295501, align 8                                ; load; *envptr295501
  %envptr295502 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295503 = getelementptr inbounds i64, i64* %envptr295502, i64 4              ; &envptr295502[4]
  %cont293046 = load i64, i64* %envptr295503, align 8                                ; load; *envptr295503
  %envptr295504 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295505 = getelementptr inbounds i64, i64* %envptr295504, i64 3              ; &envptr295504[3]
  %rkO$x = load i64, i64* %envptr295505, align 8                                     ; load; *envptr295505
  %envptr295506 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295507 = getelementptr inbounds i64, i64* %envptr295506, i64 2              ; &envptr295506[2]
  %xV2$y = load i64, i64* %envptr295507, align 8                                     ; load; *envptr295507
  %envptr295508 = inttoptr i64 %env294263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295509 = getelementptr inbounds i64, i64* %envptr295508, i64 1              ; &envptr295508[1]
  %URe$lx = load i64, i64* %envptr295509, align 8                                    ; load; *envptr295509
  %arg293606 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293056 = call i64 @prim_make_45vector(i64 %arg293606, i64 %a292946)        ; call prim_make_45vector
  %cloptr295510 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295512 = getelementptr inbounds i64, i64* %cloptr295510, i64 1                ; &eptr295512[1]
  %eptr295513 = getelementptr inbounds i64, i64* %cloptr295510, i64 2                ; &eptr295513[2]
  %eptr295514 = getelementptr inbounds i64, i64* %cloptr295510, i64 3                ; &eptr295514[3]
  %eptr295515 = getelementptr inbounds i64, i64* %cloptr295510, i64 4                ; &eptr295515[4]
  %eptr295516 = getelementptr inbounds i64, i64* %cloptr295510, i64 5                ; &eptr295516[5]
  %eptr295517 = getelementptr inbounds i64, i64* %cloptr295510, i64 6                ; &eptr295517[6]
  %eptr295518 = getelementptr inbounds i64, i64* %cloptr295510, i64 7                ; &eptr295518[7]
  store i64 %URe$lx, i64* %eptr295512                                                ; *eptr295512 = %URe$lx
  store i64 %xV2$y, i64* %eptr295513                                                 ; *eptr295513 = %xV2$y
  store i64 %rkO$x, i64* %eptr295514                                                 ; *eptr295514 = %rkO$x
  store i64 %cont293046, i64* %eptr295515                                            ; *eptr295515 = %cont293046
  store i64 %Fld$_37_62, i64* %eptr295516                                            ; *eptr295516 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295517                                           ; *eptr295517 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295518                                                ; *eptr295518 = %Wk8$ly
  %eptr295511 = getelementptr inbounds i64, i64* %cloptr295510, i64 0                ; &cloptr295510[0]
  %f295519 = ptrtoint void(i64,i64,i64)* @lam294259 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295519, i64* %eptr295511                                               ; store fptr
  %arg293609 = ptrtoint i64* %cloptr295510 to i64                                    ; closure cast; i64* -> i64
  %arg293608 = add i64 0, 0                                                          ; quoted ()
  %cloptr295520 = inttoptr i64 %arg293609 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295521 = getelementptr inbounds i64, i64* %cloptr295520, i64 0               ; &cloptr295520[0]
  %f295523 = load i64, i64* %i0ptr295521, align 8                                    ; load; *i0ptr295521
  %fptr295522 = inttoptr i64 %f295523 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295522(i64 %arg293609, i64 %arg293608, i64 %retprim293056); tail call
  ret void
}


define void @lam294259(i64 %env294260, i64 %_95293049, i64 %whZ$loop) {
  %envptr295524 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295525 = getelementptr inbounds i64, i64* %envptr295524, i64 7              ; &envptr295524[7]
  %Wk8$ly = load i64, i64* %envptr295525, align 8                                    ; load; *envptr295525
  %envptr295526 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295527 = getelementptr inbounds i64, i64* %envptr295526, i64 6              ; &envptr295526[6]
  %RpZ$_37drop = load i64, i64* %envptr295527, align 8                               ; load; *envptr295527
  %envptr295528 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295529 = getelementptr inbounds i64, i64* %envptr295528, i64 5              ; &envptr295528[5]
  %Fld$_37_62 = load i64, i64* %envptr295529, align 8                                ; load; *envptr295529
  %envptr295530 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295531 = getelementptr inbounds i64, i64* %envptr295530, i64 4              ; &envptr295530[4]
  %cont293046 = load i64, i64* %envptr295531, align 8                                ; load; *envptr295531
  %envptr295532 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295533 = getelementptr inbounds i64, i64* %envptr295532, i64 3              ; &envptr295532[3]
  %rkO$x = load i64, i64* %envptr295533, align 8                                     ; load; *envptr295533
  %envptr295534 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295535 = getelementptr inbounds i64, i64* %envptr295534, i64 2              ; &envptr295534[2]
  %xV2$y = load i64, i64* %envptr295535, align 8                                     ; load; *envptr295535
  %envptr295536 = inttoptr i64 %env294260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295537 = getelementptr inbounds i64, i64* %envptr295536, i64 1              ; &envptr295536[1]
  %URe$lx = load i64, i64* %envptr295537, align 8                                    ; load; *envptr295537
  %arg293611 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr295538 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr295540 = getelementptr inbounds i64, i64* %cloptr295538, i64 1                ; &eptr295540[1]
  store i64 %whZ$loop, i64* %eptr295540                                              ; *eptr295540 = %whZ$loop
  %eptr295539 = getelementptr inbounds i64, i64* %cloptr295538, i64 0                ; &cloptr295538[0]
  %f295541 = ptrtoint void(i64,i64,i64,i64)* @lam294256 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f295541, i64* %eptr295539                                               ; store fptr
  %arg293610 = ptrtoint i64* %cloptr295538 to i64                                    ; closure cast; i64* -> i64
  %mBq$_95292847 = call i64 @prim_vector_45set_33(i64 %whZ$loop, i64 %arg293611, i64 %arg293610); call prim_vector_45set_33
  %arg293626 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292951 = call i64 @prim_vector_45ref(i64 %whZ$loop, i64 %arg293626)              ; call prim_vector_45ref
  %cloptr295542 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr295544 = getelementptr inbounds i64, i64* %cloptr295542, i64 1                ; &eptr295544[1]
  %eptr295545 = getelementptr inbounds i64, i64* %cloptr295542, i64 2                ; &eptr295545[2]
  %eptr295546 = getelementptr inbounds i64, i64* %cloptr295542, i64 3                ; &eptr295546[3]
  %eptr295547 = getelementptr inbounds i64, i64* %cloptr295542, i64 4                ; &eptr295547[4]
  %eptr295548 = getelementptr inbounds i64, i64* %cloptr295542, i64 5                ; &eptr295548[5]
  %eptr295549 = getelementptr inbounds i64, i64* %cloptr295542, i64 6                ; &eptr295549[6]
  %eptr295550 = getelementptr inbounds i64, i64* %cloptr295542, i64 7                ; &eptr295550[7]
  %eptr295551 = getelementptr inbounds i64, i64* %cloptr295542, i64 8                ; &eptr295551[8]
  store i64 %URe$lx, i64* %eptr295544                                                ; *eptr295544 = %URe$lx
  store i64 %xV2$y, i64* %eptr295545                                                 ; *eptr295545 = %xV2$y
  store i64 %rkO$x, i64* %eptr295546                                                 ; *eptr295546 = %rkO$x
  store i64 %cont293046, i64* %eptr295547                                            ; *eptr295547 = %cont293046
  store i64 %a292951, i64* %eptr295548                                               ; *eptr295548 = %a292951
  store i64 %Fld$_37_62, i64* %eptr295549                                            ; *eptr295549 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295550                                           ; *eptr295550 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295551                                                ; *eptr295551 = %Wk8$ly
  %eptr295543 = getelementptr inbounds i64, i64* %cloptr295542, i64 0                ; &cloptr295542[0]
  %f295552 = ptrtoint void(i64,i64,i64)* @lam294251 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295552, i64* %eptr295543                                               ; store fptr
  %arg293630 = ptrtoint i64* %cloptr295542 to i64                                    ; closure cast; i64* -> i64
  %cloptr295553 = inttoptr i64 %Fld$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295554 = getelementptr inbounds i64, i64* %cloptr295553, i64 0               ; &cloptr295553[0]
  %f295556 = load i64, i64* %i0ptr295554, align 8                                    ; load; *i0ptr295554
  %fptr295555 = inttoptr i64 %f295556 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295555(i64 %Fld$_37_62, i64 %arg293630, i64 %URe$lx, i64 %Wk8$ly); tail call
  ret void
}


define void @lam294256(i64 %env294257, i64 %cont293050, i64 %VuE$x, i64 %cJF$y) {
  %envptr295557 = inttoptr i64 %env294257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295558 = getelementptr inbounds i64, i64* %envptr295557, i64 1              ; &envptr295557[1]
  %whZ$loop = load i64, i64* %envptr295558, align 8                                  ; load; *envptr295558
  %a292947 = call i64 @prim_eq_63(i64 %VuE$x, i64 %cJF$y)                            ; call prim_eq_63
  %cmp295559 = icmp eq i64 %a292947, 15                                              ; false?
  br i1 %cmp295559, label %else295561, label %then295560                             ; if

then295560:
  %arg293616 = add i64 0, 0                                                          ; quoted ()
  %cloptr295562 = inttoptr i64 %cont293050 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295563 = getelementptr inbounds i64, i64* %cloptr295562, i64 0               ; &cloptr295562[0]
  %f295565 = load i64, i64* %i0ptr295563, align 8                                    ; load; *i0ptr295563
  %fptr295564 = inttoptr i64 %f295565 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295564(i64 %cont293050, i64 %arg293616, i64 %VuE$x) ; tail call
  ret void

else295561:
  %arg293618 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292948 = call i64 @prim_vector_45ref(i64 %whZ$loop, i64 %arg293618)              ; call prim_vector_45ref
  %a292949 = call i64 @prim_cdr(i64 %VuE$x)                                          ; call prim_cdr
  %a292950 = call i64 @prim_cdr(i64 %cJF$y)                                          ; call prim_cdr
  %cloptr295566 = inttoptr i64 %a292948 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295567 = getelementptr inbounds i64, i64* %cloptr295566, i64 0               ; &cloptr295566[0]
  %f295569 = load i64, i64* %i0ptr295567, align 8                                    ; load; *i0ptr295567
  %fptr295568 = inttoptr i64 %f295569 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295568(i64 %a292948, i64 %cont293050, i64 %a292949, i64 %a292950); tail call
  ret void
}


define void @lam294251(i64 %env294252, i64 %_95293051, i64 %a292952) {
  %envptr295570 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295571 = getelementptr inbounds i64, i64* %envptr295570, i64 8              ; &envptr295570[8]
  %Wk8$ly = load i64, i64* %envptr295571, align 8                                    ; load; *envptr295571
  %envptr295572 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295573 = getelementptr inbounds i64, i64* %envptr295572, i64 7              ; &envptr295572[7]
  %RpZ$_37drop = load i64, i64* %envptr295573, align 8                               ; load; *envptr295573
  %envptr295574 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295575 = getelementptr inbounds i64, i64* %envptr295574, i64 6              ; &envptr295574[6]
  %Fld$_37_62 = load i64, i64* %envptr295575, align 8                                ; load; *envptr295575
  %envptr295576 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295577 = getelementptr inbounds i64, i64* %envptr295576, i64 5              ; &envptr295576[5]
  %a292951 = load i64, i64* %envptr295577, align 8                                   ; load; *envptr295577
  %envptr295578 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295579 = getelementptr inbounds i64, i64* %envptr295578, i64 4              ; &envptr295578[4]
  %cont293046 = load i64, i64* %envptr295579, align 8                                ; load; *envptr295579
  %envptr295580 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295581 = getelementptr inbounds i64, i64* %envptr295580, i64 3              ; &envptr295580[3]
  %rkO$x = load i64, i64* %envptr295581, align 8                                     ; load; *envptr295581
  %envptr295582 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295583 = getelementptr inbounds i64, i64* %envptr295582, i64 2              ; &envptr295582[2]
  %xV2$y = load i64, i64* %envptr295583, align 8                                     ; load; *envptr295583
  %envptr295584 = inttoptr i64 %env294252 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295585 = getelementptr inbounds i64, i64* %envptr295584, i64 1              ; &envptr295584[1]
  %URe$lx = load i64, i64* %envptr295585, align 8                                    ; load; *envptr295585
  %cmp295586 = icmp eq i64 %a292952, 15                                              ; false?
  br i1 %cmp295586, label %else295588, label %then295587                             ; if

then295587:
  %a292953 = call i64 @prim__45(i64 %URe$lx, i64 %Wk8$ly)                            ; call prim__45
  %cloptr295589 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295591 = getelementptr inbounds i64, i64* %cloptr295589, i64 1                ; &eptr295591[1]
  %eptr295592 = getelementptr inbounds i64, i64* %cloptr295589, i64 2                ; &eptr295592[2]
  %eptr295593 = getelementptr inbounds i64, i64* %cloptr295589, i64 3                ; &eptr295593[3]
  %eptr295594 = getelementptr inbounds i64, i64* %cloptr295589, i64 4                ; &eptr295594[4]
  %eptr295595 = getelementptr inbounds i64, i64* %cloptr295589, i64 5                ; &eptr295595[5]
  %eptr295596 = getelementptr inbounds i64, i64* %cloptr295589, i64 6                ; &eptr295596[6]
  %eptr295597 = getelementptr inbounds i64, i64* %cloptr295589, i64 7                ; &eptr295597[7]
  store i64 %URe$lx, i64* %eptr295591                                                ; *eptr295591 = %URe$lx
  store i64 %xV2$y, i64* %eptr295592                                                 ; *eptr295592 = %xV2$y
  store i64 %cont293046, i64* %eptr295593                                            ; *eptr295593 = %cont293046
  store i64 %a292951, i64* %eptr295594                                               ; *eptr295594 = %a292951
  store i64 %Fld$_37_62, i64* %eptr295595                                            ; *eptr295595 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295596                                           ; *eptr295596 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295597                                                ; *eptr295597 = %Wk8$ly
  %eptr295590 = getelementptr inbounds i64, i64* %cloptr295589, i64 0                ; &cloptr295589[0]
  %f295598 = ptrtoint void(i64,i64,i64)* @lam294239 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295598, i64* %eptr295590                                               ; store fptr
  %arg293636 = ptrtoint i64* %cloptr295589 to i64                                    ; closure cast; i64* -> i64
  %cloptr295599 = inttoptr i64 %RpZ$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr295600 = getelementptr inbounds i64, i64* %cloptr295599, i64 0               ; &cloptr295599[0]
  %f295602 = load i64, i64* %i0ptr295600, align 8                                    ; load; *i0ptr295600
  %fptr295601 = inttoptr i64 %f295602 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295601(i64 %RpZ$_37drop, i64 %arg293636, i64 %rkO$x, i64 %a292953); tail call
  ret void

else295588:
  %cloptr295603 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295605 = getelementptr inbounds i64, i64* %cloptr295603, i64 1                ; &eptr295605[1]
  %eptr295606 = getelementptr inbounds i64, i64* %cloptr295603, i64 2                ; &eptr295606[2]
  %eptr295607 = getelementptr inbounds i64, i64* %cloptr295603, i64 3                ; &eptr295607[3]
  %eptr295608 = getelementptr inbounds i64, i64* %cloptr295603, i64 4                ; &eptr295608[4]
  %eptr295609 = getelementptr inbounds i64, i64* %cloptr295603, i64 5                ; &eptr295609[5]
  %eptr295610 = getelementptr inbounds i64, i64* %cloptr295603, i64 6                ; &eptr295610[6]
  %eptr295611 = getelementptr inbounds i64, i64* %cloptr295603, i64 7                ; &eptr295611[7]
  store i64 %URe$lx, i64* %eptr295605                                                ; *eptr295605 = %URe$lx
  store i64 %xV2$y, i64* %eptr295606                                                 ; *eptr295606 = %xV2$y
  store i64 %cont293046, i64* %eptr295607                                            ; *eptr295607 = %cont293046
  store i64 %a292951, i64* %eptr295608                                               ; *eptr295608 = %a292951
  store i64 %Fld$_37_62, i64* %eptr295609                                            ; *eptr295609 = %Fld$_37_62
  store i64 %RpZ$_37drop, i64* %eptr295610                                           ; *eptr295610 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295611                                                ; *eptr295611 = %Wk8$ly
  %eptr295604 = getelementptr inbounds i64, i64* %cloptr295603, i64 0                ; &cloptr295603[0]
  %f295612 = ptrtoint void(i64,i64,i64)* @lam294249 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295612, i64* %eptr295604                                               ; store fptr
  %arg293661 = ptrtoint i64* %cloptr295603 to i64                                    ; closure cast; i64* -> i64
  %arg293660 = add i64 0, 0                                                          ; quoted ()
  %cloptr295613 = inttoptr i64 %arg293661 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295614 = getelementptr inbounds i64, i64* %cloptr295613, i64 0               ; &cloptr295613[0]
  %f295616 = load i64, i64* %i0ptr295614, align 8                                    ; load; *i0ptr295614
  %fptr295615 = inttoptr i64 %f295616 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295615(i64 %arg293661, i64 %arg293660, i64 %rkO$x)  ; tail call
  ret void
}


define void @lam294249(i64 %env294250, i64 %_95293052, i64 %a292954) {
  %envptr295617 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295618 = getelementptr inbounds i64, i64* %envptr295617, i64 7              ; &envptr295617[7]
  %Wk8$ly = load i64, i64* %envptr295618, align 8                                    ; load; *envptr295618
  %envptr295619 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295620 = getelementptr inbounds i64, i64* %envptr295619, i64 6              ; &envptr295619[6]
  %RpZ$_37drop = load i64, i64* %envptr295620, align 8                               ; load; *envptr295620
  %envptr295621 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295622 = getelementptr inbounds i64, i64* %envptr295621, i64 5              ; &envptr295621[5]
  %Fld$_37_62 = load i64, i64* %envptr295622, align 8                                ; load; *envptr295622
  %envptr295623 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295624 = getelementptr inbounds i64, i64* %envptr295623, i64 4              ; &envptr295623[4]
  %a292951 = load i64, i64* %envptr295624, align 8                                   ; load; *envptr295624
  %envptr295625 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295626 = getelementptr inbounds i64, i64* %envptr295625, i64 3              ; &envptr295625[3]
  %cont293046 = load i64, i64* %envptr295626, align 8                                ; load; *envptr295626
  %envptr295627 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295628 = getelementptr inbounds i64, i64* %envptr295627, i64 2              ; &envptr295627[2]
  %xV2$y = load i64, i64* %envptr295628, align 8                                     ; load; *envptr295628
  %envptr295629 = inttoptr i64 %env294250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295630 = getelementptr inbounds i64, i64* %envptr295629, i64 1              ; &envptr295629[1]
  %URe$lx = load i64, i64* %envptr295630, align 8                                    ; load; *envptr295630
  %cloptr295631 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295633 = getelementptr inbounds i64, i64* %cloptr295631, i64 1                ; &eptr295633[1]
  %eptr295634 = getelementptr inbounds i64, i64* %cloptr295631, i64 2                ; &eptr295634[2]
  %eptr295635 = getelementptr inbounds i64, i64* %cloptr295631, i64 3                ; &eptr295635[3]
  %eptr295636 = getelementptr inbounds i64, i64* %cloptr295631, i64 4                ; &eptr295636[4]
  %eptr295637 = getelementptr inbounds i64, i64* %cloptr295631, i64 5                ; &eptr295637[5]
  %eptr295638 = getelementptr inbounds i64, i64* %cloptr295631, i64 6                ; &eptr295638[6]
  %eptr295639 = getelementptr inbounds i64, i64* %cloptr295631, i64 7                ; &eptr295639[7]
  store i64 %URe$lx, i64* %eptr295633                                                ; *eptr295633 = %URe$lx
  store i64 %xV2$y, i64* %eptr295634                                                 ; *eptr295634 = %xV2$y
  store i64 %cont293046, i64* %eptr295635                                            ; *eptr295635 = %cont293046
  store i64 %a292954, i64* %eptr295636                                               ; *eptr295636 = %a292954
  store i64 %a292951, i64* %eptr295637                                               ; *eptr295637 = %a292951
  store i64 %RpZ$_37drop, i64* %eptr295638                                           ; *eptr295638 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295639                                                ; *eptr295639 = %Wk8$ly
  %eptr295632 = getelementptr inbounds i64, i64* %cloptr295631, i64 0                ; &cloptr295631[0]
  %f295640 = ptrtoint void(i64,i64,i64)* @lam294247 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295640, i64* %eptr295632                                               ; store fptr
  %arg293664 = ptrtoint i64* %cloptr295631 to i64                                    ; closure cast; i64* -> i64
  %cloptr295641 = inttoptr i64 %Fld$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295642 = getelementptr inbounds i64, i64* %cloptr295641, i64 0               ; &cloptr295641[0]
  %f295644 = load i64, i64* %i0ptr295642, align 8                                    ; load; *i0ptr295642
  %fptr295643 = inttoptr i64 %f295644 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295643(i64 %Fld$_37_62, i64 %arg293664, i64 %Wk8$ly, i64 %URe$lx); tail call
  ret void
}


define void @lam294247(i64 %env294248, i64 %_95293053, i64 %a292955) {
  %envptr295645 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295646 = getelementptr inbounds i64, i64* %envptr295645, i64 7              ; &envptr295645[7]
  %Wk8$ly = load i64, i64* %envptr295646, align 8                                    ; load; *envptr295646
  %envptr295647 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295648 = getelementptr inbounds i64, i64* %envptr295647, i64 6              ; &envptr295647[6]
  %RpZ$_37drop = load i64, i64* %envptr295648, align 8                               ; load; *envptr295648
  %envptr295649 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295650 = getelementptr inbounds i64, i64* %envptr295649, i64 5              ; &envptr295649[5]
  %a292951 = load i64, i64* %envptr295650, align 8                                   ; load; *envptr295650
  %envptr295651 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295652 = getelementptr inbounds i64, i64* %envptr295651, i64 4              ; &envptr295651[4]
  %a292954 = load i64, i64* %envptr295652, align 8                                   ; load; *envptr295652
  %envptr295653 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295654 = getelementptr inbounds i64, i64* %envptr295653, i64 3              ; &envptr295653[3]
  %cont293046 = load i64, i64* %envptr295654, align 8                                ; load; *envptr295654
  %envptr295655 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295656 = getelementptr inbounds i64, i64* %envptr295655, i64 2              ; &envptr295655[2]
  %xV2$y = load i64, i64* %envptr295656, align 8                                     ; load; *envptr295656
  %envptr295657 = inttoptr i64 %env294248 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295658 = getelementptr inbounds i64, i64* %envptr295657, i64 1              ; &envptr295657[1]
  %URe$lx = load i64, i64* %envptr295658, align 8                                    ; load; *envptr295658
  %cmp295659 = icmp eq i64 %a292955, 15                                              ; false?
  br i1 %cmp295659, label %else295661, label %then295660                             ; if

then295660:
  %a292956 = call i64 @prim__45(i64 %Wk8$ly, i64 %URe$lx)                            ; call prim__45
  %cloptr295662 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295664 = getelementptr inbounds i64, i64* %cloptr295662, i64 1                ; &eptr295664[1]
  %eptr295665 = getelementptr inbounds i64, i64* %cloptr295662, i64 2                ; &eptr295665[2]
  %eptr295666 = getelementptr inbounds i64, i64* %cloptr295662, i64 3                ; &eptr295666[3]
  store i64 %cont293046, i64* %eptr295664                                            ; *eptr295664 = %cont293046
  store i64 %a292954, i64* %eptr295665                                               ; *eptr295665 = %a292954
  store i64 %a292951, i64* %eptr295666                                               ; *eptr295666 = %a292951
  %eptr295663 = getelementptr inbounds i64, i64* %cloptr295662, i64 0                ; &cloptr295662[0]
  %f295667 = ptrtoint void(i64,i64,i64)* @lam294242 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295667, i64* %eptr295663                                               ; store fptr
  %arg293670 = ptrtoint i64* %cloptr295662 to i64                                    ; closure cast; i64* -> i64
  %cloptr295668 = inttoptr i64 %RpZ$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr295669 = getelementptr inbounds i64, i64* %cloptr295668, i64 0               ; &cloptr295668[0]
  %f295671 = load i64, i64* %i0ptr295669, align 8                                    ; load; *i0ptr295669
  %fptr295670 = inttoptr i64 %f295671 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295670(i64 %RpZ$_37drop, i64 %arg293670, i64 %xV2$y, i64 %a292956); tail call
  ret void

else295661:
  %cloptr295672 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295674 = getelementptr inbounds i64, i64* %cloptr295672, i64 1                ; &eptr295674[1]
  %eptr295675 = getelementptr inbounds i64, i64* %cloptr295672, i64 2                ; &eptr295675[2]
  %eptr295676 = getelementptr inbounds i64, i64* %cloptr295672, i64 3                ; &eptr295676[3]
  store i64 %cont293046, i64* %eptr295674                                            ; *eptr295674 = %cont293046
  store i64 %a292954, i64* %eptr295675                                               ; *eptr295675 = %a292954
  store i64 %a292951, i64* %eptr295676                                               ; *eptr295676 = %a292951
  %eptr295673 = getelementptr inbounds i64, i64* %cloptr295672, i64 0                ; &cloptr295672[0]
  %f295677 = ptrtoint void(i64,i64,i64)* @lam294245 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295677, i64* %eptr295673                                               ; store fptr
  %arg293678 = ptrtoint i64* %cloptr295672 to i64                                    ; closure cast; i64* -> i64
  %arg293677 = add i64 0, 0                                                          ; quoted ()
  %cloptr295678 = inttoptr i64 %arg293678 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295679 = getelementptr inbounds i64, i64* %cloptr295678, i64 0               ; &cloptr295678[0]
  %f295681 = load i64, i64* %i0ptr295679, align 8                                    ; load; *i0ptr295679
  %fptr295680 = inttoptr i64 %f295681 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295680(i64 %arg293678, i64 %arg293677, i64 %xV2$y)  ; tail call
  ret void
}


define void @lam294245(i64 %env294246, i64 %_95293054, i64 %a292957) {
  %envptr295682 = inttoptr i64 %env294246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295683 = getelementptr inbounds i64, i64* %envptr295682, i64 3              ; &envptr295682[3]
  %a292951 = load i64, i64* %envptr295683, align 8                                   ; load; *envptr295683
  %envptr295684 = inttoptr i64 %env294246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295685 = getelementptr inbounds i64, i64* %envptr295684, i64 2              ; &envptr295684[2]
  %a292954 = load i64, i64* %envptr295685, align 8                                   ; load; *envptr295685
  %envptr295686 = inttoptr i64 %env294246 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295687 = getelementptr inbounds i64, i64* %envptr295686, i64 1              ; &envptr295686[1]
  %cont293046 = load i64, i64* %envptr295687, align 8                                ; load; *envptr295687
  %cloptr295688 = inttoptr i64 %a292951 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295689 = getelementptr inbounds i64, i64* %cloptr295688, i64 0               ; &cloptr295688[0]
  %f295691 = load i64, i64* %i0ptr295689, align 8                                    ; load; *i0ptr295689
  %fptr295690 = inttoptr i64 %f295691 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295690(i64 %a292951, i64 %cont293046, i64 %a292954, i64 %a292957); tail call
  ret void
}


define void @lam294242(i64 %env294243, i64 %_95293054, i64 %a292957) {
  %envptr295692 = inttoptr i64 %env294243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295693 = getelementptr inbounds i64, i64* %envptr295692, i64 3              ; &envptr295692[3]
  %a292951 = load i64, i64* %envptr295693, align 8                                   ; load; *envptr295693
  %envptr295694 = inttoptr i64 %env294243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295695 = getelementptr inbounds i64, i64* %envptr295694, i64 2              ; &envptr295694[2]
  %a292954 = load i64, i64* %envptr295695, align 8                                   ; load; *envptr295695
  %envptr295696 = inttoptr i64 %env294243 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295697 = getelementptr inbounds i64, i64* %envptr295696, i64 1              ; &envptr295696[1]
  %cont293046 = load i64, i64* %envptr295697, align 8                                ; load; *envptr295697
  %cloptr295698 = inttoptr i64 %a292951 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295699 = getelementptr inbounds i64, i64* %cloptr295698, i64 0               ; &cloptr295698[0]
  %f295701 = load i64, i64* %i0ptr295699, align 8                                    ; load; *i0ptr295699
  %fptr295700 = inttoptr i64 %f295701 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295700(i64 %a292951, i64 %cont293046, i64 %a292954, i64 %a292957); tail call
  ret void
}


define void @lam294239(i64 %env294240, i64 %_95293052, i64 %a292954) {
  %envptr295702 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295703 = getelementptr inbounds i64, i64* %envptr295702, i64 7              ; &envptr295702[7]
  %Wk8$ly = load i64, i64* %envptr295703, align 8                                    ; load; *envptr295703
  %envptr295704 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295705 = getelementptr inbounds i64, i64* %envptr295704, i64 6              ; &envptr295704[6]
  %RpZ$_37drop = load i64, i64* %envptr295705, align 8                               ; load; *envptr295705
  %envptr295706 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295707 = getelementptr inbounds i64, i64* %envptr295706, i64 5              ; &envptr295706[5]
  %Fld$_37_62 = load i64, i64* %envptr295707, align 8                                ; load; *envptr295707
  %envptr295708 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295709 = getelementptr inbounds i64, i64* %envptr295708, i64 4              ; &envptr295708[4]
  %a292951 = load i64, i64* %envptr295709, align 8                                   ; load; *envptr295709
  %envptr295710 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295711 = getelementptr inbounds i64, i64* %envptr295710, i64 3              ; &envptr295710[3]
  %cont293046 = load i64, i64* %envptr295711, align 8                                ; load; *envptr295711
  %envptr295712 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295713 = getelementptr inbounds i64, i64* %envptr295712, i64 2              ; &envptr295712[2]
  %xV2$y = load i64, i64* %envptr295713, align 8                                     ; load; *envptr295713
  %envptr295714 = inttoptr i64 %env294240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295715 = getelementptr inbounds i64, i64* %envptr295714, i64 1              ; &envptr295714[1]
  %URe$lx = load i64, i64* %envptr295715, align 8                                    ; load; *envptr295715
  %cloptr295716 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr295718 = getelementptr inbounds i64, i64* %cloptr295716, i64 1                ; &eptr295718[1]
  %eptr295719 = getelementptr inbounds i64, i64* %cloptr295716, i64 2                ; &eptr295719[2]
  %eptr295720 = getelementptr inbounds i64, i64* %cloptr295716, i64 3                ; &eptr295720[3]
  %eptr295721 = getelementptr inbounds i64, i64* %cloptr295716, i64 4                ; &eptr295721[4]
  %eptr295722 = getelementptr inbounds i64, i64* %cloptr295716, i64 5                ; &eptr295722[5]
  %eptr295723 = getelementptr inbounds i64, i64* %cloptr295716, i64 6                ; &eptr295723[6]
  %eptr295724 = getelementptr inbounds i64, i64* %cloptr295716, i64 7                ; &eptr295724[7]
  store i64 %URe$lx, i64* %eptr295718                                                ; *eptr295718 = %URe$lx
  store i64 %xV2$y, i64* %eptr295719                                                 ; *eptr295719 = %xV2$y
  store i64 %cont293046, i64* %eptr295720                                            ; *eptr295720 = %cont293046
  store i64 %a292954, i64* %eptr295721                                               ; *eptr295721 = %a292954
  store i64 %a292951, i64* %eptr295722                                               ; *eptr295722 = %a292951
  store i64 %RpZ$_37drop, i64* %eptr295723                                           ; *eptr295723 = %RpZ$_37drop
  store i64 %Wk8$ly, i64* %eptr295724                                                ; *eptr295724 = %Wk8$ly
  %eptr295717 = getelementptr inbounds i64, i64* %cloptr295716, i64 0                ; &cloptr295716[0]
  %f295725 = ptrtoint void(i64,i64,i64)* @lam294237 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295725, i64* %eptr295717                                               ; store fptr
  %arg293640 = ptrtoint i64* %cloptr295716 to i64                                    ; closure cast; i64* -> i64
  %cloptr295726 = inttoptr i64 %Fld$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295727 = getelementptr inbounds i64, i64* %cloptr295726, i64 0               ; &cloptr295726[0]
  %f295729 = load i64, i64* %i0ptr295727, align 8                                    ; load; *i0ptr295727
  %fptr295728 = inttoptr i64 %f295729 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295728(i64 %Fld$_37_62, i64 %arg293640, i64 %Wk8$ly, i64 %URe$lx); tail call
  ret void
}


define void @lam294237(i64 %env294238, i64 %_95293053, i64 %a292955) {
  %envptr295730 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295731 = getelementptr inbounds i64, i64* %envptr295730, i64 7              ; &envptr295730[7]
  %Wk8$ly = load i64, i64* %envptr295731, align 8                                    ; load; *envptr295731
  %envptr295732 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295733 = getelementptr inbounds i64, i64* %envptr295732, i64 6              ; &envptr295732[6]
  %RpZ$_37drop = load i64, i64* %envptr295733, align 8                               ; load; *envptr295733
  %envptr295734 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295735 = getelementptr inbounds i64, i64* %envptr295734, i64 5              ; &envptr295734[5]
  %a292951 = load i64, i64* %envptr295735, align 8                                   ; load; *envptr295735
  %envptr295736 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295737 = getelementptr inbounds i64, i64* %envptr295736, i64 4              ; &envptr295736[4]
  %a292954 = load i64, i64* %envptr295737, align 8                                   ; load; *envptr295737
  %envptr295738 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295739 = getelementptr inbounds i64, i64* %envptr295738, i64 3              ; &envptr295738[3]
  %cont293046 = load i64, i64* %envptr295739, align 8                                ; load; *envptr295739
  %envptr295740 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295741 = getelementptr inbounds i64, i64* %envptr295740, i64 2              ; &envptr295740[2]
  %xV2$y = load i64, i64* %envptr295741, align 8                                     ; load; *envptr295741
  %envptr295742 = inttoptr i64 %env294238 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295743 = getelementptr inbounds i64, i64* %envptr295742, i64 1              ; &envptr295742[1]
  %URe$lx = load i64, i64* %envptr295743, align 8                                    ; load; *envptr295743
  %cmp295744 = icmp eq i64 %a292955, 15                                              ; false?
  br i1 %cmp295744, label %else295746, label %then295745                             ; if

then295745:
  %a292956 = call i64 @prim__45(i64 %Wk8$ly, i64 %URe$lx)                            ; call prim__45
  %cloptr295747 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295749 = getelementptr inbounds i64, i64* %cloptr295747, i64 1                ; &eptr295749[1]
  %eptr295750 = getelementptr inbounds i64, i64* %cloptr295747, i64 2                ; &eptr295750[2]
  %eptr295751 = getelementptr inbounds i64, i64* %cloptr295747, i64 3                ; &eptr295751[3]
  store i64 %cont293046, i64* %eptr295749                                            ; *eptr295749 = %cont293046
  store i64 %a292954, i64* %eptr295750                                               ; *eptr295750 = %a292954
  store i64 %a292951, i64* %eptr295751                                               ; *eptr295751 = %a292951
  %eptr295748 = getelementptr inbounds i64, i64* %cloptr295747, i64 0                ; &cloptr295747[0]
  %f295752 = ptrtoint void(i64,i64,i64)* @lam294232 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295752, i64* %eptr295748                                               ; store fptr
  %arg293646 = ptrtoint i64* %cloptr295747 to i64                                    ; closure cast; i64* -> i64
  %cloptr295753 = inttoptr i64 %RpZ$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr295754 = getelementptr inbounds i64, i64* %cloptr295753, i64 0               ; &cloptr295753[0]
  %f295756 = load i64, i64* %i0ptr295754, align 8                                    ; load; *i0ptr295754
  %fptr295755 = inttoptr i64 %f295756 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295755(i64 %RpZ$_37drop, i64 %arg293646, i64 %xV2$y, i64 %a292956); tail call
  ret void

else295746:
  %cloptr295757 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295759 = getelementptr inbounds i64, i64* %cloptr295757, i64 1                ; &eptr295759[1]
  %eptr295760 = getelementptr inbounds i64, i64* %cloptr295757, i64 2                ; &eptr295760[2]
  %eptr295761 = getelementptr inbounds i64, i64* %cloptr295757, i64 3                ; &eptr295761[3]
  store i64 %cont293046, i64* %eptr295759                                            ; *eptr295759 = %cont293046
  store i64 %a292954, i64* %eptr295760                                               ; *eptr295760 = %a292954
  store i64 %a292951, i64* %eptr295761                                               ; *eptr295761 = %a292951
  %eptr295758 = getelementptr inbounds i64, i64* %cloptr295757, i64 0                ; &cloptr295757[0]
  %f295762 = ptrtoint void(i64,i64,i64)* @lam294235 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295762, i64* %eptr295758                                               ; store fptr
  %arg293654 = ptrtoint i64* %cloptr295757 to i64                                    ; closure cast; i64* -> i64
  %arg293653 = add i64 0, 0                                                          ; quoted ()
  %cloptr295763 = inttoptr i64 %arg293654 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295764 = getelementptr inbounds i64, i64* %cloptr295763, i64 0               ; &cloptr295763[0]
  %f295766 = load i64, i64* %i0ptr295764, align 8                                    ; load; *i0ptr295764
  %fptr295765 = inttoptr i64 %f295766 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295765(i64 %arg293654, i64 %arg293653, i64 %xV2$y)  ; tail call
  ret void
}


define void @lam294235(i64 %env294236, i64 %_95293054, i64 %a292957) {
  %envptr295767 = inttoptr i64 %env294236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295768 = getelementptr inbounds i64, i64* %envptr295767, i64 3              ; &envptr295767[3]
  %a292951 = load i64, i64* %envptr295768, align 8                                   ; load; *envptr295768
  %envptr295769 = inttoptr i64 %env294236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295770 = getelementptr inbounds i64, i64* %envptr295769, i64 2              ; &envptr295769[2]
  %a292954 = load i64, i64* %envptr295770, align 8                                   ; load; *envptr295770
  %envptr295771 = inttoptr i64 %env294236 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295772 = getelementptr inbounds i64, i64* %envptr295771, i64 1              ; &envptr295771[1]
  %cont293046 = load i64, i64* %envptr295772, align 8                                ; load; *envptr295772
  %cloptr295773 = inttoptr i64 %a292951 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295774 = getelementptr inbounds i64, i64* %cloptr295773, i64 0               ; &cloptr295773[0]
  %f295776 = load i64, i64* %i0ptr295774, align 8                                    ; load; *i0ptr295774
  %fptr295775 = inttoptr i64 %f295776 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295775(i64 %a292951, i64 %cont293046, i64 %a292954, i64 %a292957); tail call
  ret void
}


define void @lam294232(i64 %env294233, i64 %_95293054, i64 %a292957) {
  %envptr295777 = inttoptr i64 %env294233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295778 = getelementptr inbounds i64, i64* %envptr295777, i64 3              ; &envptr295777[3]
  %a292951 = load i64, i64* %envptr295778, align 8                                   ; load; *envptr295778
  %envptr295779 = inttoptr i64 %env294233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295780 = getelementptr inbounds i64, i64* %envptr295779, i64 2              ; &envptr295779[2]
  %a292954 = load i64, i64* %envptr295780, align 8                                   ; load; *envptr295780
  %envptr295781 = inttoptr i64 %env294233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295782 = getelementptr inbounds i64, i64* %envptr295781, i64 1              ; &envptr295781[1]
  %cont293046 = load i64, i64* %envptr295782, align 8                                ; load; *envptr295782
  %cloptr295783 = inttoptr i64 %a292951 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295784 = getelementptr inbounds i64, i64* %cloptr295783, i64 0               ; &cloptr295783[0]
  %f295786 = load i64, i64* %i0ptr295784, align 8                                    ; load; *i0ptr295784
  %fptr295785 = inttoptr i64 %f295786 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295785(i64 %a292951, i64 %cont293046, i64 %a292954, i64 %a292957); tail call
  ret void
}


define void @lam294229(i64 %env294230, i64 %cont293059, i64 %jSA$new) {
  %envptr295787 = inttoptr i64 %env294230 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295788 = getelementptr inbounds i64, i64* %envptr295787, i64 2              ; &envptr295787[2]
  %PvE$_37wind_45stack = load i64, i64* %envptr295788, align 8                       ; load; *envptr295788
  %envptr295789 = inttoptr i64 %env294230 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295790 = getelementptr inbounds i64, i64* %envptr295789, i64 1              ; &envptr295789[1]
  %yQn$_37common_45tail = load i64, i64* %envptr295790, align 8                      ; load; *envptr295790
  %arg293683 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292958 = call i64 @prim_vector_45ref(i64 %PvE$_37wind_45stack, i64 %arg293683)   ; call prim_vector_45ref
  %cloptr295791 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295793 = getelementptr inbounds i64, i64* %cloptr295791, i64 1                ; &eptr295793[1]
  %eptr295794 = getelementptr inbounds i64, i64* %cloptr295791, i64 2                ; &eptr295794[2]
  %eptr295795 = getelementptr inbounds i64, i64* %cloptr295791, i64 3                ; &eptr295795[3]
  store i64 %cont293059, i64* %eptr295793                                            ; *eptr295793 = %cont293059
  store i64 %jSA$new, i64* %eptr295794                                               ; *eptr295794 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295795                                   ; *eptr295795 = %PvE$_37wind_45stack
  %eptr295792 = getelementptr inbounds i64, i64* %cloptr295791, i64 0                ; &cloptr295791[0]
  %f295796 = ptrtoint void(i64,i64,i64)* @lam294226 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295796, i64* %eptr295792                                               ; store fptr
  %arg293687 = ptrtoint i64* %cloptr295791 to i64                                    ; closure cast; i64* -> i64
  %cloptr295797 = inttoptr i64 %yQn$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  %i0ptr295798 = getelementptr inbounds i64, i64* %cloptr295797, i64 0               ; &cloptr295797[0]
  %f295800 = load i64, i64* %i0ptr295798, align 8                                    ; load; *i0ptr295798
  %fptr295799 = inttoptr i64 %f295800 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295799(i64 %yQn$_37common_45tail, i64 %arg293687, i64 %jSA$new, i64 %a292958); tail call
  ret void
}


define void @lam294226(i64 %env294227, i64 %_95293060, i64 %XYU$tail) {
  %envptr295801 = inttoptr i64 %env294227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295802 = getelementptr inbounds i64, i64* %envptr295801, i64 3              ; &envptr295801[3]
  %PvE$_37wind_45stack = load i64, i64* %envptr295802, align 8                       ; load; *envptr295802
  %envptr295803 = inttoptr i64 %env294227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295804 = getelementptr inbounds i64, i64* %envptr295803, i64 2              ; &envptr295803[2]
  %jSA$new = load i64, i64* %envptr295804, align 8                                   ; load; *envptr295804
  %envptr295805 = inttoptr i64 %env294227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295806 = getelementptr inbounds i64, i64* %envptr295805, i64 1              ; &envptr295805[1]
  %cont293059 = load i64, i64* %envptr295806, align 8                                ; load; *envptr295806
  %cloptr295807 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295808 = getelementptr inbounds i64, i64* %cloptr295807, i64 0                ; &cloptr295807[0]
  %f295809 = ptrtoint void(i64,i64)* @lam294224 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f295809, i64* %eptr295808                                               ; store fptr
  %arg293690 = ptrtoint i64* %cloptr295807 to i64                                    ; closure cast; i64* -> i64
  %cloptr295810 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr295812 = getelementptr inbounds i64, i64* %cloptr295810, i64 1                ; &eptr295812[1]
  %eptr295813 = getelementptr inbounds i64, i64* %cloptr295810, i64 2                ; &eptr295813[2]
  %eptr295814 = getelementptr inbounds i64, i64* %cloptr295810, i64 3                ; &eptr295814[3]
  %eptr295815 = getelementptr inbounds i64, i64* %cloptr295810, i64 4                ; &eptr295815[4]
  store i64 %XYU$tail, i64* %eptr295812                                              ; *eptr295812 = %XYU$tail
  store i64 %cont293059, i64* %eptr295813                                            ; *eptr295813 = %cont293059
  store i64 %jSA$new, i64* %eptr295814                                               ; *eptr295814 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295815                                   ; *eptr295815 = %PvE$_37wind_45stack
  %eptr295811 = getelementptr inbounds i64, i64* %cloptr295810, i64 0                ; &cloptr295810[0]
  %f295816 = ptrtoint void(i64,i64,i64)* @lam294221 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295816, i64* %eptr295811                                               ; store fptr
  %arg293689 = ptrtoint i64* %cloptr295810 to i64                                    ; closure cast; i64* -> i64
  %cloptr295817 = inttoptr i64 %arg293690 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295818 = getelementptr inbounds i64, i64* %cloptr295817, i64 0               ; &cloptr295817[0]
  %f295820 = load i64, i64* %i0ptr295818, align 8                                    ; load; *i0ptr295818
  %fptr295819 = inttoptr i64 %f295820 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295819(i64 %arg293690, i64 %arg293689)              ; tail call
  ret void
}


define void @lam294224(i64 %env294225, i64 %zpG$lst293081) {
  %cont293080 = call i64 @prim_car(i64 %zpG$lst293081)                               ; call prim_car
  %zpG$lst = call i64 @prim_cdr(i64 %zpG$lst293081)                                  ; call prim_cdr
  %arg293694 = add i64 0, 0                                                          ; quoted ()
  %cloptr295821 = inttoptr i64 %cont293080 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295822 = getelementptr inbounds i64, i64* %cloptr295821, i64 0               ; &cloptr295821[0]
  %f295824 = load i64, i64* %i0ptr295822, align 8                                    ; load; *i0ptr295822
  %fptr295823 = inttoptr i64 %f295824 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295823(i64 %cont293080, i64 %arg293694, i64 %zpG$lst); tail call
  ret void
}


define void @lam294221(i64 %env294222, i64 %_95293078, i64 %a292959) {
  %envptr295825 = inttoptr i64 %env294222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295826 = getelementptr inbounds i64, i64* %envptr295825, i64 4              ; &envptr295825[4]
  %PvE$_37wind_45stack = load i64, i64* %envptr295826, align 8                       ; load; *envptr295826
  %envptr295827 = inttoptr i64 %env294222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295828 = getelementptr inbounds i64, i64* %envptr295827, i64 3              ; &envptr295827[3]
  %jSA$new = load i64, i64* %envptr295828, align 8                                   ; load; *envptr295828
  %envptr295829 = inttoptr i64 %env294222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295830 = getelementptr inbounds i64, i64* %envptr295829, i64 2              ; &envptr295829[2]
  %cont293059 = load i64, i64* %envptr295830, align 8                                ; load; *envptr295830
  %envptr295831 = inttoptr i64 %env294222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295832 = getelementptr inbounds i64, i64* %envptr295831, i64 1              ; &envptr295831[1]
  %XYU$tail = load i64, i64* %envptr295832, align 8                                  ; load; *envptr295832
  %arg293697 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293079 = call i64 @prim_make_45vector(i64 %arg293697, i64 %a292959)        ; call prim_make_45vector
  %cloptr295833 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr295835 = getelementptr inbounds i64, i64* %cloptr295833, i64 1                ; &eptr295835[1]
  %eptr295836 = getelementptr inbounds i64, i64* %cloptr295833, i64 2                ; &eptr295836[2]
  %eptr295837 = getelementptr inbounds i64, i64* %cloptr295833, i64 3                ; &eptr295837[3]
  %eptr295838 = getelementptr inbounds i64, i64* %cloptr295833, i64 4                ; &eptr295838[4]
  store i64 %XYU$tail, i64* %eptr295835                                              ; *eptr295835 = %XYU$tail
  store i64 %cont293059, i64* %eptr295836                                            ; *eptr295836 = %cont293059
  store i64 %jSA$new, i64* %eptr295837                                               ; *eptr295837 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295838                                   ; *eptr295838 = %PvE$_37wind_45stack
  %eptr295834 = getelementptr inbounds i64, i64* %cloptr295833, i64 0                ; &cloptr295833[0]
  %f295839 = ptrtoint void(i64,i64,i64)* @lam294218 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295839, i64* %eptr295834                                               ; store fptr
  %arg293700 = ptrtoint i64* %cloptr295833 to i64                                    ; closure cast; i64* -> i64
  %arg293699 = add i64 0, 0                                                          ; quoted ()
  %cloptr295840 = inttoptr i64 %arg293700 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295841 = getelementptr inbounds i64, i64* %cloptr295840, i64 0               ; &cloptr295840[0]
  %f295843 = load i64, i64* %i0ptr295841, align 8                                    ; load; *i0ptr295841
  %fptr295842 = inttoptr i64 %f295843 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295842(i64 %arg293700, i64 %arg293699, i64 %retprim293079); tail call
  ret void
}


define void @lam294218(i64 %env294219, i64 %_95293072, i64 %S1Y$f) {
  %envptr295844 = inttoptr i64 %env294219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295845 = getelementptr inbounds i64, i64* %envptr295844, i64 4              ; &envptr295844[4]
  %PvE$_37wind_45stack = load i64, i64* %envptr295845, align 8                       ; load; *envptr295845
  %envptr295846 = inttoptr i64 %env294219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295847 = getelementptr inbounds i64, i64* %envptr295846, i64 3              ; &envptr295846[3]
  %jSA$new = load i64, i64* %envptr295847, align 8                                   ; load; *envptr295847
  %envptr295848 = inttoptr i64 %env294219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295849 = getelementptr inbounds i64, i64* %envptr295848, i64 2              ; &envptr295848[2]
  %cont293059 = load i64, i64* %envptr295849, align 8                                ; load; *envptr295849
  %envptr295850 = inttoptr i64 %env294219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295851 = getelementptr inbounds i64, i64* %envptr295850, i64 1              ; &envptr295850[1]
  %XYU$tail = load i64, i64* %envptr295851, align 8                                  ; load; *envptr295851
  %arg293702 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr295852 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295854 = getelementptr inbounds i64, i64* %cloptr295852, i64 1                ; &eptr295854[1]
  %eptr295855 = getelementptr inbounds i64, i64* %cloptr295852, i64 2                ; &eptr295855[2]
  %eptr295856 = getelementptr inbounds i64, i64* %cloptr295852, i64 3                ; &eptr295856[3]
  store i64 %XYU$tail, i64* %eptr295854                                              ; *eptr295854 = %XYU$tail
  store i64 %S1Y$f, i64* %eptr295855                                                 ; *eptr295855 = %S1Y$f
  store i64 %PvE$_37wind_45stack, i64* %eptr295856                                   ; *eptr295856 = %PvE$_37wind_45stack
  %eptr295853 = getelementptr inbounds i64, i64* %cloptr295852, i64 0                ; &cloptr295852[0]
  %f295857 = ptrtoint void(i64,i64,i64)* @lam294215 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295857, i64* %eptr295853                                               ; store fptr
  %arg293701 = ptrtoint i64* %cloptr295852 to i64                                    ; closure cast; i64* -> i64
  %cRC$_95292849 = call i64 @prim_vector_45set_33(i64 %S1Y$f, i64 %arg293702, i64 %arg293701); call prim_vector_45set_33
  %arg293727 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292967 = call i64 @prim_vector_45ref(i64 %S1Y$f, i64 %arg293727)                 ; call prim_vector_45ref
  %arg293729 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292968 = call i64 @prim_vector_45ref(i64 %PvE$_37wind_45stack, i64 %arg293729)   ; call prim_vector_45ref
  %cloptr295858 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr295860 = getelementptr inbounds i64, i64* %cloptr295858, i64 1                ; &eptr295860[1]
  %eptr295861 = getelementptr inbounds i64, i64* %cloptr295858, i64 2                ; &eptr295861[2]
  %eptr295862 = getelementptr inbounds i64, i64* %cloptr295858, i64 3                ; &eptr295862[3]
  %eptr295863 = getelementptr inbounds i64, i64* %cloptr295858, i64 4                ; &eptr295863[4]
  store i64 %XYU$tail, i64* %eptr295860                                              ; *eptr295860 = %XYU$tail
  store i64 %cont293059, i64* %eptr295861                                            ; *eptr295861 = %cont293059
  store i64 %jSA$new, i64* %eptr295862                                               ; *eptr295862 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295863                                   ; *eptr295863 = %PvE$_37wind_45stack
  %eptr295859 = getelementptr inbounds i64, i64* %cloptr295858, i64 0                ; &cloptr295858[0]
  %f295864 = ptrtoint void(i64,i64,i64)* @lam294203 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295864, i64* %eptr295859                                               ; store fptr
  %arg293732 = ptrtoint i64* %cloptr295858 to i64                                    ; closure cast; i64* -> i64
  %cloptr295865 = inttoptr i64 %a292967 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295866 = getelementptr inbounds i64, i64* %cloptr295865, i64 0               ; &cloptr295865[0]
  %f295868 = load i64, i64* %i0ptr295866, align 8                                    ; load; *i0ptr295866
  %fptr295867 = inttoptr i64 %f295868 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295867(i64 %a292967, i64 %arg293732, i64 %a292968)  ; tail call
  ret void
}


define void @lam294215(i64 %env294216, i64 %cont293073, i64 %bAg$l) {
  %envptr295869 = inttoptr i64 %env294216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295870 = getelementptr inbounds i64, i64* %envptr295869, i64 3              ; &envptr295869[3]
  %PvE$_37wind_45stack = load i64, i64* %envptr295870, align 8                       ; load; *envptr295870
  %envptr295871 = inttoptr i64 %env294216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295872 = getelementptr inbounds i64, i64* %envptr295871, i64 2              ; &envptr295871[2]
  %S1Y$f = load i64, i64* %envptr295872, align 8                                     ; load; *envptr295872
  %envptr295873 = inttoptr i64 %env294216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295874 = getelementptr inbounds i64, i64* %envptr295873, i64 1              ; &envptr295873[1]
  %XYU$tail = load i64, i64* %envptr295874, align 8                                  ; load; *envptr295874
  %a292960 = call i64 @prim_eq_63(i64 %bAg$l, i64 %XYU$tail)                         ; call prim_eq_63
  %a292961 = call i64 @prim_not(i64 %a292960)                                        ; call prim_not
  %cmp295875 = icmp eq i64 %a292961, 15                                              ; false?
  br i1 %cmp295875, label %else295877, label %then295876                             ; if

then295876:
  %a292962 = call i64 @prim_cdr(i64 %bAg$l)                                          ; call prim_cdr
  %arg293709 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293076 = call i64 @prim_vector_45set_33(i64 %PvE$_37wind_45stack, i64 %arg293709, i64 %a292962); call prim_vector_45set_33
  %cloptr295878 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295880 = getelementptr inbounds i64, i64* %cloptr295878, i64 1                ; &eptr295880[1]
  %eptr295881 = getelementptr inbounds i64, i64* %cloptr295878, i64 2                ; &eptr295881[2]
  %eptr295882 = getelementptr inbounds i64, i64* %cloptr295878, i64 3                ; &eptr295882[3]
  store i64 %cont293073, i64* %eptr295880                                            ; *eptr295880 = %cont293073
  store i64 %S1Y$f, i64* %eptr295881                                                 ; *eptr295881 = %S1Y$f
  store i64 %bAg$l, i64* %eptr295882                                                 ; *eptr295882 = %bAg$l
  %eptr295879 = getelementptr inbounds i64, i64* %cloptr295878, i64 0                ; &cloptr295878[0]
  %f295883 = ptrtoint void(i64,i64,i64)* @lam294211 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295883, i64* %eptr295879                                               ; store fptr
  %arg293713 = ptrtoint i64* %cloptr295878 to i64                                    ; closure cast; i64* -> i64
  %arg293712 = add i64 0, 0                                                          ; quoted ()
  %cloptr295884 = inttoptr i64 %arg293713 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295885 = getelementptr inbounds i64, i64* %cloptr295884, i64 0               ; &cloptr295884[0]
  %f295887 = load i64, i64* %i0ptr295885, align 8                                    ; load; *i0ptr295885
  %fptr295886 = inttoptr i64 %f295887 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295886(i64 %arg293713, i64 %arg293712, i64 %retprim293076); tail call
  ret void

else295877:
  %retprim293077 = call i64 @prim_void()                                             ; call prim_void
  %arg293725 = add i64 0, 0                                                          ; quoted ()
  %cloptr295888 = inttoptr i64 %cont293073 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295889 = getelementptr inbounds i64, i64* %cloptr295888, i64 0               ; &cloptr295888[0]
  %f295891 = load i64, i64* %i0ptr295889, align 8                                    ; load; *i0ptr295889
  %fptr295890 = inttoptr i64 %f295891 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295890(i64 %cont293073, i64 %arg293725, i64 %retprim293077); tail call
  ret void
}


define void @lam294211(i64 %env294212, i64 %_95293074, i64 %hl3$_95292850) {
  %envptr295892 = inttoptr i64 %env294212 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295893 = getelementptr inbounds i64, i64* %envptr295892, i64 3              ; &envptr295892[3]
  %bAg$l = load i64, i64* %envptr295893, align 8                                     ; load; *envptr295893
  %envptr295894 = inttoptr i64 %env294212 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295895 = getelementptr inbounds i64, i64* %envptr295894, i64 2              ; &envptr295894[2]
  %S1Y$f = load i64, i64* %envptr295895, align 8                                     ; load; *envptr295895
  %envptr295896 = inttoptr i64 %env294212 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295897 = getelementptr inbounds i64, i64* %envptr295896, i64 1              ; &envptr295896[1]
  %cont293073 = load i64, i64* %envptr295897, align 8                                ; load; *envptr295897
  %a292963 = call i64 @prim_car(i64 %bAg$l)                                          ; call prim_car
  %a292964 = call i64 @prim_cdr(i64 %a292963)                                        ; call prim_cdr
  %cloptr295898 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295900 = getelementptr inbounds i64, i64* %cloptr295898, i64 1                ; &eptr295900[1]
  %eptr295901 = getelementptr inbounds i64, i64* %cloptr295898, i64 2                ; &eptr295901[2]
  %eptr295902 = getelementptr inbounds i64, i64* %cloptr295898, i64 3                ; &eptr295902[3]
  store i64 %cont293073, i64* %eptr295900                                            ; *eptr295900 = %cont293073
  store i64 %S1Y$f, i64* %eptr295901                                                 ; *eptr295901 = %S1Y$f
  store i64 %bAg$l, i64* %eptr295902                                                 ; *eptr295902 = %bAg$l
  %eptr295899 = getelementptr inbounds i64, i64* %cloptr295898, i64 0                ; &cloptr295898[0]
  %f295903 = ptrtoint void(i64,i64,i64)* @lam294209 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295903, i64* %eptr295899                                               ; store fptr
  %arg293716 = ptrtoint i64* %cloptr295898 to i64                                    ; closure cast; i64* -> i64
  %cloptr295904 = inttoptr i64 %a292964 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295905 = getelementptr inbounds i64, i64* %cloptr295904, i64 0               ; &cloptr295904[0]
  %f295907 = load i64, i64* %i0ptr295905, align 8                                    ; load; *i0ptr295905
  %fptr295906 = inttoptr i64 %f295907 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295906(i64 %a292964, i64 %arg293716)                ; tail call
  ret void
}


define void @lam294209(i64 %env294210, i64 %_95293075, i64 %KyQ$_95292851) {
  %envptr295908 = inttoptr i64 %env294210 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295909 = getelementptr inbounds i64, i64* %envptr295908, i64 3              ; &envptr295908[3]
  %bAg$l = load i64, i64* %envptr295909, align 8                                     ; load; *envptr295909
  %envptr295910 = inttoptr i64 %env294210 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295911 = getelementptr inbounds i64, i64* %envptr295910, i64 2              ; &envptr295910[2]
  %S1Y$f = load i64, i64* %envptr295911, align 8                                     ; load; *envptr295911
  %envptr295912 = inttoptr i64 %env294210 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295913 = getelementptr inbounds i64, i64* %envptr295912, i64 1              ; &envptr295912[1]
  %cont293073 = load i64, i64* %envptr295913, align 8                                ; load; *envptr295913
  %arg293718 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292965 = call i64 @prim_vector_45ref(i64 %S1Y$f, i64 %arg293718)                 ; call prim_vector_45ref
  %a292966 = call i64 @prim_cdr(i64 %bAg$l)                                          ; call prim_cdr
  %cloptr295914 = inttoptr i64 %a292965 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295915 = getelementptr inbounds i64, i64* %cloptr295914, i64 0               ; &cloptr295914[0]
  %f295917 = load i64, i64* %i0ptr295915, align 8                                    ; load; *i0ptr295915
  %fptr295916 = inttoptr i64 %f295917 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295916(i64 %a292965, i64 %cont293073, i64 %a292966) ; tail call
  ret void
}


define void @lam294203(i64 %env294204, i64 %_95293061, i64 %K3C$_95292848) {
  %envptr295918 = inttoptr i64 %env294204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295919 = getelementptr inbounds i64, i64* %envptr295918, i64 4              ; &envptr295918[4]
  %PvE$_37wind_45stack = load i64, i64* %envptr295919, align 8                       ; load; *envptr295919
  %envptr295920 = inttoptr i64 %env294204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295921 = getelementptr inbounds i64, i64* %envptr295920, i64 3              ; &envptr295920[3]
  %jSA$new = load i64, i64* %envptr295921, align 8                                   ; load; *envptr295921
  %envptr295922 = inttoptr i64 %env294204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295923 = getelementptr inbounds i64, i64* %envptr295922, i64 2              ; &envptr295922[2]
  %cont293059 = load i64, i64* %envptr295923, align 8                                ; load; *envptr295923
  %envptr295924 = inttoptr i64 %env294204 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295925 = getelementptr inbounds i64, i64* %envptr295924, i64 1              ; &envptr295924[1]
  %XYU$tail = load i64, i64* %envptr295925, align 8                                  ; load; *envptr295925
  %cloptr295926 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr295927 = getelementptr inbounds i64, i64* %cloptr295926, i64 0                ; &cloptr295926[0]
  %f295928 = ptrtoint void(i64,i64)* @lam294201 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f295928, i64* %eptr295927                                               ; store fptr
  %arg293735 = ptrtoint i64* %cloptr295926 to i64                                    ; closure cast; i64* -> i64
  %cloptr295929 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr295931 = getelementptr inbounds i64, i64* %cloptr295929, i64 1                ; &eptr295931[1]
  %eptr295932 = getelementptr inbounds i64, i64* %cloptr295929, i64 2                ; &eptr295932[2]
  %eptr295933 = getelementptr inbounds i64, i64* %cloptr295929, i64 3                ; &eptr295933[3]
  %eptr295934 = getelementptr inbounds i64, i64* %cloptr295929, i64 4                ; &eptr295934[4]
  store i64 %XYU$tail, i64* %eptr295931                                              ; *eptr295931 = %XYU$tail
  store i64 %cont293059, i64* %eptr295932                                            ; *eptr295932 = %cont293059
  store i64 %jSA$new, i64* %eptr295933                                               ; *eptr295933 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295934                                   ; *eptr295934 = %PvE$_37wind_45stack
  %eptr295930 = getelementptr inbounds i64, i64* %cloptr295929, i64 0                ; &cloptr295929[0]
  %f295935 = ptrtoint void(i64,i64,i64)* @lam294198 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295935, i64* %eptr295930                                               ; store fptr
  %arg293734 = ptrtoint i64* %cloptr295929 to i64                                    ; closure cast; i64* -> i64
  %cloptr295936 = inttoptr i64 %arg293735 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295937 = getelementptr inbounds i64, i64* %cloptr295936, i64 0               ; &cloptr295936[0]
  %f295939 = load i64, i64* %i0ptr295937, align 8                                    ; load; *i0ptr295937
  %fptr295938 = inttoptr i64 %f295939 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295938(i64 %arg293735, i64 %arg293734)              ; tail call
  ret void
}


define void @lam294201(i64 %env294202, i64 %Dmn$lst293071) {
  %cont293070 = call i64 @prim_car(i64 %Dmn$lst293071)                               ; call prim_car
  %Dmn$lst = call i64 @prim_cdr(i64 %Dmn$lst293071)                                  ; call prim_cdr
  %arg293739 = add i64 0, 0                                                          ; quoted ()
  %cloptr295940 = inttoptr i64 %cont293070 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr295941 = getelementptr inbounds i64, i64* %cloptr295940, i64 0               ; &cloptr295940[0]
  %f295943 = load i64, i64* %i0ptr295941, align 8                                    ; load; *i0ptr295941
  %fptr295942 = inttoptr i64 %f295943 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295942(i64 %cont293070, i64 %arg293739, i64 %Dmn$lst); tail call
  ret void
}


define void @lam294198(i64 %env294199, i64 %_95293068, i64 %a292969) {
  %envptr295944 = inttoptr i64 %env294199 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295945 = getelementptr inbounds i64, i64* %envptr295944, i64 4              ; &envptr295944[4]
  %PvE$_37wind_45stack = load i64, i64* %envptr295945, align 8                       ; load; *envptr295945
  %envptr295946 = inttoptr i64 %env294199 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295947 = getelementptr inbounds i64, i64* %envptr295946, i64 3              ; &envptr295946[3]
  %jSA$new = load i64, i64* %envptr295947, align 8                                   ; load; *envptr295947
  %envptr295948 = inttoptr i64 %env294199 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295949 = getelementptr inbounds i64, i64* %envptr295948, i64 2              ; &envptr295948[2]
  %cont293059 = load i64, i64* %envptr295949, align 8                                ; load; *envptr295949
  %envptr295950 = inttoptr i64 %env294199 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295951 = getelementptr inbounds i64, i64* %envptr295950, i64 1              ; &envptr295950[1]
  %XYU$tail = load i64, i64* %envptr295951, align 8                                  ; load; *envptr295951
  %arg293742 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293069 = call i64 @prim_make_45vector(i64 %arg293742, i64 %a292969)        ; call prim_make_45vector
  %cloptr295952 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr295954 = getelementptr inbounds i64, i64* %cloptr295952, i64 1                ; &eptr295954[1]
  %eptr295955 = getelementptr inbounds i64, i64* %cloptr295952, i64 2                ; &eptr295955[2]
  %eptr295956 = getelementptr inbounds i64, i64* %cloptr295952, i64 3                ; &eptr295956[3]
  %eptr295957 = getelementptr inbounds i64, i64* %cloptr295952, i64 4                ; &eptr295957[4]
  store i64 %XYU$tail, i64* %eptr295954                                              ; *eptr295954 = %XYU$tail
  store i64 %cont293059, i64* %eptr295955                                            ; *eptr295955 = %cont293059
  store i64 %jSA$new, i64* %eptr295956                                               ; *eptr295956 = %jSA$new
  store i64 %PvE$_37wind_45stack, i64* %eptr295957                                   ; *eptr295957 = %PvE$_37wind_45stack
  %eptr295953 = getelementptr inbounds i64, i64* %cloptr295952, i64 0                ; &cloptr295952[0]
  %f295958 = ptrtoint void(i64,i64,i64)* @lam294195 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295958, i64* %eptr295953                                               ; store fptr
  %arg293745 = ptrtoint i64* %cloptr295952 to i64                                    ; closure cast; i64* -> i64
  %arg293744 = add i64 0, 0                                                          ; quoted ()
  %cloptr295959 = inttoptr i64 %arg293745 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr295960 = getelementptr inbounds i64, i64* %cloptr295959, i64 0               ; &cloptr295959[0]
  %f295962 = load i64, i64* %i0ptr295960, align 8                                    ; load; *i0ptr295960
  %fptr295961 = inttoptr i64 %f295962 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295961(i64 %arg293745, i64 %arg293744, i64 %retprim293069); tail call
  ret void
}


define void @lam294195(i64 %env294196, i64 %_95293062, i64 %hjI$f) {
  %envptr295963 = inttoptr i64 %env294196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295964 = getelementptr inbounds i64, i64* %envptr295963, i64 4              ; &envptr295963[4]
  %PvE$_37wind_45stack = load i64, i64* %envptr295964, align 8                       ; load; *envptr295964
  %envptr295965 = inttoptr i64 %env294196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295966 = getelementptr inbounds i64, i64* %envptr295965, i64 3              ; &envptr295965[3]
  %jSA$new = load i64, i64* %envptr295966, align 8                                   ; load; *envptr295966
  %envptr295967 = inttoptr i64 %env294196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295968 = getelementptr inbounds i64, i64* %envptr295967, i64 2              ; &envptr295967[2]
  %cont293059 = load i64, i64* %envptr295968, align 8                                ; load; *envptr295968
  %envptr295969 = inttoptr i64 %env294196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295970 = getelementptr inbounds i64, i64* %envptr295969, i64 1              ; &envptr295969[1]
  %XYU$tail = load i64, i64* %envptr295970, align 8                                  ; load; *envptr295970
  %arg293747 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr295971 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295973 = getelementptr inbounds i64, i64* %cloptr295971, i64 1                ; &eptr295973[1]
  %eptr295974 = getelementptr inbounds i64, i64* %cloptr295971, i64 2                ; &eptr295974[2]
  %eptr295975 = getelementptr inbounds i64, i64* %cloptr295971, i64 3                ; &eptr295975[3]
  store i64 %hjI$f, i64* %eptr295973                                                 ; *eptr295973 = %hjI$f
  store i64 %XYU$tail, i64* %eptr295974                                              ; *eptr295974 = %XYU$tail
  store i64 %PvE$_37wind_45stack, i64* %eptr295975                                   ; *eptr295975 = %PvE$_37wind_45stack
  %eptr295972 = getelementptr inbounds i64, i64* %cloptr295971, i64 0                ; &cloptr295971[0]
  %f295976 = ptrtoint void(i64,i64,i64)* @lam294192 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295976, i64* %eptr295972                                               ; store fptr
  %arg293746 = ptrtoint i64* %cloptr295971 to i64                                    ; closure cast; i64* -> i64
  %Vko$_95292852 = call i64 @prim_vector_45set_33(i64 %hjI$f, i64 %arg293747, i64 %arg293746); call prim_vector_45set_33
  %arg293771 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292976 = call i64 @prim_vector_45ref(i64 %hjI$f, i64 %arg293771)                 ; call prim_vector_45ref
  %cloptr295977 = inttoptr i64 %a292976 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295978 = getelementptr inbounds i64, i64* %cloptr295977, i64 0               ; &cloptr295977[0]
  %f295980 = load i64, i64* %i0ptr295978, align 8                                    ; load; *i0ptr295978
  %fptr295979 = inttoptr i64 %f295980 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295979(i64 %a292976, i64 %cont293059, i64 %jSA$new) ; tail call
  ret void
}


define void @lam294192(i64 %env294193, i64 %cont293063, i64 %LZ1$l) {
  %envptr295981 = inttoptr i64 %env294193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295982 = getelementptr inbounds i64, i64* %envptr295981, i64 3              ; &envptr295981[3]
  %PvE$_37wind_45stack = load i64, i64* %envptr295982, align 8                       ; load; *envptr295982
  %envptr295983 = inttoptr i64 %env294193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295984 = getelementptr inbounds i64, i64* %envptr295983, i64 2              ; &envptr295983[2]
  %XYU$tail = load i64, i64* %envptr295984, align 8                                  ; load; *envptr295984
  %envptr295985 = inttoptr i64 %env294193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr295986 = getelementptr inbounds i64, i64* %envptr295985, i64 1              ; &envptr295985[1]
  %hjI$f = load i64, i64* %envptr295986, align 8                                     ; load; *envptr295986
  %a292970 = call i64 @prim_eq_63(i64 %LZ1$l, i64 %XYU$tail)                         ; call prim_eq_63
  %a292971 = call i64 @prim_not(i64 %a292970)                                        ; call prim_not
  %cmp295987 = icmp eq i64 %a292971, 15                                              ; false?
  br i1 %cmp295987, label %else295989, label %then295988                             ; if

then295988:
  %arg293752 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292972 = call i64 @prim_vector_45ref(i64 %hjI$f, i64 %arg293752)                 ; call prim_vector_45ref
  %a292973 = call i64 @prim_cdr(i64 %LZ1$l)                                          ; call prim_cdr
  %cloptr295990 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr295992 = getelementptr inbounds i64, i64* %cloptr295990, i64 1                ; &eptr295992[1]
  %eptr295993 = getelementptr inbounds i64, i64* %cloptr295990, i64 2                ; &eptr295993[2]
  %eptr295994 = getelementptr inbounds i64, i64* %cloptr295990, i64 3                ; &eptr295994[3]
  store i64 %LZ1$l, i64* %eptr295992                                                 ; *eptr295992 = %LZ1$l
  store i64 %PvE$_37wind_45stack, i64* %eptr295993                                   ; *eptr295993 = %PvE$_37wind_45stack
  store i64 %cont293063, i64* %eptr295994                                            ; *eptr295994 = %cont293063
  %eptr295991 = getelementptr inbounds i64, i64* %cloptr295990, i64 0                ; &cloptr295990[0]
  %f295995 = ptrtoint void(i64,i64,i64)* @lam294188 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f295995, i64* %eptr295991                                               ; store fptr
  %arg293756 = ptrtoint i64* %cloptr295990 to i64                                    ; closure cast; i64* -> i64
  %cloptr295996 = inttoptr i64 %a292972 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr295997 = getelementptr inbounds i64, i64* %cloptr295996, i64 0               ; &cloptr295996[0]
  %f295999 = load i64, i64* %i0ptr295997, align 8                                    ; load; *i0ptr295997
  %fptr295998 = inttoptr i64 %f295999 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr295998(i64 %a292972, i64 %arg293756, i64 %a292973)  ; tail call
  ret void

else295989:
  %retprim293067 = call i64 @prim_void()                                             ; call prim_void
  %arg293769 = add i64 0, 0                                                          ; quoted ()
  %cloptr296000 = inttoptr i64 %cont293063 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296001 = getelementptr inbounds i64, i64* %cloptr296000, i64 0               ; &cloptr296000[0]
  %f296003 = load i64, i64* %i0ptr296001, align 8                                    ; load; *i0ptr296001
  %fptr296002 = inttoptr i64 %f296003 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296002(i64 %cont293063, i64 %arg293769, i64 %retprim293067); tail call
  ret void
}


define void @lam294188(i64 %env294189, i64 %_95293064, i64 %K1S$_95292853) {
  %envptr296004 = inttoptr i64 %env294189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296005 = getelementptr inbounds i64, i64* %envptr296004, i64 3              ; &envptr296004[3]
  %cont293063 = load i64, i64* %envptr296005, align 8                                ; load; *envptr296005
  %envptr296006 = inttoptr i64 %env294189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296007 = getelementptr inbounds i64, i64* %envptr296006, i64 2              ; &envptr296006[2]
  %PvE$_37wind_45stack = load i64, i64* %envptr296007, align 8                       ; load; *envptr296007
  %envptr296008 = inttoptr i64 %env294189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296009 = getelementptr inbounds i64, i64* %envptr296008, i64 1              ; &envptr296008[1]
  %LZ1$l = load i64, i64* %envptr296009, align 8                                     ; load; *envptr296009
  %a292974 = call i64 @prim_car(i64 %LZ1$l)                                          ; call prim_car
  %a292975 = call i64 @prim_car(i64 %a292974)                                        ; call prim_car
  %cloptr296010 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr296012 = getelementptr inbounds i64, i64* %cloptr296010, i64 1                ; &eptr296012[1]
  %eptr296013 = getelementptr inbounds i64, i64* %cloptr296010, i64 2                ; &eptr296013[2]
  %eptr296014 = getelementptr inbounds i64, i64* %cloptr296010, i64 3                ; &eptr296014[3]
  store i64 %LZ1$l, i64* %eptr296012                                                 ; *eptr296012 = %LZ1$l
  store i64 %PvE$_37wind_45stack, i64* %eptr296013                                   ; *eptr296013 = %PvE$_37wind_45stack
  store i64 %cont293063, i64* %eptr296014                                            ; *eptr296014 = %cont293063
  %eptr296011 = getelementptr inbounds i64, i64* %cloptr296010, i64 0                ; &cloptr296010[0]
  %f296015 = ptrtoint void(i64,i64,i64)* @lam294186 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296015, i64* %eptr296011                                               ; store fptr
  %arg293760 = ptrtoint i64* %cloptr296010 to i64                                    ; closure cast; i64* -> i64
  %cloptr296016 = inttoptr i64 %a292975 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr296017 = getelementptr inbounds i64, i64* %cloptr296016, i64 0               ; &cloptr296016[0]
  %f296019 = load i64, i64* %i0ptr296017, align 8                                    ; load; *i0ptr296017
  %fptr296018 = inttoptr i64 %f296019 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296018(i64 %a292975, i64 %arg293760)                ; tail call
  ret void
}


define void @lam294186(i64 %env294187, i64 %_95293065, i64 %Naz$_95292854) {
  %envptr296020 = inttoptr i64 %env294187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296021 = getelementptr inbounds i64, i64* %envptr296020, i64 3              ; &envptr296020[3]
  %cont293063 = load i64, i64* %envptr296021, align 8                                ; load; *envptr296021
  %envptr296022 = inttoptr i64 %env294187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296023 = getelementptr inbounds i64, i64* %envptr296022, i64 2              ; &envptr296022[2]
  %PvE$_37wind_45stack = load i64, i64* %envptr296023, align 8                       ; load; *envptr296023
  %envptr296024 = inttoptr i64 %env294187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296025 = getelementptr inbounds i64, i64* %envptr296024, i64 1              ; &envptr296024[1]
  %LZ1$l = load i64, i64* %envptr296025, align 8                                     ; load; *envptr296025
  %arg293763 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim293066 = call i64 @prim_vector_45set_33(i64 %PvE$_37wind_45stack, i64 %arg293763, i64 %LZ1$l); call prim_vector_45set_33
  %arg293766 = add i64 0, 0                                                          ; quoted ()
  %cloptr296026 = inttoptr i64 %cont293063 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296027 = getelementptr inbounds i64, i64* %cloptr296026, i64 0               ; &cloptr296026[0]
  %f296029 = load i64, i64* %i0ptr296027, align 8                                    ; load; *i0ptr296027
  %fptr296028 = inttoptr i64 %f296029 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296028(i64 %cont293063, i64 %arg293766, i64 %retprim293066); tail call
  ret void
}


define void @lam294178(i64 %env294179, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr296030 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr296031 = getelementptr inbounds i64, i64* %cloptr296030, i64 0               ; &cloptr296030[0]
  %f296033 = load i64, i64* %i0ptr296031, align 8                                    ; load; *i0ptr296031
  %fptr296032 = inttoptr i64 %f296033 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296032(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam294171(i64 %env294172, i64 %cont293097, i64 %jJE$_37foldl) {
  %envptr296034 = inttoptr i64 %env294172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296035 = getelementptr inbounds i64, i64* %envptr296034, i64 3              ; &envptr296034[3]
  %oBT$_37foldr = load i64, i64* %envptr296035, align 8                              ; load; *envptr296035
  %envptr296036 = inttoptr i64 %env294172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296037 = getelementptr inbounds i64, i64* %envptr296036, i64 2              ; &envptr296036[2]
  %eG7$_37map1 = load i64, i64* %envptr296037, align 8                               ; load; *envptr296037
  %envptr296038 = inttoptr i64 %env294172 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296039 = getelementptr inbounds i64, i64* %envptr296038, i64 1              ; &envptr296038[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296039, align 8                             ; load; *envptr296039
  %arg293784 = add i64 0, 0                                                          ; quoted ()
  %cloptr296040 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296042 = getelementptr inbounds i64, i64* %cloptr296040, i64 1                ; &eptr296042[1]
  %eptr296043 = getelementptr inbounds i64, i64* %cloptr296040, i64 2                ; &eptr296043[2]
  %eptr296044 = getelementptr inbounds i64, i64* %cloptr296040, i64 3                ; &eptr296044[3]
  %eptr296045 = getelementptr inbounds i64, i64* %cloptr296040, i64 4                ; &eptr296045[4]
  store i64 %Wco$_37foldr1, i64* %eptr296042                                         ; *eptr296042 = %Wco$_37foldr1
  store i64 %eG7$_37map1, i64* %eptr296043                                           ; *eptr296043 = %eG7$_37map1
  store i64 %oBT$_37foldr, i64* %eptr296044                                          ; *eptr296044 = %oBT$_37foldr
  store i64 %jJE$_37foldl, i64* %eptr296045                                          ; *eptr296045 = %jJE$_37foldl
  %eptr296041 = getelementptr inbounds i64, i64* %cloptr296040, i64 0                ; &cloptr296040[0]
  %f296046 = ptrtoint void(i64,i64)* @lam294168 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f296046, i64* %eptr296041                                               ; store fptr
  %arg293783 = ptrtoint i64* %cloptr296040 to i64                                    ; closure cast; i64* -> i64
  %cloptr296047 = inttoptr i64 %cont293097 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296048 = getelementptr inbounds i64, i64* %cloptr296047, i64 0               ; &cloptr296047[0]
  %f296050 = load i64, i64* %i0ptr296048, align 8                                    ; load; *i0ptr296048
  %fptr296049 = inttoptr i64 %f296050 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296049(i64 %cont293097, i64 %arg293784, i64 %arg293783); tail call
  ret void
}


define void @lam294168(i64 %env294169, i64 %YP9$args293099) {
  %envptr296051 = inttoptr i64 %env294169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296052 = getelementptr inbounds i64, i64* %envptr296051, i64 4              ; &envptr296051[4]
  %jJE$_37foldl = load i64, i64* %envptr296052, align 8                              ; load; *envptr296052
  %envptr296053 = inttoptr i64 %env294169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296054 = getelementptr inbounds i64, i64* %envptr296053, i64 3              ; &envptr296053[3]
  %oBT$_37foldr = load i64, i64* %envptr296054, align 8                              ; load; *envptr296054
  %envptr296055 = inttoptr i64 %env294169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296056 = getelementptr inbounds i64, i64* %envptr296055, i64 2              ; &envptr296055[2]
  %eG7$_37map1 = load i64, i64* %envptr296056, align 8                               ; load; *envptr296056
  %envptr296057 = inttoptr i64 %env294169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296058 = getelementptr inbounds i64, i64* %envptr296057, i64 1              ; &envptr296057[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296058, align 8                             ; load; *envptr296058
  %cont293098 = call i64 @prim_car(i64 %YP9$args293099)                              ; call prim_car
  %YP9$args = call i64 @prim_cdr(i64 %YP9$args293099)                                ; call prim_cdr
  %MdL$f = call i64 @prim_car(i64 %YP9$args)                                         ; call prim_car
  %a292895 = call i64 @prim_cdr(i64 %YP9$args)                                       ; call prim_cdr
  %retprim293118 = call i64 @prim_car(i64 %a292895)                                  ; call prim_car
  %cloptr296059 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296061 = getelementptr inbounds i64, i64* %cloptr296059, i64 1                ; &eptr296061[1]
  %eptr296062 = getelementptr inbounds i64, i64* %cloptr296059, i64 2                ; &eptr296062[2]
  %eptr296063 = getelementptr inbounds i64, i64* %cloptr296059, i64 3                ; &eptr296063[3]
  %eptr296064 = getelementptr inbounds i64, i64* %cloptr296059, i64 4                ; &eptr296064[4]
  %eptr296065 = getelementptr inbounds i64, i64* %cloptr296059, i64 5                ; &eptr296065[5]
  %eptr296066 = getelementptr inbounds i64, i64* %cloptr296059, i64 6                ; &eptr296066[6]
  %eptr296067 = getelementptr inbounds i64, i64* %cloptr296059, i64 7                ; &eptr296067[7]
  store i64 %MdL$f, i64* %eptr296061                                                 ; *eptr296061 = %MdL$f
  store i64 %Wco$_37foldr1, i64* %eptr296062                                         ; *eptr296062 = %Wco$_37foldr1
  store i64 %eG7$_37map1, i64* %eptr296063                                           ; *eptr296063 = %eG7$_37map1
  store i64 %YP9$args, i64* %eptr296064                                              ; *eptr296064 = %YP9$args
  store i64 %oBT$_37foldr, i64* %eptr296065                                          ; *eptr296065 = %oBT$_37foldr
  store i64 %cont293098, i64* %eptr296066                                            ; *eptr296066 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296067                                          ; *eptr296067 = %jJE$_37foldl
  %eptr296060 = getelementptr inbounds i64, i64* %cloptr296059, i64 0                ; &cloptr296059[0]
  %f296068 = ptrtoint void(i64,i64,i64)* @lam294166 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296068, i64* %eptr296060                                               ; store fptr
  %arg293793 = ptrtoint i64* %cloptr296059 to i64                                    ; closure cast; i64* -> i64
  %arg293792 = add i64 0, 0                                                          ; quoted ()
  %cloptr296069 = inttoptr i64 %arg293793 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr296070 = getelementptr inbounds i64, i64* %cloptr296069, i64 0               ; &cloptr296069[0]
  %f296072 = load i64, i64* %i0ptr296070, align 8                                    ; load; *i0ptr296070
  %fptr296071 = inttoptr i64 %f296072 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296071(i64 %arg293793, i64 %arg293792, i64 %retprim293118); tail call
  ret void
}


define void @lam294166(i64 %env294167, i64 %_95293100, i64 %UUA$acc) {
  %envptr296073 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296074 = getelementptr inbounds i64, i64* %envptr296073, i64 7              ; &envptr296073[7]
  %jJE$_37foldl = load i64, i64* %envptr296074, align 8                              ; load; *envptr296074
  %envptr296075 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296076 = getelementptr inbounds i64, i64* %envptr296075, i64 6              ; &envptr296075[6]
  %cont293098 = load i64, i64* %envptr296076, align 8                                ; load; *envptr296076
  %envptr296077 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296078 = getelementptr inbounds i64, i64* %envptr296077, i64 5              ; &envptr296077[5]
  %oBT$_37foldr = load i64, i64* %envptr296078, align 8                              ; load; *envptr296078
  %envptr296079 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296080 = getelementptr inbounds i64, i64* %envptr296079, i64 4              ; &envptr296079[4]
  %YP9$args = load i64, i64* %envptr296080, align 8                                  ; load; *envptr296080
  %envptr296081 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296082 = getelementptr inbounds i64, i64* %envptr296081, i64 3              ; &envptr296081[3]
  %eG7$_37map1 = load i64, i64* %envptr296082, align 8                               ; load; *envptr296082
  %envptr296083 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296084 = getelementptr inbounds i64, i64* %envptr296083, i64 2              ; &envptr296083[2]
  %Wco$_37foldr1 = load i64, i64* %envptr296084, align 8                             ; load; *envptr296084
  %envptr296085 = inttoptr i64 %env294167 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296086 = getelementptr inbounds i64, i64* %envptr296085, i64 1              ; &envptr296085[1]
  %MdL$f = load i64, i64* %envptr296086, align 8                                     ; load; *envptr296086
  %a292896 = call i64 @prim_cdr(i64 %YP9$args)                                       ; call prim_cdr
  %retprim293117 = call i64 @prim_cdr(i64 %a292896)                                  ; call prim_cdr
  %cloptr296087 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296089 = getelementptr inbounds i64, i64* %cloptr296087, i64 1                ; &eptr296089[1]
  %eptr296090 = getelementptr inbounds i64, i64* %cloptr296087, i64 2                ; &eptr296090[2]
  %eptr296091 = getelementptr inbounds i64, i64* %cloptr296087, i64 3                ; &eptr296091[3]
  %eptr296092 = getelementptr inbounds i64, i64* %cloptr296087, i64 4                ; &eptr296092[4]
  %eptr296093 = getelementptr inbounds i64, i64* %cloptr296087, i64 5                ; &eptr296093[5]
  %eptr296094 = getelementptr inbounds i64, i64* %cloptr296087, i64 6                ; &eptr296094[6]
  %eptr296095 = getelementptr inbounds i64, i64* %cloptr296087, i64 7                ; &eptr296095[7]
  store i64 %MdL$f, i64* %eptr296089                                                 ; *eptr296089 = %MdL$f
  store i64 %Wco$_37foldr1, i64* %eptr296090                                         ; *eptr296090 = %Wco$_37foldr1
  store i64 %eG7$_37map1, i64* %eptr296091                                           ; *eptr296091 = %eG7$_37map1
  store i64 %UUA$acc, i64* %eptr296092                                               ; *eptr296092 = %UUA$acc
  store i64 %oBT$_37foldr, i64* %eptr296093                                          ; *eptr296093 = %oBT$_37foldr
  store i64 %cont293098, i64* %eptr296094                                            ; *eptr296094 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296095                                          ; *eptr296095 = %jJE$_37foldl
  %eptr296088 = getelementptr inbounds i64, i64* %cloptr296087, i64 0                ; &cloptr296087[0]
  %f296096 = ptrtoint void(i64,i64,i64)* @lam294164 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296096, i64* %eptr296088                                               ; store fptr
  %arg293798 = ptrtoint i64* %cloptr296087 to i64                                    ; closure cast; i64* -> i64
  %arg293797 = add i64 0, 0                                                          ; quoted ()
  %cloptr296097 = inttoptr i64 %arg293798 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr296098 = getelementptr inbounds i64, i64* %cloptr296097, i64 0               ; &cloptr296097[0]
  %f296100 = load i64, i64* %i0ptr296098, align 8                                    ; load; *i0ptr296098
  %fptr296099 = inttoptr i64 %f296100 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296099(i64 %arg293798, i64 %arg293797, i64 %retprim293117); tail call
  ret void
}


define void @lam294164(i64 %env294165, i64 %_95293101, i64 %zlv$lsts) {
  %envptr296101 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296102 = getelementptr inbounds i64, i64* %envptr296101, i64 7              ; &envptr296101[7]
  %jJE$_37foldl = load i64, i64* %envptr296102, align 8                              ; load; *envptr296102
  %envptr296103 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296104 = getelementptr inbounds i64, i64* %envptr296103, i64 6              ; &envptr296103[6]
  %cont293098 = load i64, i64* %envptr296104, align 8                                ; load; *envptr296104
  %envptr296105 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296106 = getelementptr inbounds i64, i64* %envptr296105, i64 5              ; &envptr296105[5]
  %oBT$_37foldr = load i64, i64* %envptr296106, align 8                              ; load; *envptr296106
  %envptr296107 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296108 = getelementptr inbounds i64, i64* %envptr296107, i64 4              ; &envptr296107[4]
  %UUA$acc = load i64, i64* %envptr296108, align 8                                   ; load; *envptr296108
  %envptr296109 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296110 = getelementptr inbounds i64, i64* %envptr296109, i64 3              ; &envptr296109[3]
  %eG7$_37map1 = load i64, i64* %envptr296110, align 8                               ; load; *envptr296110
  %envptr296111 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296112 = getelementptr inbounds i64, i64* %envptr296111, i64 2              ; &envptr296111[2]
  %Wco$_37foldr1 = load i64, i64* %envptr296112, align 8                             ; load; *envptr296112
  %envptr296113 = inttoptr i64 %env294165 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296114 = getelementptr inbounds i64, i64* %envptr296113, i64 1              ; &envptr296113[1]
  %MdL$f = load i64, i64* %envptr296114, align 8                                     ; load; *envptr296114
  %cloptr296115 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296117 = getelementptr inbounds i64, i64* %cloptr296115, i64 1                ; &eptr296117[1]
  %eptr296118 = getelementptr inbounds i64, i64* %cloptr296115, i64 2                ; &eptr296118[2]
  %eptr296119 = getelementptr inbounds i64, i64* %cloptr296115, i64 3                ; &eptr296119[3]
  %eptr296120 = getelementptr inbounds i64, i64* %cloptr296115, i64 4                ; &eptr296120[4]
  %eptr296121 = getelementptr inbounds i64, i64* %cloptr296115, i64 5                ; &eptr296121[5]
  %eptr296122 = getelementptr inbounds i64, i64* %cloptr296115, i64 6                ; &eptr296122[6]
  %eptr296123 = getelementptr inbounds i64, i64* %cloptr296115, i64 7                ; &eptr296123[7]
  store i64 %MdL$f, i64* %eptr296117                                                 ; *eptr296117 = %MdL$f
  store i64 %zlv$lsts, i64* %eptr296118                                              ; *eptr296118 = %zlv$lsts
  store i64 %eG7$_37map1, i64* %eptr296119                                           ; *eptr296119 = %eG7$_37map1
  store i64 %UUA$acc, i64* %eptr296120                                               ; *eptr296120 = %UUA$acc
  store i64 %oBT$_37foldr, i64* %eptr296121                                          ; *eptr296121 = %oBT$_37foldr
  store i64 %cont293098, i64* %eptr296122                                            ; *eptr296122 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296123                                          ; *eptr296123 = %jJE$_37foldl
  %eptr296116 = getelementptr inbounds i64, i64* %cloptr296115, i64 0                ; &cloptr296115[0]
  %f296124 = ptrtoint void(i64,i64,i64)* @lam294162 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296124, i64* %eptr296116                                               ; store fptr
  %arg293802 = ptrtoint i64* %cloptr296115 to i64                                    ; closure cast; i64* -> i64
  %cloptr296125 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296126 = getelementptr inbounds i64, i64* %cloptr296125, i64 0                ; &cloptr296125[0]
  %f296127 = ptrtoint void(i64,i64,i64,i64)* @lam294141 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296127, i64* %eptr296126                                               ; store fptr
  %arg293801 = ptrtoint i64* %cloptr296125 to i64                                    ; closure cast; i64* -> i64
  %arg293800 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr296128 = inttoptr i64 %Wco$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296129 = getelementptr inbounds i64, i64* %cloptr296128, i64 0               ; &cloptr296128[0]
  %f296131 = load i64, i64* %i0ptr296129, align 8                                    ; load; *i0ptr296129
  %fptr296130 = inttoptr i64 %f296131 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296130(i64 %Wco$_37foldr1, i64 %arg293802, i64 %arg293801, i64 %arg293800, i64 %zlv$lsts); tail call
  ret void
}


define void @lam294162(i64 %env294163, i64 %_95293102, i64 %a292897) {
  %envptr296132 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296133 = getelementptr inbounds i64, i64* %envptr296132, i64 7              ; &envptr296132[7]
  %jJE$_37foldl = load i64, i64* %envptr296133, align 8                              ; load; *envptr296133
  %envptr296134 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296135 = getelementptr inbounds i64, i64* %envptr296134, i64 6              ; &envptr296134[6]
  %cont293098 = load i64, i64* %envptr296135, align 8                                ; load; *envptr296135
  %envptr296136 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296137 = getelementptr inbounds i64, i64* %envptr296136, i64 5              ; &envptr296136[5]
  %oBT$_37foldr = load i64, i64* %envptr296137, align 8                              ; load; *envptr296137
  %envptr296138 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296139 = getelementptr inbounds i64, i64* %envptr296138, i64 4              ; &envptr296138[4]
  %UUA$acc = load i64, i64* %envptr296139, align 8                                   ; load; *envptr296139
  %envptr296140 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296141 = getelementptr inbounds i64, i64* %envptr296140, i64 3              ; &envptr296140[3]
  %eG7$_37map1 = load i64, i64* %envptr296141, align 8                               ; load; *envptr296141
  %envptr296142 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296143 = getelementptr inbounds i64, i64* %envptr296142, i64 2              ; &envptr296142[2]
  %zlv$lsts = load i64, i64* %envptr296143, align 8                                  ; load; *envptr296143
  %envptr296144 = inttoptr i64 %env294163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296145 = getelementptr inbounds i64, i64* %envptr296144, i64 1              ; &envptr296144[1]
  %MdL$f = load i64, i64* %envptr296145, align 8                                     ; load; *envptr296145
  %cmp296146 = icmp eq i64 %a292897, 15                                              ; false?
  br i1 %cmp296146, label %else296148, label %then296147                             ; if

then296147:
  %arg293805 = add i64 0, 0                                                          ; quoted ()
  %cloptr296149 = inttoptr i64 %cont293098 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296150 = getelementptr inbounds i64, i64* %cloptr296149, i64 0               ; &cloptr296149[0]
  %f296152 = load i64, i64* %i0ptr296150, align 8                                    ; load; *i0ptr296150
  %fptr296151 = inttoptr i64 %f296152 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296151(i64 %cont293098, i64 %arg293805, i64 %UUA$acc); tail call
  ret void

else296148:
  %cloptr296153 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296155 = getelementptr inbounds i64, i64* %cloptr296153, i64 1                ; &eptr296155[1]
  %eptr296156 = getelementptr inbounds i64, i64* %cloptr296153, i64 2                ; &eptr296156[2]
  %eptr296157 = getelementptr inbounds i64, i64* %cloptr296153, i64 3                ; &eptr296157[3]
  %eptr296158 = getelementptr inbounds i64, i64* %cloptr296153, i64 4                ; &eptr296158[4]
  %eptr296159 = getelementptr inbounds i64, i64* %cloptr296153, i64 5                ; &eptr296159[5]
  %eptr296160 = getelementptr inbounds i64, i64* %cloptr296153, i64 6                ; &eptr296160[6]
  %eptr296161 = getelementptr inbounds i64, i64* %cloptr296153, i64 7                ; &eptr296161[7]
  store i64 %MdL$f, i64* %eptr296155                                                 ; *eptr296155 = %MdL$f
  store i64 %zlv$lsts, i64* %eptr296156                                              ; *eptr296156 = %zlv$lsts
  store i64 %eG7$_37map1, i64* %eptr296157                                           ; *eptr296157 = %eG7$_37map1
  store i64 %UUA$acc, i64* %eptr296158                                               ; *eptr296158 = %UUA$acc
  store i64 %oBT$_37foldr, i64* %eptr296159                                          ; *eptr296159 = %oBT$_37foldr
  store i64 %cont293098, i64* %eptr296160                                            ; *eptr296160 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296161                                          ; *eptr296161 = %jJE$_37foldl
  %eptr296154 = getelementptr inbounds i64, i64* %cloptr296153, i64 0                ; &cloptr296153[0]
  %f296162 = ptrtoint void(i64,i64,i64)* @lam294160 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296162, i64* %eptr296154                                               ; store fptr
  %arg293809 = ptrtoint i64* %cloptr296153 to i64                                    ; closure cast; i64* -> i64
  %cloptr296163 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296164 = getelementptr inbounds i64, i64* %cloptr296163, i64 0                ; &cloptr296163[0]
  %f296165 = ptrtoint void(i64,i64,i64)* @lam294145 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296165, i64* %eptr296164                                               ; store fptr
  %arg293808 = ptrtoint i64* %cloptr296163 to i64                                    ; closure cast; i64* -> i64
  %cloptr296166 = inttoptr i64 %eG7$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr296167 = getelementptr inbounds i64, i64* %cloptr296166, i64 0               ; &cloptr296166[0]
  %f296169 = load i64, i64* %i0ptr296167, align 8                                    ; load; *i0ptr296167
  %fptr296168 = inttoptr i64 %f296169 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296168(i64 %eG7$_37map1, i64 %arg293809, i64 %arg293808, i64 %zlv$lsts); tail call
  ret void
}


define void @lam294160(i64 %env294161, i64 %_95293103, i64 %T8h$lsts_43) {
  %envptr296170 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296171 = getelementptr inbounds i64, i64* %envptr296170, i64 7              ; &envptr296170[7]
  %jJE$_37foldl = load i64, i64* %envptr296171, align 8                              ; load; *envptr296171
  %envptr296172 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296173 = getelementptr inbounds i64, i64* %envptr296172, i64 6              ; &envptr296172[6]
  %cont293098 = load i64, i64* %envptr296173, align 8                                ; load; *envptr296173
  %envptr296174 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296175 = getelementptr inbounds i64, i64* %envptr296174, i64 5              ; &envptr296174[5]
  %oBT$_37foldr = load i64, i64* %envptr296175, align 8                              ; load; *envptr296175
  %envptr296176 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296177 = getelementptr inbounds i64, i64* %envptr296176, i64 4              ; &envptr296176[4]
  %UUA$acc = load i64, i64* %envptr296177, align 8                                   ; load; *envptr296177
  %envptr296178 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296179 = getelementptr inbounds i64, i64* %envptr296178, i64 3              ; &envptr296178[3]
  %eG7$_37map1 = load i64, i64* %envptr296179, align 8                               ; load; *envptr296179
  %envptr296180 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296181 = getelementptr inbounds i64, i64* %envptr296180, i64 2              ; &envptr296180[2]
  %zlv$lsts = load i64, i64* %envptr296181, align 8                                  ; load; *envptr296181
  %envptr296182 = inttoptr i64 %env294161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296183 = getelementptr inbounds i64, i64* %envptr296182, i64 1              ; &envptr296182[1]
  %MdL$f = load i64, i64* %envptr296183, align 8                                     ; load; *envptr296183
  %cloptr296184 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr296186 = getelementptr inbounds i64, i64* %cloptr296184, i64 1                ; &eptr296186[1]
  %eptr296187 = getelementptr inbounds i64, i64* %cloptr296184, i64 2                ; &eptr296187[2]
  %eptr296188 = getelementptr inbounds i64, i64* %cloptr296184, i64 3                ; &eptr296188[3]
  %eptr296189 = getelementptr inbounds i64, i64* %cloptr296184, i64 4                ; &eptr296189[4]
  %eptr296190 = getelementptr inbounds i64, i64* %cloptr296184, i64 5                ; &eptr296190[5]
  %eptr296191 = getelementptr inbounds i64, i64* %cloptr296184, i64 6                ; &eptr296191[6]
  store i64 %T8h$lsts_43, i64* %eptr296186                                           ; *eptr296186 = %T8h$lsts_43
  store i64 %MdL$f, i64* %eptr296187                                                 ; *eptr296187 = %MdL$f
  store i64 %UUA$acc, i64* %eptr296188                                               ; *eptr296188 = %UUA$acc
  store i64 %oBT$_37foldr, i64* %eptr296189                                          ; *eptr296189 = %oBT$_37foldr
  store i64 %cont293098, i64* %eptr296190                                            ; *eptr296190 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296191                                          ; *eptr296191 = %jJE$_37foldl
  %eptr296185 = getelementptr inbounds i64, i64* %cloptr296184, i64 0                ; &cloptr296184[0]
  %f296192 = ptrtoint void(i64,i64,i64)* @lam294158 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296192, i64* %eptr296185                                               ; store fptr
  %arg293813 = ptrtoint i64* %cloptr296184 to i64                                    ; closure cast; i64* -> i64
  %cloptr296193 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296194 = getelementptr inbounds i64, i64* %cloptr296193, i64 0                ; &cloptr296193[0]
  %f296195 = ptrtoint void(i64,i64,i64)* @lam294148 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296195, i64* %eptr296194                                               ; store fptr
  %arg293812 = ptrtoint i64* %cloptr296193 to i64                                    ; closure cast; i64* -> i64
  %cloptr296196 = inttoptr i64 %eG7$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr296197 = getelementptr inbounds i64, i64* %cloptr296196, i64 0               ; &cloptr296196[0]
  %f296199 = load i64, i64* %i0ptr296197, align 8                                    ; load; *i0ptr296197
  %fptr296198 = inttoptr i64 %f296199 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296198(i64 %eG7$_37map1, i64 %arg293813, i64 %arg293812, i64 %zlv$lsts); tail call
  ret void
}


define void @lam294158(i64 %env294159, i64 %_95293104, i64 %bpd$vs) {
  %envptr296200 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296201 = getelementptr inbounds i64, i64* %envptr296200, i64 6              ; &envptr296200[6]
  %jJE$_37foldl = load i64, i64* %envptr296201, align 8                              ; load; *envptr296201
  %envptr296202 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296203 = getelementptr inbounds i64, i64* %envptr296202, i64 5              ; &envptr296202[5]
  %cont293098 = load i64, i64* %envptr296203, align 8                                ; load; *envptr296203
  %envptr296204 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296205 = getelementptr inbounds i64, i64* %envptr296204, i64 4              ; &envptr296204[4]
  %oBT$_37foldr = load i64, i64* %envptr296205, align 8                              ; load; *envptr296205
  %envptr296206 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296207 = getelementptr inbounds i64, i64* %envptr296206, i64 3              ; &envptr296206[3]
  %UUA$acc = load i64, i64* %envptr296207, align 8                                   ; load; *envptr296207
  %envptr296208 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296209 = getelementptr inbounds i64, i64* %envptr296208, i64 2              ; &envptr296208[2]
  %MdL$f = load i64, i64* %envptr296209, align 8                                     ; load; *envptr296209
  %envptr296210 = inttoptr i64 %env294159 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296211 = getelementptr inbounds i64, i64* %envptr296210, i64 1              ; &envptr296210[1]
  %T8h$lsts_43 = load i64, i64* %envptr296211, align 8                               ; load; *envptr296211
  %arg293815 = add i64 0, 0                                                          ; quoted ()
  %a292898 = call i64 @prim_cons(i64 %UUA$acc, i64 %arg293815)                       ; call prim_cons
  %cloptr296212 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296214 = getelementptr inbounds i64, i64* %cloptr296212, i64 1                ; &eptr296214[1]
  %eptr296215 = getelementptr inbounds i64, i64* %cloptr296212, i64 2                ; &eptr296215[2]
  %eptr296216 = getelementptr inbounds i64, i64* %cloptr296212, i64 3                ; &eptr296216[3]
  %eptr296217 = getelementptr inbounds i64, i64* %cloptr296212, i64 4                ; &eptr296217[4]
  store i64 %T8h$lsts_43, i64* %eptr296214                                           ; *eptr296214 = %T8h$lsts_43
  store i64 %MdL$f, i64* %eptr296215                                                 ; *eptr296215 = %MdL$f
  store i64 %cont293098, i64* %eptr296216                                            ; *eptr296216 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296217                                          ; *eptr296217 = %jJE$_37foldl
  %eptr296213 = getelementptr inbounds i64, i64* %cloptr296212, i64 0                ; &cloptr296212[0]
  %f296218 = ptrtoint void(i64,i64,i64)* @lam294155 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296218, i64* %eptr296213                                               ; store fptr
  %arg293820 = ptrtoint i64* %cloptr296212 to i64                                    ; closure cast; i64* -> i64
  %cloptr296219 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296220 = getelementptr inbounds i64, i64* %cloptr296219, i64 0                ; &cloptr296219[0]
  %f296221 = ptrtoint void(i64,i64,i64,i64)* @lam294151 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296221, i64* %eptr296220                                               ; store fptr
  %arg293819 = ptrtoint i64* %cloptr296219 to i64                                    ; closure cast; i64* -> i64
  %cloptr296222 = inttoptr i64 %oBT$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr296223 = getelementptr inbounds i64, i64* %cloptr296222, i64 0               ; &cloptr296222[0]
  %f296225 = load i64, i64* %i0ptr296223, align 8                                    ; load; *i0ptr296223
  %fptr296224 = inttoptr i64 %f296225 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296224(i64 %oBT$_37foldr, i64 %arg293820, i64 %arg293819, i64 %a292898, i64 %bpd$vs); tail call
  ret void
}


define void @lam294155(i64 %env294156, i64 %_95293107, i64 %a292899) {
  %envptr296226 = inttoptr i64 %env294156 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296227 = getelementptr inbounds i64, i64* %envptr296226, i64 4              ; &envptr296226[4]
  %jJE$_37foldl = load i64, i64* %envptr296227, align 8                              ; load; *envptr296227
  %envptr296228 = inttoptr i64 %env294156 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296229 = getelementptr inbounds i64, i64* %envptr296228, i64 3              ; &envptr296228[3]
  %cont293098 = load i64, i64* %envptr296229, align 8                                ; load; *envptr296229
  %envptr296230 = inttoptr i64 %env294156 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296231 = getelementptr inbounds i64, i64* %envptr296230, i64 2              ; &envptr296230[2]
  %MdL$f = load i64, i64* %envptr296231, align 8                                     ; load; *envptr296231
  %envptr296232 = inttoptr i64 %env294156 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296233 = getelementptr inbounds i64, i64* %envptr296232, i64 1              ; &envptr296232[1]
  %T8h$lsts_43 = load i64, i64* %envptr296233, align 8                               ; load; *envptr296233
  %cloptr296234 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296236 = getelementptr inbounds i64, i64* %cloptr296234, i64 1                ; &eptr296236[1]
  %eptr296237 = getelementptr inbounds i64, i64* %cloptr296234, i64 2                ; &eptr296237[2]
  %eptr296238 = getelementptr inbounds i64, i64* %cloptr296234, i64 3                ; &eptr296238[3]
  %eptr296239 = getelementptr inbounds i64, i64* %cloptr296234, i64 4                ; &eptr296239[4]
  store i64 %T8h$lsts_43, i64* %eptr296236                                           ; *eptr296236 = %T8h$lsts_43
  store i64 %MdL$f, i64* %eptr296237                                                 ; *eptr296237 = %MdL$f
  store i64 %cont293098, i64* %eptr296238                                            ; *eptr296238 = %cont293098
  store i64 %jJE$_37foldl, i64* %eptr296239                                          ; *eptr296239 = %jJE$_37foldl
  %eptr296235 = getelementptr inbounds i64, i64* %cloptr296234, i64 0                ; &cloptr296234[0]
  %f296240 = ptrtoint void(i64,i64,i64)* @lam294153 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296240, i64* %eptr296235                                               ; store fptr
  %arg293823 = ptrtoint i64* %cloptr296234 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst293108 = call i64 @prim_cons(i64 %arg293823, i64 %a292899)               ; call prim_cons
  %cloptr296241 = inttoptr i64 %MdL$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296242 = getelementptr inbounds i64, i64* %cloptr296241, i64 0               ; &cloptr296241[0]
  %f296244 = load i64, i64* %i0ptr296242, align 8                                    ; load; *i0ptr296242
  %fptr296243 = inttoptr i64 %f296244 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296243(i64 %MdL$f, i64 %cps_45lst293108)            ; tail call
  ret void
}


define void @lam294153(i64 %env294154, i64 %_95293105, i64 %IdI$acc_43) {
  %envptr296245 = inttoptr i64 %env294154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296246 = getelementptr inbounds i64, i64* %envptr296245, i64 4              ; &envptr296245[4]
  %jJE$_37foldl = load i64, i64* %envptr296246, align 8                              ; load; *envptr296246
  %envptr296247 = inttoptr i64 %env294154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296248 = getelementptr inbounds i64, i64* %envptr296247, i64 3              ; &envptr296247[3]
  %cont293098 = load i64, i64* %envptr296248, align 8                                ; load; *envptr296248
  %envptr296249 = inttoptr i64 %env294154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296250 = getelementptr inbounds i64, i64* %envptr296249, i64 2              ; &envptr296249[2]
  %MdL$f = load i64, i64* %envptr296250, align 8                                     ; load; *envptr296250
  %envptr296251 = inttoptr i64 %env294154 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296252 = getelementptr inbounds i64, i64* %envptr296251, i64 1              ; &envptr296251[1]
  %T8h$lsts_43 = load i64, i64* %envptr296252, align 8                               ; load; *envptr296252
  %a292900 = call i64 @prim_cons(i64 %IdI$acc_43, i64 %T8h$lsts_43)                  ; call prim_cons
  %a292901 = call i64 @prim_cons(i64 %MdL$f, i64 %a292900)                           ; call prim_cons
  %cps_45lst293106 = call i64 @prim_cons(i64 %cont293098, i64 %a292901)              ; call prim_cons
  %cloptr296253 = inttoptr i64 %jJE$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr296254 = getelementptr inbounds i64, i64* %cloptr296253, i64 0               ; &cloptr296253[0]
  %f296256 = load i64, i64* %i0ptr296254, align 8                                    ; load; *i0ptr296254
  %fptr296255 = inttoptr i64 %f296256 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296255(i64 %jJE$_37foldl, i64 %cps_45lst293106)     ; tail call
  ret void
}


define void @lam294151(i64 %env294152, i64 %cont293109, i64 %gB7$a, i64 %CXG$b) {
  %retprim293110 = call i64 @prim_cons(i64 %gB7$a, i64 %CXG$b)                       ; call prim_cons
  %arg293833 = add i64 0, 0                                                          ; quoted ()
  %cloptr296257 = inttoptr i64 %cont293109 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296258 = getelementptr inbounds i64, i64* %cloptr296257, i64 0               ; &cloptr296257[0]
  %f296260 = load i64, i64* %i0ptr296258, align 8                                    ; load; *i0ptr296258
  %fptr296259 = inttoptr i64 %f296260 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296259(i64 %cont293109, i64 %arg293833, i64 %retprim293110); tail call
  ret void
}


define void @lam294148(i64 %env294149, i64 %cont293111, i64 %YLs$x) {
  %retprim293112 = call i64 @prim_car(i64 %YLs$x)                                    ; call prim_car
  %arg293837 = add i64 0, 0                                                          ; quoted ()
  %cloptr296261 = inttoptr i64 %cont293111 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296262 = getelementptr inbounds i64, i64* %cloptr296261, i64 0               ; &cloptr296261[0]
  %f296264 = load i64, i64* %i0ptr296262, align 8                                    ; load; *i0ptr296262
  %fptr296263 = inttoptr i64 %f296264 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296263(i64 %cont293111, i64 %arg293837, i64 %retprim293112); tail call
  ret void
}


define void @lam294145(i64 %env294146, i64 %cont293113, i64 %SHs$x) {
  %retprim293114 = call i64 @prim_cdr(i64 %SHs$x)                                    ; call prim_cdr
  %arg293841 = add i64 0, 0                                                          ; quoted ()
  %cloptr296265 = inttoptr i64 %cont293113 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296266 = getelementptr inbounds i64, i64* %cloptr296265, i64 0               ; &cloptr296265[0]
  %f296268 = load i64, i64* %i0ptr296266, align 8                                    ; load; *i0ptr296266
  %fptr296267 = inttoptr i64 %f296268 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296267(i64 %cont293113, i64 %arg293841, i64 %retprim293114); tail call
  ret void
}


define void @lam294141(i64 %env294142, i64 %cont293115, i64 %s3F$lst, i64 %HP8$b) {
  %cmp296269 = icmp eq i64 %HP8$b, 15                                                ; false?
  br i1 %cmp296269, label %else296271, label %then296270                             ; if

then296270:
  %arg293844 = add i64 0, 0                                                          ; quoted ()
  %cloptr296272 = inttoptr i64 %cont293115 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296273 = getelementptr inbounds i64, i64* %cloptr296272, i64 0               ; &cloptr296272[0]
  %f296275 = load i64, i64* %i0ptr296273, align 8                                    ; load; *i0ptr296273
  %fptr296274 = inttoptr i64 %f296275 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296274(i64 %cont293115, i64 %arg293844, i64 %HP8$b) ; tail call
  ret void

else296271:
  %retprim293116 = call i64 @prim_null_63(i64 %s3F$lst)                              ; call prim_null_63
  %arg293848 = add i64 0, 0                                                          ; quoted ()
  %cloptr296276 = inttoptr i64 %cont293115 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296277 = getelementptr inbounds i64, i64* %cloptr296276, i64 0               ; &cloptr296276[0]
  %f296279 = load i64, i64* %i0ptr296277, align 8                                    ; load; *i0ptr296277
  %fptr296278 = inttoptr i64 %f296279 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296278(i64 %cont293115, i64 %arg293848, i64 %retprim293116); tail call
  ret void
}


define void @lam294134(i64 %env294135, i64 %cont293119, i64 %IVR$_37foldr) {
  %envptr296280 = inttoptr i64 %env294135 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296281 = getelementptr inbounds i64, i64* %envptr296280, i64 2              ; &envptr296280[2]
  %J19$_37map1 = load i64, i64* %envptr296281, align 8                               ; load; *envptr296281
  %envptr296282 = inttoptr i64 %env294135 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296283 = getelementptr inbounds i64, i64* %envptr296282, i64 1              ; &envptr296282[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296283, align 8                             ; load; *envptr296283
  %arg293851 = add i64 0, 0                                                          ; quoted ()
  %cloptr296284 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr296286 = getelementptr inbounds i64, i64* %cloptr296284, i64 1                ; &eptr296286[1]
  %eptr296287 = getelementptr inbounds i64, i64* %cloptr296284, i64 2                ; &eptr296287[2]
  %eptr296288 = getelementptr inbounds i64, i64* %cloptr296284, i64 3                ; &eptr296288[3]
  store i64 %Wco$_37foldr1, i64* %eptr296286                                         ; *eptr296286 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296287                                          ; *eptr296287 = %IVR$_37foldr
  store i64 %J19$_37map1, i64* %eptr296288                                           ; *eptr296288 = %J19$_37map1
  %eptr296285 = getelementptr inbounds i64, i64* %cloptr296284, i64 0                ; &cloptr296284[0]
  %f296289 = ptrtoint void(i64,i64)* @lam294131 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f296289, i64* %eptr296285                                               ; store fptr
  %arg293850 = ptrtoint i64* %cloptr296284 to i64                                    ; closure cast; i64* -> i64
  %cloptr296290 = inttoptr i64 %cont293119 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296291 = getelementptr inbounds i64, i64* %cloptr296290, i64 0               ; &cloptr296290[0]
  %f296293 = load i64, i64* %i0ptr296291, align 8                                    ; load; *i0ptr296291
  %fptr296292 = inttoptr i64 %f296293 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296292(i64 %cont293119, i64 %arg293851, i64 %arg293850); tail call
  ret void
}


define void @lam294131(i64 %env294132, i64 %ER1$args293121) {
  %envptr296294 = inttoptr i64 %env294132 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296295 = getelementptr inbounds i64, i64* %envptr296294, i64 3              ; &envptr296294[3]
  %J19$_37map1 = load i64, i64* %envptr296295, align 8                               ; load; *envptr296295
  %envptr296296 = inttoptr i64 %env294132 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296297 = getelementptr inbounds i64, i64* %envptr296296, i64 2              ; &envptr296296[2]
  %IVR$_37foldr = load i64, i64* %envptr296297, align 8                              ; load; *envptr296297
  %envptr296298 = inttoptr i64 %env294132 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296299 = getelementptr inbounds i64, i64* %envptr296298, i64 1              ; &envptr296298[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296299, align 8                             ; load; *envptr296299
  %cont293120 = call i64 @prim_car(i64 %ER1$args293121)                              ; call prim_car
  %ER1$args = call i64 @prim_cdr(i64 %ER1$args293121)                                ; call prim_cdr
  %RVQ$f = call i64 @prim_car(i64 %ER1$args)                                         ; call prim_car
  %a292881 = call i64 @prim_cdr(i64 %ER1$args)                                       ; call prim_cdr
  %retprim293140 = call i64 @prim_car(i64 %a292881)                                  ; call prim_car
  %cloptr296300 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr296302 = getelementptr inbounds i64, i64* %cloptr296300, i64 1                ; &eptr296302[1]
  %eptr296303 = getelementptr inbounds i64, i64* %cloptr296300, i64 2                ; &eptr296303[2]
  %eptr296304 = getelementptr inbounds i64, i64* %cloptr296300, i64 3                ; &eptr296304[3]
  %eptr296305 = getelementptr inbounds i64, i64* %cloptr296300, i64 4                ; &eptr296305[4]
  %eptr296306 = getelementptr inbounds i64, i64* %cloptr296300, i64 5                ; &eptr296306[5]
  %eptr296307 = getelementptr inbounds i64, i64* %cloptr296300, i64 6                ; &eptr296307[6]
  store i64 %Wco$_37foldr1, i64* %eptr296302                                         ; *eptr296302 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296303                                          ; *eptr296303 = %IVR$_37foldr
  store i64 %cont293120, i64* %eptr296304                                            ; *eptr296304 = %cont293120
  store i64 %RVQ$f, i64* %eptr296305                                                 ; *eptr296305 = %RVQ$f
  store i64 %J19$_37map1, i64* %eptr296306                                           ; *eptr296306 = %J19$_37map1
  store i64 %ER1$args, i64* %eptr296307                                              ; *eptr296307 = %ER1$args
  %eptr296301 = getelementptr inbounds i64, i64* %cloptr296300, i64 0                ; &cloptr296300[0]
  %f296308 = ptrtoint void(i64,i64,i64)* @lam294129 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296308, i64* %eptr296301                                               ; store fptr
  %arg293860 = ptrtoint i64* %cloptr296300 to i64                                    ; closure cast; i64* -> i64
  %arg293859 = add i64 0, 0                                                          ; quoted ()
  %cloptr296309 = inttoptr i64 %arg293860 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr296310 = getelementptr inbounds i64, i64* %cloptr296309, i64 0               ; &cloptr296309[0]
  %f296312 = load i64, i64* %i0ptr296310, align 8                                    ; load; *i0ptr296310
  %fptr296311 = inttoptr i64 %f296312 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296311(i64 %arg293860, i64 %arg293859, i64 %retprim293140); tail call
  ret void
}


define void @lam294129(i64 %env294130, i64 %_95293122, i64 %CM7$acc) {
  %envptr296313 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296314 = getelementptr inbounds i64, i64* %envptr296313, i64 6              ; &envptr296313[6]
  %ER1$args = load i64, i64* %envptr296314, align 8                                  ; load; *envptr296314
  %envptr296315 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296316 = getelementptr inbounds i64, i64* %envptr296315, i64 5              ; &envptr296315[5]
  %J19$_37map1 = load i64, i64* %envptr296316, align 8                               ; load; *envptr296316
  %envptr296317 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296318 = getelementptr inbounds i64, i64* %envptr296317, i64 4              ; &envptr296317[4]
  %RVQ$f = load i64, i64* %envptr296318, align 8                                     ; load; *envptr296318
  %envptr296319 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296320 = getelementptr inbounds i64, i64* %envptr296319, i64 3              ; &envptr296319[3]
  %cont293120 = load i64, i64* %envptr296320, align 8                                ; load; *envptr296320
  %envptr296321 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296322 = getelementptr inbounds i64, i64* %envptr296321, i64 2              ; &envptr296321[2]
  %IVR$_37foldr = load i64, i64* %envptr296322, align 8                              ; load; *envptr296322
  %envptr296323 = inttoptr i64 %env294130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296324 = getelementptr inbounds i64, i64* %envptr296323, i64 1              ; &envptr296323[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296324, align 8                             ; load; *envptr296324
  %a292882 = call i64 @prim_cdr(i64 %ER1$args)                                       ; call prim_cdr
  %retprim293139 = call i64 @prim_cdr(i64 %a292882)                                  ; call prim_cdr
  %cloptr296325 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr296327 = getelementptr inbounds i64, i64* %cloptr296325, i64 1                ; &eptr296327[1]
  %eptr296328 = getelementptr inbounds i64, i64* %cloptr296325, i64 2                ; &eptr296328[2]
  %eptr296329 = getelementptr inbounds i64, i64* %cloptr296325, i64 3                ; &eptr296329[3]
  %eptr296330 = getelementptr inbounds i64, i64* %cloptr296325, i64 4                ; &eptr296330[4]
  %eptr296331 = getelementptr inbounds i64, i64* %cloptr296325, i64 5                ; &eptr296331[5]
  %eptr296332 = getelementptr inbounds i64, i64* %cloptr296325, i64 6                ; &eptr296332[6]
  store i64 %Wco$_37foldr1, i64* %eptr296327                                         ; *eptr296327 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296328                                          ; *eptr296328 = %IVR$_37foldr
  store i64 %cont293120, i64* %eptr296329                                            ; *eptr296329 = %cont293120
  store i64 %RVQ$f, i64* %eptr296330                                                 ; *eptr296330 = %RVQ$f
  store i64 %J19$_37map1, i64* %eptr296331                                           ; *eptr296331 = %J19$_37map1
  store i64 %CM7$acc, i64* %eptr296332                                               ; *eptr296332 = %CM7$acc
  %eptr296326 = getelementptr inbounds i64, i64* %cloptr296325, i64 0                ; &cloptr296325[0]
  %f296333 = ptrtoint void(i64,i64,i64)* @lam294127 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296333, i64* %eptr296326                                               ; store fptr
  %arg293865 = ptrtoint i64* %cloptr296325 to i64                                    ; closure cast; i64* -> i64
  %arg293864 = add i64 0, 0                                                          ; quoted ()
  %cloptr296334 = inttoptr i64 %arg293865 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr296335 = getelementptr inbounds i64, i64* %cloptr296334, i64 0               ; &cloptr296334[0]
  %f296337 = load i64, i64* %i0ptr296335, align 8                                    ; load; *i0ptr296335
  %fptr296336 = inttoptr i64 %f296337 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296336(i64 %arg293865, i64 %arg293864, i64 %retprim293139); tail call
  ret void
}


define void @lam294127(i64 %env294128, i64 %_95293123, i64 %Jmm$lsts) {
  %envptr296338 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296339 = getelementptr inbounds i64, i64* %envptr296338, i64 6              ; &envptr296338[6]
  %CM7$acc = load i64, i64* %envptr296339, align 8                                   ; load; *envptr296339
  %envptr296340 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296341 = getelementptr inbounds i64, i64* %envptr296340, i64 5              ; &envptr296340[5]
  %J19$_37map1 = load i64, i64* %envptr296341, align 8                               ; load; *envptr296341
  %envptr296342 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296343 = getelementptr inbounds i64, i64* %envptr296342, i64 4              ; &envptr296342[4]
  %RVQ$f = load i64, i64* %envptr296343, align 8                                     ; load; *envptr296343
  %envptr296344 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296345 = getelementptr inbounds i64, i64* %envptr296344, i64 3              ; &envptr296344[3]
  %cont293120 = load i64, i64* %envptr296345, align 8                                ; load; *envptr296345
  %envptr296346 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296347 = getelementptr inbounds i64, i64* %envptr296346, i64 2              ; &envptr296346[2]
  %IVR$_37foldr = load i64, i64* %envptr296347, align 8                              ; load; *envptr296347
  %envptr296348 = inttoptr i64 %env294128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296349 = getelementptr inbounds i64, i64* %envptr296348, i64 1              ; &envptr296348[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296349, align 8                             ; load; *envptr296349
  %cloptr296350 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296352 = getelementptr inbounds i64, i64* %cloptr296350, i64 1                ; &eptr296352[1]
  %eptr296353 = getelementptr inbounds i64, i64* %cloptr296350, i64 2                ; &eptr296353[2]
  %eptr296354 = getelementptr inbounds i64, i64* %cloptr296350, i64 3                ; &eptr296354[3]
  %eptr296355 = getelementptr inbounds i64, i64* %cloptr296350, i64 4                ; &eptr296355[4]
  %eptr296356 = getelementptr inbounds i64, i64* %cloptr296350, i64 5                ; &eptr296356[5]
  %eptr296357 = getelementptr inbounds i64, i64* %cloptr296350, i64 6                ; &eptr296357[6]
  %eptr296358 = getelementptr inbounds i64, i64* %cloptr296350, i64 7                ; &eptr296358[7]
  store i64 %Wco$_37foldr1, i64* %eptr296352                                         ; *eptr296352 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296353                                          ; *eptr296353 = %IVR$_37foldr
  store i64 %cont293120, i64* %eptr296354                                            ; *eptr296354 = %cont293120
  store i64 %RVQ$f, i64* %eptr296355                                                 ; *eptr296355 = %RVQ$f
  store i64 %Jmm$lsts, i64* %eptr296356                                              ; *eptr296356 = %Jmm$lsts
  store i64 %J19$_37map1, i64* %eptr296357                                           ; *eptr296357 = %J19$_37map1
  store i64 %CM7$acc, i64* %eptr296358                                               ; *eptr296358 = %CM7$acc
  %eptr296351 = getelementptr inbounds i64, i64* %cloptr296350, i64 0                ; &cloptr296350[0]
  %f296359 = ptrtoint void(i64,i64,i64)* @lam294125 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296359, i64* %eptr296351                                               ; store fptr
  %arg293869 = ptrtoint i64* %cloptr296350 to i64                                    ; closure cast; i64* -> i64
  %cloptr296360 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296361 = getelementptr inbounds i64, i64* %cloptr296360, i64 0                ; &cloptr296360[0]
  %f296362 = ptrtoint void(i64,i64,i64,i64)* @lam294104 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296362, i64* %eptr296361                                               ; store fptr
  %arg293868 = ptrtoint i64* %cloptr296360 to i64                                    ; closure cast; i64* -> i64
  %arg293867 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr296363 = inttoptr i64 %Wco$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296364 = getelementptr inbounds i64, i64* %cloptr296363, i64 0               ; &cloptr296363[0]
  %f296366 = load i64, i64* %i0ptr296364, align 8                                    ; load; *i0ptr296364
  %fptr296365 = inttoptr i64 %f296366 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296365(i64 %Wco$_37foldr1, i64 %arg293869, i64 %arg293868, i64 %arg293867, i64 %Jmm$lsts); tail call
  ret void
}


define void @lam294125(i64 %env294126, i64 %_95293124, i64 %a292883) {
  %envptr296367 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296368 = getelementptr inbounds i64, i64* %envptr296367, i64 7              ; &envptr296367[7]
  %CM7$acc = load i64, i64* %envptr296368, align 8                                   ; load; *envptr296368
  %envptr296369 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296370 = getelementptr inbounds i64, i64* %envptr296369, i64 6              ; &envptr296369[6]
  %J19$_37map1 = load i64, i64* %envptr296370, align 8                               ; load; *envptr296370
  %envptr296371 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296372 = getelementptr inbounds i64, i64* %envptr296371, i64 5              ; &envptr296371[5]
  %Jmm$lsts = load i64, i64* %envptr296372, align 8                                  ; load; *envptr296372
  %envptr296373 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296374 = getelementptr inbounds i64, i64* %envptr296373, i64 4              ; &envptr296373[4]
  %RVQ$f = load i64, i64* %envptr296374, align 8                                     ; load; *envptr296374
  %envptr296375 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296376 = getelementptr inbounds i64, i64* %envptr296375, i64 3              ; &envptr296375[3]
  %cont293120 = load i64, i64* %envptr296376, align 8                                ; load; *envptr296376
  %envptr296377 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296378 = getelementptr inbounds i64, i64* %envptr296377, i64 2              ; &envptr296377[2]
  %IVR$_37foldr = load i64, i64* %envptr296378, align 8                              ; load; *envptr296378
  %envptr296379 = inttoptr i64 %env294126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296380 = getelementptr inbounds i64, i64* %envptr296379, i64 1              ; &envptr296379[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296380, align 8                             ; load; *envptr296380
  %cmp296381 = icmp eq i64 %a292883, 15                                              ; false?
  br i1 %cmp296381, label %else296383, label %then296382                             ; if

then296382:
  %arg293872 = add i64 0, 0                                                          ; quoted ()
  %cloptr296384 = inttoptr i64 %cont293120 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296385 = getelementptr inbounds i64, i64* %cloptr296384, i64 0               ; &cloptr296384[0]
  %f296387 = load i64, i64* %i0ptr296385, align 8                                    ; load; *i0ptr296385
  %fptr296386 = inttoptr i64 %f296387 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296386(i64 %cont293120, i64 %arg293872, i64 %CM7$acc); tail call
  ret void

else296383:
  %cloptr296388 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr296390 = getelementptr inbounds i64, i64* %cloptr296388, i64 1                ; &eptr296390[1]
  %eptr296391 = getelementptr inbounds i64, i64* %cloptr296388, i64 2                ; &eptr296391[2]
  %eptr296392 = getelementptr inbounds i64, i64* %cloptr296388, i64 3                ; &eptr296392[3]
  %eptr296393 = getelementptr inbounds i64, i64* %cloptr296388, i64 4                ; &eptr296393[4]
  %eptr296394 = getelementptr inbounds i64, i64* %cloptr296388, i64 5                ; &eptr296394[5]
  %eptr296395 = getelementptr inbounds i64, i64* %cloptr296388, i64 6                ; &eptr296395[6]
  %eptr296396 = getelementptr inbounds i64, i64* %cloptr296388, i64 7                ; &eptr296396[7]
  store i64 %Wco$_37foldr1, i64* %eptr296390                                         ; *eptr296390 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296391                                          ; *eptr296391 = %IVR$_37foldr
  store i64 %cont293120, i64* %eptr296392                                            ; *eptr296392 = %cont293120
  store i64 %RVQ$f, i64* %eptr296393                                                 ; *eptr296393 = %RVQ$f
  store i64 %Jmm$lsts, i64* %eptr296394                                              ; *eptr296394 = %Jmm$lsts
  store i64 %J19$_37map1, i64* %eptr296395                                           ; *eptr296395 = %J19$_37map1
  store i64 %CM7$acc, i64* %eptr296396                                               ; *eptr296396 = %CM7$acc
  %eptr296389 = getelementptr inbounds i64, i64* %cloptr296388, i64 0                ; &cloptr296388[0]
  %f296397 = ptrtoint void(i64,i64,i64)* @lam294123 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296397, i64* %eptr296389                                               ; store fptr
  %arg293876 = ptrtoint i64* %cloptr296388 to i64                                    ; closure cast; i64* -> i64
  %cloptr296398 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296399 = getelementptr inbounds i64, i64* %cloptr296398, i64 0                ; &cloptr296398[0]
  %f296400 = ptrtoint void(i64,i64,i64)* @lam294108 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296400, i64* %eptr296399                                               ; store fptr
  %arg293875 = ptrtoint i64* %cloptr296398 to i64                                    ; closure cast; i64* -> i64
  %cloptr296401 = inttoptr i64 %J19$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr296402 = getelementptr inbounds i64, i64* %cloptr296401, i64 0               ; &cloptr296401[0]
  %f296404 = load i64, i64* %i0ptr296402, align 8                                    ; load; *i0ptr296402
  %fptr296403 = inttoptr i64 %f296404 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296403(i64 %J19$_37map1, i64 %arg293876, i64 %arg293875, i64 %Jmm$lsts); tail call
  ret void
}


define void @lam294123(i64 %env294124, i64 %_95293125, i64 %gRn$lsts_43) {
  %envptr296405 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296406 = getelementptr inbounds i64, i64* %envptr296405, i64 7              ; &envptr296405[7]
  %CM7$acc = load i64, i64* %envptr296406, align 8                                   ; load; *envptr296406
  %envptr296407 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296408 = getelementptr inbounds i64, i64* %envptr296407, i64 6              ; &envptr296407[6]
  %J19$_37map1 = load i64, i64* %envptr296408, align 8                               ; load; *envptr296408
  %envptr296409 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296410 = getelementptr inbounds i64, i64* %envptr296409, i64 5              ; &envptr296409[5]
  %Jmm$lsts = load i64, i64* %envptr296410, align 8                                  ; load; *envptr296410
  %envptr296411 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296412 = getelementptr inbounds i64, i64* %envptr296411, i64 4              ; &envptr296411[4]
  %RVQ$f = load i64, i64* %envptr296412, align 8                                     ; load; *envptr296412
  %envptr296413 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296414 = getelementptr inbounds i64, i64* %envptr296413, i64 3              ; &envptr296413[3]
  %cont293120 = load i64, i64* %envptr296414, align 8                                ; load; *envptr296414
  %envptr296415 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296416 = getelementptr inbounds i64, i64* %envptr296415, i64 2              ; &envptr296415[2]
  %IVR$_37foldr = load i64, i64* %envptr296416, align 8                              ; load; *envptr296416
  %envptr296417 = inttoptr i64 %env294124 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296418 = getelementptr inbounds i64, i64* %envptr296417, i64 1              ; &envptr296417[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296418, align 8                             ; load; *envptr296418
  %cloptr296419 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr296421 = getelementptr inbounds i64, i64* %cloptr296419, i64 1                ; &eptr296421[1]
  %eptr296422 = getelementptr inbounds i64, i64* %cloptr296419, i64 2                ; &eptr296422[2]
  %eptr296423 = getelementptr inbounds i64, i64* %cloptr296419, i64 3                ; &eptr296423[3]
  %eptr296424 = getelementptr inbounds i64, i64* %cloptr296419, i64 4                ; &eptr296424[4]
  %eptr296425 = getelementptr inbounds i64, i64* %cloptr296419, i64 5                ; &eptr296425[5]
  %eptr296426 = getelementptr inbounds i64, i64* %cloptr296419, i64 6                ; &eptr296426[6]
  store i64 %Wco$_37foldr1, i64* %eptr296421                                         ; *eptr296421 = %Wco$_37foldr1
  store i64 %IVR$_37foldr, i64* %eptr296422                                          ; *eptr296422 = %IVR$_37foldr
  store i64 %cont293120, i64* %eptr296423                                            ; *eptr296423 = %cont293120
  store i64 %RVQ$f, i64* %eptr296424                                                 ; *eptr296424 = %RVQ$f
  store i64 %gRn$lsts_43, i64* %eptr296425                                           ; *eptr296425 = %gRn$lsts_43
  store i64 %CM7$acc, i64* %eptr296426                                               ; *eptr296426 = %CM7$acc
  %eptr296420 = getelementptr inbounds i64, i64* %cloptr296419, i64 0                ; &cloptr296419[0]
  %f296427 = ptrtoint void(i64,i64,i64)* @lam294121 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296427, i64* %eptr296420                                               ; store fptr
  %arg293880 = ptrtoint i64* %cloptr296419 to i64                                    ; closure cast; i64* -> i64
  %cloptr296428 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296429 = getelementptr inbounds i64, i64* %cloptr296428, i64 0                ; &cloptr296428[0]
  %f296430 = ptrtoint void(i64,i64,i64)* @lam294111 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296430, i64* %eptr296429                                               ; store fptr
  %arg293879 = ptrtoint i64* %cloptr296428 to i64                                    ; closure cast; i64* -> i64
  %cloptr296431 = inttoptr i64 %J19$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr296432 = getelementptr inbounds i64, i64* %cloptr296431, i64 0               ; &cloptr296431[0]
  %f296434 = load i64, i64* %i0ptr296432, align 8                                    ; load; *i0ptr296432
  %fptr296433 = inttoptr i64 %f296434 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296433(i64 %J19$_37map1, i64 %arg293880, i64 %arg293879, i64 %Jmm$lsts); tail call
  ret void
}


define void @lam294121(i64 %env294122, i64 %_95293126, i64 %bai$vs) {
  %envptr296435 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296436 = getelementptr inbounds i64, i64* %envptr296435, i64 6              ; &envptr296435[6]
  %CM7$acc = load i64, i64* %envptr296436, align 8                                   ; load; *envptr296436
  %envptr296437 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296438 = getelementptr inbounds i64, i64* %envptr296437, i64 5              ; &envptr296437[5]
  %gRn$lsts_43 = load i64, i64* %envptr296438, align 8                               ; load; *envptr296438
  %envptr296439 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296440 = getelementptr inbounds i64, i64* %envptr296439, i64 4              ; &envptr296439[4]
  %RVQ$f = load i64, i64* %envptr296440, align 8                                     ; load; *envptr296440
  %envptr296441 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296442 = getelementptr inbounds i64, i64* %envptr296441, i64 3              ; &envptr296441[3]
  %cont293120 = load i64, i64* %envptr296442, align 8                                ; load; *envptr296442
  %envptr296443 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296444 = getelementptr inbounds i64, i64* %envptr296443, i64 2              ; &envptr296443[2]
  %IVR$_37foldr = load i64, i64* %envptr296444, align 8                              ; load; *envptr296444
  %envptr296445 = inttoptr i64 %env294122 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296446 = getelementptr inbounds i64, i64* %envptr296445, i64 1              ; &envptr296445[1]
  %Wco$_37foldr1 = load i64, i64* %envptr296446, align 8                             ; load; *envptr296446
  %a292884 = call i64 @prim_cons(i64 %CM7$acc, i64 %gRn$lsts_43)                     ; call prim_cons
  %a292885 = call i64 @prim_cons(i64 %RVQ$f, i64 %a292884)                           ; call prim_cons
  %cloptr296447 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296449 = getelementptr inbounds i64, i64* %cloptr296447, i64 1                ; &eptr296449[1]
  %eptr296450 = getelementptr inbounds i64, i64* %cloptr296447, i64 2                ; &eptr296450[2]
  %eptr296451 = getelementptr inbounds i64, i64* %cloptr296447, i64 3                ; &eptr296451[3]
  %eptr296452 = getelementptr inbounds i64, i64* %cloptr296447, i64 4                ; &eptr296452[4]
  store i64 %bai$vs, i64* %eptr296449                                                ; *eptr296449 = %bai$vs
  store i64 %Wco$_37foldr1, i64* %eptr296450                                         ; *eptr296450 = %Wco$_37foldr1
  store i64 %cont293120, i64* %eptr296451                                            ; *eptr296451 = %cont293120
  store i64 %RVQ$f, i64* %eptr296452                                                 ; *eptr296452 = %RVQ$f
  %eptr296448 = getelementptr inbounds i64, i64* %cloptr296447, i64 0                ; &cloptr296447[0]
  %f296453 = ptrtoint void(i64,i64,i64)* @lam294119 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296453, i64* %eptr296448                                               ; store fptr
  %arg293887 = ptrtoint i64* %cloptr296447 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst293132 = call i64 @prim_cons(i64 %arg293887, i64 %a292885)               ; call prim_cons
  %cloptr296454 = inttoptr i64 %IVR$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr296455 = getelementptr inbounds i64, i64* %cloptr296454, i64 0               ; &cloptr296454[0]
  %f296457 = load i64, i64* %i0ptr296455, align 8                                    ; load; *i0ptr296455
  %fptr296456 = inttoptr i64 %f296457 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296456(i64 %IVR$_37foldr, i64 %cps_45lst293132)     ; tail call
  ret void
}


define void @lam294119(i64 %env294120, i64 %_95293127, i64 %a292886) {
  %envptr296458 = inttoptr i64 %env294120 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296459 = getelementptr inbounds i64, i64* %envptr296458, i64 4              ; &envptr296458[4]
  %RVQ$f = load i64, i64* %envptr296459, align 8                                     ; load; *envptr296459
  %envptr296460 = inttoptr i64 %env294120 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296461 = getelementptr inbounds i64, i64* %envptr296460, i64 3              ; &envptr296460[3]
  %cont293120 = load i64, i64* %envptr296461, align 8                                ; load; *envptr296461
  %envptr296462 = inttoptr i64 %env294120 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296463 = getelementptr inbounds i64, i64* %envptr296462, i64 2              ; &envptr296462[2]
  %Wco$_37foldr1 = load i64, i64* %envptr296463, align 8                             ; load; *envptr296463
  %envptr296464 = inttoptr i64 %env294120 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296465 = getelementptr inbounds i64, i64* %envptr296464, i64 1              ; &envptr296464[1]
  %bai$vs = load i64, i64* %envptr296465, align 8                                    ; load; *envptr296465
  %arg293888 = add i64 0, 0                                                          ; quoted ()
  %a292887 = call i64 @prim_cons(i64 %a292886, i64 %arg293888)                       ; call prim_cons
  %cloptr296466 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr296468 = getelementptr inbounds i64, i64* %cloptr296466, i64 1                ; &eptr296468[1]
  %eptr296469 = getelementptr inbounds i64, i64* %cloptr296466, i64 2                ; &eptr296469[2]
  store i64 %cont293120, i64* %eptr296468                                            ; *eptr296468 = %cont293120
  store i64 %RVQ$f, i64* %eptr296469                                                 ; *eptr296469 = %RVQ$f
  %eptr296467 = getelementptr inbounds i64, i64* %cloptr296466, i64 0                ; &cloptr296466[0]
  %f296470 = ptrtoint void(i64,i64,i64)* @lam294116 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296470, i64* %eptr296467                                               ; store fptr
  %arg293893 = ptrtoint i64* %cloptr296466 to i64                                    ; closure cast; i64* -> i64
  %cloptr296471 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr296472 = getelementptr inbounds i64, i64* %cloptr296471, i64 0                ; &cloptr296471[0]
  %f296473 = ptrtoint void(i64,i64,i64,i64)* @lam294114 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296473, i64* %eptr296472                                               ; store fptr
  %arg293892 = ptrtoint i64* %cloptr296471 to i64                                    ; closure cast; i64* -> i64
  %cloptr296474 = inttoptr i64 %Wco$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296475 = getelementptr inbounds i64, i64* %cloptr296474, i64 0               ; &cloptr296474[0]
  %f296477 = load i64, i64* %i0ptr296475, align 8                                    ; load; *i0ptr296475
  %fptr296476 = inttoptr i64 %f296477 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296476(i64 %Wco$_37foldr1, i64 %arg293893, i64 %arg293892, i64 %a292887, i64 %bai$vs); tail call
  ret void
}


define void @lam294116(i64 %env294117, i64 %_95293128, i64 %a292888) {
  %envptr296478 = inttoptr i64 %env294117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296479 = getelementptr inbounds i64, i64* %envptr296478, i64 2              ; &envptr296478[2]
  %RVQ$f = load i64, i64* %envptr296479, align 8                                     ; load; *envptr296479
  %envptr296480 = inttoptr i64 %env294117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296481 = getelementptr inbounds i64, i64* %envptr296480, i64 1              ; &envptr296480[1]
  %cont293120 = load i64, i64* %envptr296481, align 8                                ; load; *envptr296481
  %cps_45lst293129 = call i64 @prim_cons(i64 %cont293120, i64 %a292888)              ; call prim_cons
  %cloptr296482 = inttoptr i64 %RVQ$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296483 = getelementptr inbounds i64, i64* %cloptr296482, i64 0               ; &cloptr296482[0]
  %f296485 = load i64, i64* %i0ptr296483, align 8                                    ; load; *i0ptr296483
  %fptr296484 = inttoptr i64 %f296485 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296484(i64 %RVQ$f, i64 %cps_45lst293129)            ; tail call
  ret void
}


define void @lam294114(i64 %env294115, i64 %cont293130, i64 %OBn$a, i64 %cQm$b) {
  %retprim293131 = call i64 @prim_cons(i64 %OBn$a, i64 %cQm$b)                       ; call prim_cons
  %arg293900 = add i64 0, 0                                                          ; quoted ()
  %cloptr296486 = inttoptr i64 %cont293130 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296487 = getelementptr inbounds i64, i64* %cloptr296486, i64 0               ; &cloptr296486[0]
  %f296489 = load i64, i64* %i0ptr296487, align 8                                    ; load; *i0ptr296487
  %fptr296488 = inttoptr i64 %f296489 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296488(i64 %cont293130, i64 %arg293900, i64 %retprim293131); tail call
  ret void
}


define void @lam294111(i64 %env294112, i64 %cont293133, i64 %Cw0$x) {
  %retprim293134 = call i64 @prim_car(i64 %Cw0$x)                                    ; call prim_car
  %arg293904 = add i64 0, 0                                                          ; quoted ()
  %cloptr296490 = inttoptr i64 %cont293133 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296491 = getelementptr inbounds i64, i64* %cloptr296490, i64 0               ; &cloptr296490[0]
  %f296493 = load i64, i64* %i0ptr296491, align 8                                    ; load; *i0ptr296491
  %fptr296492 = inttoptr i64 %f296493 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296492(i64 %cont293133, i64 %arg293904, i64 %retprim293134); tail call
  ret void
}


define void @lam294108(i64 %env294109, i64 %cont293135, i64 %TOD$x) {
  %retprim293136 = call i64 @prim_cdr(i64 %TOD$x)                                    ; call prim_cdr
  %arg293908 = add i64 0, 0                                                          ; quoted ()
  %cloptr296494 = inttoptr i64 %cont293135 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296495 = getelementptr inbounds i64, i64* %cloptr296494, i64 0               ; &cloptr296494[0]
  %f296497 = load i64, i64* %i0ptr296495, align 8                                    ; load; *i0ptr296495
  %fptr296496 = inttoptr i64 %f296497 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296496(i64 %cont293135, i64 %arg293908, i64 %retprim293136); tail call
  ret void
}


define void @lam294104(i64 %env294105, i64 %cont293137, i64 %AtY$lst, i64 %i5o$b) {
  %cmp296498 = icmp eq i64 %i5o$b, 15                                                ; false?
  br i1 %cmp296498, label %else296500, label %then296499                             ; if

then296499:
  %arg293911 = add i64 0, 0                                                          ; quoted ()
  %cloptr296501 = inttoptr i64 %cont293137 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296502 = getelementptr inbounds i64, i64* %cloptr296501, i64 0               ; &cloptr296501[0]
  %f296504 = load i64, i64* %i0ptr296502, align 8                                    ; load; *i0ptr296502
  %fptr296503 = inttoptr i64 %f296504 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296503(i64 %cont293137, i64 %arg293911, i64 %i5o$b) ; tail call
  ret void

else296500:
  %retprim293138 = call i64 @prim_null_63(i64 %AtY$lst)                              ; call prim_null_63
  %arg293915 = add i64 0, 0                                                          ; quoted ()
  %cloptr296505 = inttoptr i64 %cont293137 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296506 = getelementptr inbounds i64, i64* %cloptr296505, i64 0               ; &cloptr296505[0]
  %f296508 = load i64, i64* %i0ptr296506, align 8                                    ; load; *i0ptr296506
  %fptr296507 = inttoptr i64 %f296508 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296507(i64 %cont293137, i64 %arg293915, i64 %retprim293138); tail call
  ret void
}


define void @lam294097(i64 %env294098, i64 %cont293141, i64 %sXk$_37foldl1) {
  %arg293918 = add i64 0, 0                                                          ; quoted ()
  %cloptr296509 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296511 = getelementptr inbounds i64, i64* %cloptr296509, i64 1                ; &eptr296511[1]
  store i64 %sXk$_37foldl1, i64* %eptr296511                                         ; *eptr296511 = %sXk$_37foldl1
  %eptr296510 = getelementptr inbounds i64, i64* %cloptr296509, i64 0                ; &cloptr296509[0]
  %f296512 = ptrtoint void(i64,i64,i64,i64,i64)* @lam294094 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f296512, i64* %eptr296510                                               ; store fptr
  %arg293917 = ptrtoint i64* %cloptr296509 to i64                                    ; closure cast; i64* -> i64
  %cloptr296513 = inttoptr i64 %cont293141 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296514 = getelementptr inbounds i64, i64* %cloptr296513, i64 0               ; &cloptr296513[0]
  %f296516 = load i64, i64* %i0ptr296514, align 8                                    ; load; *i0ptr296514
  %fptr296515 = inttoptr i64 %f296516 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296515(i64 %cont293141, i64 %arg293918, i64 %arg293917); tail call
  ret void
}


define void @lam294094(i64 %env294095, i64 %cont293142, i64 %TDf$f, i64 %Qi4$acc, i64 %F99$lst) {
  %envptr296517 = inttoptr i64 %env294095 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296518 = getelementptr inbounds i64, i64* %envptr296517, i64 1              ; &envptr296517[1]
  %sXk$_37foldl1 = load i64, i64* %envptr296518, align 8                             ; load; *envptr296518
  %a292875 = call i64 @prim_null_63(i64 %F99$lst)                                    ; call prim_null_63
  %cmp296519 = icmp eq i64 %a292875, 15                                              ; false?
  br i1 %cmp296519, label %else296521, label %then296520                             ; if

then296520:
  %arg293922 = add i64 0, 0                                                          ; quoted ()
  %cloptr296522 = inttoptr i64 %cont293142 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296523 = getelementptr inbounds i64, i64* %cloptr296522, i64 0               ; &cloptr296522[0]
  %f296525 = load i64, i64* %i0ptr296523, align 8                                    ; load; *i0ptr296523
  %fptr296524 = inttoptr i64 %f296525 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296524(i64 %cont293142, i64 %arg293922, i64 %Qi4$acc); tail call
  ret void

else296521:
  %a292876 = call i64 @prim_car(i64 %F99$lst)                                        ; call prim_car
  %cloptr296526 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296528 = getelementptr inbounds i64, i64* %cloptr296526, i64 1                ; &eptr296528[1]
  %eptr296529 = getelementptr inbounds i64, i64* %cloptr296526, i64 2                ; &eptr296529[2]
  %eptr296530 = getelementptr inbounds i64, i64* %cloptr296526, i64 3                ; &eptr296530[3]
  %eptr296531 = getelementptr inbounds i64, i64* %cloptr296526, i64 4                ; &eptr296531[4]
  store i64 %sXk$_37foldl1, i64* %eptr296528                                         ; *eptr296528 = %sXk$_37foldl1
  store i64 %TDf$f, i64* %eptr296529                                                 ; *eptr296529 = %TDf$f
  store i64 %F99$lst, i64* %eptr296530                                               ; *eptr296530 = %F99$lst
  store i64 %cont293142, i64* %eptr296531                                            ; *eptr296531 = %cont293142
  %eptr296527 = getelementptr inbounds i64, i64* %cloptr296526, i64 0                ; &cloptr296526[0]
  %f296532 = ptrtoint void(i64,i64,i64)* @lam294092 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296532, i64* %eptr296527                                               ; store fptr
  %arg293927 = ptrtoint i64* %cloptr296526 to i64                                    ; closure cast; i64* -> i64
  %cloptr296533 = inttoptr i64 %TDf$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296534 = getelementptr inbounds i64, i64* %cloptr296533, i64 0               ; &cloptr296533[0]
  %f296536 = load i64, i64* %i0ptr296534, align 8                                    ; load; *i0ptr296534
  %fptr296535 = inttoptr i64 %f296536 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296535(i64 %TDf$f, i64 %arg293927, i64 %a292876, i64 %Qi4$acc); tail call
  ret void
}


define void @lam294092(i64 %env294093, i64 %_95293143, i64 %a292877) {
  %envptr296537 = inttoptr i64 %env294093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296538 = getelementptr inbounds i64, i64* %envptr296537, i64 4              ; &envptr296537[4]
  %cont293142 = load i64, i64* %envptr296538, align 8                                ; load; *envptr296538
  %envptr296539 = inttoptr i64 %env294093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296540 = getelementptr inbounds i64, i64* %envptr296539, i64 3              ; &envptr296539[3]
  %F99$lst = load i64, i64* %envptr296540, align 8                                   ; load; *envptr296540
  %envptr296541 = inttoptr i64 %env294093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296542 = getelementptr inbounds i64, i64* %envptr296541, i64 2              ; &envptr296541[2]
  %TDf$f = load i64, i64* %envptr296542, align 8                                     ; load; *envptr296542
  %envptr296543 = inttoptr i64 %env294093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296544 = getelementptr inbounds i64, i64* %envptr296543, i64 1              ; &envptr296543[1]
  %sXk$_37foldl1 = load i64, i64* %envptr296544, align 8                             ; load; *envptr296544
  %a292878 = call i64 @prim_cdr(i64 %F99$lst)                                        ; call prim_cdr
  %cloptr296545 = inttoptr i64 %sXk$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296546 = getelementptr inbounds i64, i64* %cloptr296545, i64 0               ; &cloptr296545[0]
  %f296548 = load i64, i64* %i0ptr296546, align 8                                    ; load; *i0ptr296546
  %fptr296547 = inttoptr i64 %f296548 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296547(i64 %sXk$_37foldl1, i64 %cont293142, i64 %TDf$f, i64 %a292877, i64 %a292878); tail call
  ret void
}


define void @lam294089(i64 %env294090, i64 %cont293144, i64 %xPV$_37length) {
  %arg293936 = add i64 0, 0                                                          ; quoted ()
  %cloptr296549 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296551 = getelementptr inbounds i64, i64* %cloptr296549, i64 1                ; &eptr296551[1]
  store i64 %xPV$_37length, i64* %eptr296551                                         ; *eptr296551 = %xPV$_37length
  %eptr296550 = getelementptr inbounds i64, i64* %cloptr296549, i64 0                ; &cloptr296549[0]
  %f296552 = ptrtoint void(i64,i64,i64)* @lam294086 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296552, i64* %eptr296550                                               ; store fptr
  %arg293935 = ptrtoint i64* %cloptr296549 to i64                                    ; closure cast; i64* -> i64
  %cloptr296553 = inttoptr i64 %cont293144 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296554 = getelementptr inbounds i64, i64* %cloptr296553, i64 0               ; &cloptr296553[0]
  %f296556 = load i64, i64* %i0ptr296554, align 8                                    ; load; *i0ptr296554
  %fptr296555 = inttoptr i64 %f296556 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296555(i64 %cont293144, i64 %arg293936, i64 %arg293935); tail call
  ret void
}


define void @lam294086(i64 %env294087, i64 %cont293145, i64 %Qzm$lst) {
  %envptr296557 = inttoptr i64 %env294087 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296558 = getelementptr inbounds i64, i64* %envptr296557, i64 1              ; &envptr296557[1]
  %xPV$_37length = load i64, i64* %envptr296558, align 8                             ; load; *envptr296558
  %a292872 = call i64 @prim_null_63(i64 %Qzm$lst)                                    ; call prim_null_63
  %cmp296559 = icmp eq i64 %a292872, 15                                              ; false?
  br i1 %cmp296559, label %else296561, label %then296560                             ; if

then296560:
  %arg293940 = add i64 0, 0                                                          ; quoted ()
  %arg293939 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr296562 = inttoptr i64 %cont293145 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296563 = getelementptr inbounds i64, i64* %cloptr296562, i64 0               ; &cloptr296562[0]
  %f296565 = load i64, i64* %i0ptr296563, align 8                                    ; load; *i0ptr296563
  %fptr296564 = inttoptr i64 %f296565 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296564(i64 %cont293145, i64 %arg293940, i64 %arg293939); tail call
  ret void

else296561:
  %a292873 = call i64 @prim_cdr(i64 %Qzm$lst)                                        ; call prim_cdr
  %cloptr296566 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296568 = getelementptr inbounds i64, i64* %cloptr296566, i64 1                ; &eptr296568[1]
  store i64 %cont293145, i64* %eptr296568                                            ; *eptr296568 = %cont293145
  %eptr296567 = getelementptr inbounds i64, i64* %cloptr296566, i64 0                ; &cloptr296566[0]
  %f296569 = ptrtoint void(i64,i64,i64)* @lam294084 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296569, i64* %eptr296567                                               ; store fptr
  %arg293944 = ptrtoint i64* %cloptr296566 to i64                                    ; closure cast; i64* -> i64
  %cloptr296570 = inttoptr i64 %xPV$_37length to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296571 = getelementptr inbounds i64, i64* %cloptr296570, i64 0               ; &cloptr296570[0]
  %f296573 = load i64, i64* %i0ptr296571, align 8                                    ; load; *i0ptr296571
  %fptr296572 = inttoptr i64 %f296573 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296572(i64 %xPV$_37length, i64 %arg293944, i64 %a292873); tail call
  ret void
}


define void @lam294084(i64 %env294085, i64 %_95293146, i64 %a292874) {
  %envptr296574 = inttoptr i64 %env294085 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296575 = getelementptr inbounds i64, i64* %envptr296574, i64 1              ; &envptr296574[1]
  %cont293145 = load i64, i64* %envptr296575, align 8                                ; load; *envptr296575
  %arg293947 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim293147 = call i64 @prim__43(i64 %arg293947, i64 %a292874)                  ; call prim__43
  %arg293949 = add i64 0, 0                                                          ; quoted ()
  %cloptr296576 = inttoptr i64 %cont293145 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296577 = getelementptr inbounds i64, i64* %cloptr296576, i64 0               ; &cloptr296576[0]
  %f296579 = load i64, i64* %i0ptr296577, align 8                                    ; load; *i0ptr296577
  %fptr296578 = inttoptr i64 %f296579 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296578(i64 %cont293145, i64 %arg293949, i64 %retprim293147); tail call
  ret void
}


define void @lam294078(i64 %env294079, i64 %cont293148, i64 %cE1$_37take) {
  %arg293952 = add i64 0, 0                                                          ; quoted ()
  %cloptr296580 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296582 = getelementptr inbounds i64, i64* %cloptr296580, i64 1                ; &eptr296582[1]
  store i64 %cE1$_37take, i64* %eptr296582                                           ; *eptr296582 = %cE1$_37take
  %eptr296581 = getelementptr inbounds i64, i64* %cloptr296580, i64 0                ; &cloptr296580[0]
  %f296583 = ptrtoint void(i64,i64,i64,i64)* @lam294075 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296583, i64* %eptr296581                                               ; store fptr
  %arg293951 = ptrtoint i64* %cloptr296580 to i64                                    ; closure cast; i64* -> i64
  %cloptr296584 = inttoptr i64 %cont293148 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296585 = getelementptr inbounds i64, i64* %cloptr296584, i64 0               ; &cloptr296584[0]
  %f296587 = load i64, i64* %i0ptr296585, align 8                                    ; load; *i0ptr296585
  %fptr296586 = inttoptr i64 %f296587 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296586(i64 %cont293148, i64 %arg293952, i64 %arg293951); tail call
  ret void
}


define void @lam294075(i64 %env294076, i64 %cont293149, i64 %NlN$lst, i64 %iw9$n) {
  %envptr296588 = inttoptr i64 %env294076 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296589 = getelementptr inbounds i64, i64* %envptr296588, i64 1              ; &envptr296588[1]
  %cE1$_37take = load i64, i64* %envptr296589, align 8                               ; load; *envptr296589
  %arg293954 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a292866 = call i64 @prim__61(i64 %iw9$n, i64 %arg293954)                          ; call prim__61
  %cmp296590 = icmp eq i64 %a292866, 15                                              ; false?
  br i1 %cmp296590, label %else296592, label %then296591                             ; if

then296591:
  %arg293957 = add i64 0, 0                                                          ; quoted ()
  %arg293956 = add i64 0, 0                                                          ; quoted ()
  %cloptr296593 = inttoptr i64 %cont293149 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296594 = getelementptr inbounds i64, i64* %cloptr296593, i64 0               ; &cloptr296593[0]
  %f296596 = load i64, i64* %i0ptr296594, align 8                                    ; load; *i0ptr296594
  %fptr296595 = inttoptr i64 %f296596 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296595(i64 %cont293149, i64 %arg293957, i64 %arg293956); tail call
  ret void

else296592:
  %a292867 = call i64 @prim_null_63(i64 %NlN$lst)                                    ; call prim_null_63
  %cmp296597 = icmp eq i64 %a292867, 15                                              ; false?
  br i1 %cmp296597, label %else296599, label %then296598                             ; if

then296598:
  %arg293961 = add i64 0, 0                                                          ; quoted ()
  %arg293960 = add i64 0, 0                                                          ; quoted ()
  %cloptr296600 = inttoptr i64 %cont293149 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296601 = getelementptr inbounds i64, i64* %cloptr296600, i64 0               ; &cloptr296600[0]
  %f296603 = load i64, i64* %i0ptr296601, align 8                                    ; load; *i0ptr296601
  %fptr296602 = inttoptr i64 %f296603 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296602(i64 %cont293149, i64 %arg293961, i64 %arg293960); tail call
  ret void

else296599:
  %a292868 = call i64 @prim_car(i64 %NlN$lst)                                        ; call prim_car
  %a292869 = call i64 @prim_cdr(i64 %NlN$lst)                                        ; call prim_cdr
  %arg293965 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a292870 = call i64 @prim__45(i64 %iw9$n, i64 %arg293965)                          ; call prim__45
  %cloptr296604 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr296606 = getelementptr inbounds i64, i64* %cloptr296604, i64 1                ; &eptr296606[1]
  %eptr296607 = getelementptr inbounds i64, i64* %cloptr296604, i64 2                ; &eptr296607[2]
  store i64 %cont293149, i64* %eptr296606                                            ; *eptr296606 = %cont293149
  store i64 %a292868, i64* %eptr296607                                               ; *eptr296607 = %a292868
  %eptr296605 = getelementptr inbounds i64, i64* %cloptr296604, i64 0                ; &cloptr296604[0]
  %f296608 = ptrtoint void(i64,i64,i64)* @lam294071 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296608, i64* %eptr296605                                               ; store fptr
  %arg293969 = ptrtoint i64* %cloptr296604 to i64                                    ; closure cast; i64* -> i64
  %cloptr296609 = inttoptr i64 %cE1$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr296610 = getelementptr inbounds i64, i64* %cloptr296609, i64 0               ; &cloptr296609[0]
  %f296612 = load i64, i64* %i0ptr296610, align 8                                    ; load; *i0ptr296610
  %fptr296611 = inttoptr i64 %f296612 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296611(i64 %cE1$_37take, i64 %arg293969, i64 %a292869, i64 %a292870); tail call
  ret void
}


define void @lam294071(i64 %env294072, i64 %_95293150, i64 %a292871) {
  %envptr296613 = inttoptr i64 %env294072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296614 = getelementptr inbounds i64, i64* %envptr296613, i64 2              ; &envptr296613[2]
  %a292868 = load i64, i64* %envptr296614, align 8                                   ; load; *envptr296614
  %envptr296615 = inttoptr i64 %env294072 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296616 = getelementptr inbounds i64, i64* %envptr296615, i64 1              ; &envptr296615[1]
  %cont293149 = load i64, i64* %envptr296616, align 8                                ; load; *envptr296616
  %retprim293151 = call i64 @prim_cons(i64 %a292868, i64 %a292871)                   ; call prim_cons
  %arg293974 = add i64 0, 0                                                          ; quoted ()
  %cloptr296617 = inttoptr i64 %cont293149 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296618 = getelementptr inbounds i64, i64* %cloptr296617, i64 0               ; &cloptr296617[0]
  %f296620 = load i64, i64* %i0ptr296618, align 8                                    ; load; *i0ptr296618
  %fptr296619 = inttoptr i64 %f296620 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296619(i64 %cont293149, i64 %arg293974, i64 %retprim293151); tail call
  ret void
}


define void @lam294064(i64 %env294065, i64 %cont293152, i64 %PbX$_37map) {
  %arg293977 = add i64 0, 0                                                          ; quoted ()
  %cloptr296621 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296623 = getelementptr inbounds i64, i64* %cloptr296621, i64 1                ; &eptr296623[1]
  store i64 %PbX$_37map, i64* %eptr296623                                            ; *eptr296623 = %PbX$_37map
  %eptr296622 = getelementptr inbounds i64, i64* %cloptr296621, i64 0                ; &cloptr296621[0]
  %f296624 = ptrtoint void(i64,i64,i64,i64)* @lam294061 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f296624, i64* %eptr296622                                               ; store fptr
  %arg293976 = ptrtoint i64* %cloptr296621 to i64                                    ; closure cast; i64* -> i64
  %cloptr296625 = inttoptr i64 %cont293152 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296626 = getelementptr inbounds i64, i64* %cloptr296625, i64 0               ; &cloptr296625[0]
  %f296628 = load i64, i64* %i0ptr296626, align 8                                    ; load; *i0ptr296626
  %fptr296627 = inttoptr i64 %f296628 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296627(i64 %cont293152, i64 %arg293977, i64 %arg293976); tail call
  ret void
}


define void @lam294061(i64 %env294062, i64 %cont293153, i64 %ksu$f, i64 %Dof$lst) {
  %envptr296629 = inttoptr i64 %env294062 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296630 = getelementptr inbounds i64, i64* %envptr296629, i64 1              ; &envptr296629[1]
  %PbX$_37map = load i64, i64* %envptr296630, align 8                                ; load; *envptr296630
  %a292861 = call i64 @prim_null_63(i64 %Dof$lst)                                    ; call prim_null_63
  %cmp296631 = icmp eq i64 %a292861, 15                                              ; false?
  br i1 %cmp296631, label %else296633, label %then296632                             ; if

then296632:
  %arg293981 = add i64 0, 0                                                          ; quoted ()
  %arg293980 = add i64 0, 0                                                          ; quoted ()
  %cloptr296634 = inttoptr i64 %cont293153 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296635 = getelementptr inbounds i64, i64* %cloptr296634, i64 0               ; &cloptr296634[0]
  %f296637 = load i64, i64* %i0ptr296635, align 8                                    ; load; *i0ptr296635
  %fptr296636 = inttoptr i64 %f296637 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296636(i64 %cont293153, i64 %arg293981, i64 %arg293980); tail call
  ret void

else296633:
  %a292862 = call i64 @prim_car(i64 %Dof$lst)                                        ; call prim_car
  %cloptr296638 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr296640 = getelementptr inbounds i64, i64* %cloptr296638, i64 1                ; &eptr296640[1]
  %eptr296641 = getelementptr inbounds i64, i64* %cloptr296638, i64 2                ; &eptr296641[2]
  %eptr296642 = getelementptr inbounds i64, i64* %cloptr296638, i64 3                ; &eptr296642[3]
  %eptr296643 = getelementptr inbounds i64, i64* %cloptr296638, i64 4                ; &eptr296643[4]
  store i64 %ksu$f, i64* %eptr296640                                                 ; *eptr296640 = %ksu$f
  store i64 %Dof$lst, i64* %eptr296641                                               ; *eptr296641 = %Dof$lst
  store i64 %cont293153, i64* %eptr296642                                            ; *eptr296642 = %cont293153
  store i64 %PbX$_37map, i64* %eptr296643                                            ; *eptr296643 = %PbX$_37map
  %eptr296639 = getelementptr inbounds i64, i64* %cloptr296638, i64 0                ; &cloptr296638[0]
  %f296644 = ptrtoint void(i64,i64,i64)* @lam294059 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296644, i64* %eptr296639                                               ; store fptr
  %arg293985 = ptrtoint i64* %cloptr296638 to i64                                    ; closure cast; i64* -> i64
  %cloptr296645 = inttoptr i64 %ksu$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296646 = getelementptr inbounds i64, i64* %cloptr296645, i64 0               ; &cloptr296645[0]
  %f296648 = load i64, i64* %i0ptr296646, align 8                                    ; load; *i0ptr296646
  %fptr296647 = inttoptr i64 %f296648 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296647(i64 %ksu$f, i64 %arg293985, i64 %a292862)    ; tail call
  ret void
}


define void @lam294059(i64 %env294060, i64 %_95293154, i64 %a292863) {
  %envptr296649 = inttoptr i64 %env294060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296650 = getelementptr inbounds i64, i64* %envptr296649, i64 4              ; &envptr296649[4]
  %PbX$_37map = load i64, i64* %envptr296650, align 8                                ; load; *envptr296650
  %envptr296651 = inttoptr i64 %env294060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296652 = getelementptr inbounds i64, i64* %envptr296651, i64 3              ; &envptr296651[3]
  %cont293153 = load i64, i64* %envptr296652, align 8                                ; load; *envptr296652
  %envptr296653 = inttoptr i64 %env294060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296654 = getelementptr inbounds i64, i64* %envptr296653, i64 2              ; &envptr296653[2]
  %Dof$lst = load i64, i64* %envptr296654, align 8                                   ; load; *envptr296654
  %envptr296655 = inttoptr i64 %env294060 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296656 = getelementptr inbounds i64, i64* %envptr296655, i64 1              ; &envptr296655[1]
  %ksu$f = load i64, i64* %envptr296656, align 8                                     ; load; *envptr296656
  %a292864 = call i64 @prim_cdr(i64 %Dof$lst)                                        ; call prim_cdr
  %cloptr296657 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr296659 = getelementptr inbounds i64, i64* %cloptr296657, i64 1                ; &eptr296659[1]
  %eptr296660 = getelementptr inbounds i64, i64* %cloptr296657, i64 2                ; &eptr296660[2]
  store i64 %a292863, i64* %eptr296659                                               ; *eptr296659 = %a292863
  store i64 %cont293153, i64* %eptr296660                                            ; *eptr296660 = %cont293153
  %eptr296658 = getelementptr inbounds i64, i64* %cloptr296657, i64 0                ; &cloptr296657[0]
  %f296661 = ptrtoint void(i64,i64,i64)* @lam294057 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296661, i64* %eptr296658                                               ; store fptr
  %arg293990 = ptrtoint i64* %cloptr296657 to i64                                    ; closure cast; i64* -> i64
  %cloptr296662 = inttoptr i64 %PbX$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296663 = getelementptr inbounds i64, i64* %cloptr296662, i64 0               ; &cloptr296662[0]
  %f296665 = load i64, i64* %i0ptr296663, align 8                                    ; load; *i0ptr296663
  %fptr296664 = inttoptr i64 %f296665 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296664(i64 %PbX$_37map, i64 %arg293990, i64 %ksu$f, i64 %a292864); tail call
  ret void
}


define void @lam294057(i64 %env294058, i64 %_95293155, i64 %a292865) {
  %envptr296666 = inttoptr i64 %env294058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296667 = getelementptr inbounds i64, i64* %envptr296666, i64 2              ; &envptr296666[2]
  %cont293153 = load i64, i64* %envptr296667, align 8                                ; load; *envptr296667
  %envptr296668 = inttoptr i64 %env294058 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296669 = getelementptr inbounds i64, i64* %envptr296668, i64 1              ; &envptr296668[1]
  %a292863 = load i64, i64* %envptr296669, align 8                                   ; load; *envptr296669
  %retprim293156 = call i64 @prim_cons(i64 %a292863, i64 %a292865)                   ; call prim_cons
  %arg293995 = add i64 0, 0                                                          ; quoted ()
  %cloptr296670 = inttoptr i64 %cont293153 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296671 = getelementptr inbounds i64, i64* %cloptr296670, i64 0               ; &cloptr296670[0]
  %f296673 = load i64, i64* %i0ptr296671, align 8                                    ; load; *i0ptr296671
  %fptr296672 = inttoptr i64 %f296673 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296672(i64 %cont293153, i64 %arg293995, i64 %retprim293156); tail call
  ret void
}


define void @lam294052(i64 %env294053, i64 %cont293157, i64 %BwC$_37foldr1) {
  %arg293998 = add i64 0, 0                                                          ; quoted ()
  %cloptr296674 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296676 = getelementptr inbounds i64, i64* %cloptr296674, i64 1                ; &eptr296676[1]
  store i64 %BwC$_37foldr1, i64* %eptr296676                                         ; *eptr296676 = %BwC$_37foldr1
  %eptr296675 = getelementptr inbounds i64, i64* %cloptr296674, i64 0                ; &cloptr296674[0]
  %f296677 = ptrtoint void(i64,i64,i64,i64,i64)* @lam294049 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f296677, i64* %eptr296675                                               ; store fptr
  %arg293997 = ptrtoint i64* %cloptr296674 to i64                                    ; closure cast; i64* -> i64
  %cloptr296678 = inttoptr i64 %cont293157 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296679 = getelementptr inbounds i64, i64* %cloptr296678, i64 0               ; &cloptr296678[0]
  %f296681 = load i64, i64* %i0ptr296679, align 8                                    ; load; *i0ptr296679
  %fptr296680 = inttoptr i64 %f296681 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296680(i64 %cont293157, i64 %arg293998, i64 %arg293997); tail call
  ret void
}


define void @lam294049(i64 %env294050, i64 %cont293158, i64 %pmn$f, i64 %c7x$acc, i64 %U4d$lst) {
  %envptr296682 = inttoptr i64 %env294050 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296683 = getelementptr inbounds i64, i64* %envptr296682, i64 1              ; &envptr296682[1]
  %BwC$_37foldr1 = load i64, i64* %envptr296683, align 8                             ; load; *envptr296683
  %a292857 = call i64 @prim_null_63(i64 %U4d$lst)                                    ; call prim_null_63
  %cmp296684 = icmp eq i64 %a292857, 15                                              ; false?
  br i1 %cmp296684, label %else296686, label %then296685                             ; if

then296685:
  %arg294002 = add i64 0, 0                                                          ; quoted ()
  %cloptr296687 = inttoptr i64 %cont293158 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296688 = getelementptr inbounds i64, i64* %cloptr296687, i64 0               ; &cloptr296687[0]
  %f296690 = load i64, i64* %i0ptr296688, align 8                                    ; load; *i0ptr296688
  %fptr296689 = inttoptr i64 %f296690 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296689(i64 %cont293158, i64 %arg294002, i64 %c7x$acc); tail call
  ret void

else296686:
  %a292858 = call i64 @prim_car(i64 %U4d$lst)                                        ; call prim_car
  %a292859 = call i64 @prim_cdr(i64 %U4d$lst)                                        ; call prim_cdr
  %cloptr296691 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr296693 = getelementptr inbounds i64, i64* %cloptr296691, i64 1                ; &eptr296693[1]
  %eptr296694 = getelementptr inbounds i64, i64* %cloptr296691, i64 2                ; &eptr296694[2]
  %eptr296695 = getelementptr inbounds i64, i64* %cloptr296691, i64 3                ; &eptr296695[3]
  store i64 %a292858, i64* %eptr296693                                               ; *eptr296693 = %a292858
  store i64 %pmn$f, i64* %eptr296694                                                 ; *eptr296694 = %pmn$f
  store i64 %cont293158, i64* %eptr296695                                            ; *eptr296695 = %cont293158
  %eptr296692 = getelementptr inbounds i64, i64* %cloptr296691, i64 0                ; &cloptr296691[0]
  %f296696 = ptrtoint void(i64,i64,i64)* @lam294047 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296696, i64* %eptr296692                                               ; store fptr
  %arg294009 = ptrtoint i64* %cloptr296691 to i64                                    ; closure cast; i64* -> i64
  %cloptr296697 = inttoptr i64 %BwC$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  %i0ptr296698 = getelementptr inbounds i64, i64* %cloptr296697, i64 0               ; &cloptr296697[0]
  %f296700 = load i64, i64* %i0ptr296698, align 8                                    ; load; *i0ptr296698
  %fptr296699 = inttoptr i64 %f296700 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296699(i64 %BwC$_37foldr1, i64 %arg294009, i64 %pmn$f, i64 %c7x$acc, i64 %a292859); tail call
  ret void
}


define void @lam294047(i64 %env294048, i64 %_95293159, i64 %a292860) {
  %envptr296701 = inttoptr i64 %env294048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296702 = getelementptr inbounds i64, i64* %envptr296701, i64 3              ; &envptr296701[3]
  %cont293158 = load i64, i64* %envptr296702, align 8                                ; load; *envptr296702
  %envptr296703 = inttoptr i64 %env294048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296704 = getelementptr inbounds i64, i64* %envptr296703, i64 2              ; &envptr296703[2]
  %pmn$f = load i64, i64* %envptr296704, align 8                                     ; load; *envptr296704
  %envptr296705 = inttoptr i64 %env294048 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296706 = getelementptr inbounds i64, i64* %envptr296705, i64 1              ; &envptr296705[1]
  %a292858 = load i64, i64* %envptr296706, align 8                                   ; load; *envptr296706
  %cloptr296707 = inttoptr i64 %pmn$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296708 = getelementptr inbounds i64, i64* %cloptr296707, i64 0               ; &cloptr296707[0]
  %f296710 = load i64, i64* %i0ptr296708, align 8                                    ; load; *i0ptr296708
  %fptr296709 = inttoptr i64 %f296710 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296709(i64 %pmn$f, i64 %cont293158, i64 %a292858, i64 %a292860); tail call
  ret void
}


define void @lam294044(i64 %env294045, i64 %cont293161, i64 %FtB$y) {
  %arg294016 = add i64 0, 0                                                          ; quoted ()
  %cloptr296711 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr296713 = getelementptr inbounds i64, i64* %cloptr296711, i64 1                ; &eptr296713[1]
  store i64 %FtB$y, i64* %eptr296713                                                 ; *eptr296713 = %FtB$y
  %eptr296712 = getelementptr inbounds i64, i64* %cloptr296711, i64 0                ; &cloptr296711[0]
  %f296714 = ptrtoint void(i64,i64,i64)* @lam294041 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296714, i64* %eptr296712                                               ; store fptr
  %arg294015 = ptrtoint i64* %cloptr296711 to i64                                    ; closure cast; i64* -> i64
  %cloptr296715 = inttoptr i64 %cont293161 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr296716 = getelementptr inbounds i64, i64* %cloptr296715, i64 0               ; &cloptr296715[0]
  %f296718 = load i64, i64* %i0ptr296716, align 8                                    ; load; *i0ptr296716
  %fptr296717 = inttoptr i64 %f296718 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296717(i64 %cont293161, i64 %arg294016, i64 %arg294015); tail call
  ret void
}


define void @lam294041(i64 %env294042, i64 %cont293162, i64 %qgk$f) {
  %envptr296719 = inttoptr i64 %env294042 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296720 = getelementptr inbounds i64, i64* %envptr296719, i64 1              ; &envptr296719[1]
  %FtB$y = load i64, i64* %envptr296720, align 8                                     ; load; *envptr296720
  %cloptr296721 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr296723 = getelementptr inbounds i64, i64* %cloptr296721, i64 1                ; &eptr296723[1]
  %eptr296724 = getelementptr inbounds i64, i64* %cloptr296721, i64 2                ; &eptr296724[2]
  store i64 %qgk$f, i64* %eptr296723                                                 ; *eptr296723 = %qgk$f
  store i64 %FtB$y, i64* %eptr296724                                                 ; *eptr296724 = %FtB$y
  %eptr296722 = getelementptr inbounds i64, i64* %cloptr296721, i64 0                ; &cloptr296721[0]
  %f296725 = ptrtoint void(i64,i64)* @lam294039 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f296725, i64* %eptr296722                                               ; store fptr
  %arg294018 = ptrtoint i64* %cloptr296721 to i64                                    ; closure cast; i64* -> i64
  %cloptr296726 = inttoptr i64 %qgk$f to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296727 = getelementptr inbounds i64, i64* %cloptr296726, i64 0               ; &cloptr296726[0]
  %f296729 = load i64, i64* %i0ptr296727, align 8                                    ; load; *i0ptr296727
  %fptr296728 = inttoptr i64 %f296729 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296728(i64 %qgk$f, i64 %cont293162, i64 %arg294018) ; tail call
  ret void
}


define void @lam294039(i64 %env294040, i64 %Ssn$args293164) {
  %envptr296730 = inttoptr i64 %env294040 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296731 = getelementptr inbounds i64, i64* %envptr296730, i64 2              ; &envptr296730[2]
  %FtB$y = load i64, i64* %envptr296731, align 8                                     ; load; *envptr296731
  %envptr296732 = inttoptr i64 %env294040 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296733 = getelementptr inbounds i64, i64* %envptr296732, i64 1              ; &envptr296732[1]
  %qgk$f = load i64, i64* %envptr296733, align 8                                     ; load; *envptr296733
  %cont293163 = call i64 @prim_car(i64 %Ssn$args293164)                              ; call prim_car
  %Ssn$args = call i64 @prim_cdr(i64 %Ssn$args293164)                                ; call prim_cdr
  %cloptr296734 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr296736 = getelementptr inbounds i64, i64* %cloptr296734, i64 1                ; &eptr296736[1]
  %eptr296737 = getelementptr inbounds i64, i64* %cloptr296734, i64 2                ; &eptr296737[2]
  %eptr296738 = getelementptr inbounds i64, i64* %cloptr296734, i64 3                ; &eptr296738[3]
  store i64 %cont293163, i64* %eptr296736                                            ; *eptr296736 = %cont293163
  store i64 %Ssn$args, i64* %eptr296737                                              ; *eptr296737 = %Ssn$args
  store i64 %qgk$f, i64* %eptr296738                                                 ; *eptr296738 = %qgk$f
  %eptr296735 = getelementptr inbounds i64, i64* %cloptr296734, i64 0                ; &cloptr296734[0]
  %f296739 = ptrtoint void(i64,i64,i64)* @lam294037 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296739, i64* %eptr296735                                               ; store fptr
  %arg294024 = ptrtoint i64* %cloptr296734 to i64                                    ; closure cast; i64* -> i64
  %cloptr296740 = inttoptr i64 %FtB$y to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr296741 = getelementptr inbounds i64, i64* %cloptr296740, i64 0               ; &cloptr296740[0]
  %f296743 = load i64, i64* %i0ptr296741, align 8                                    ; load; *i0ptr296741
  %fptr296742 = inttoptr i64 %f296743 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296742(i64 %FtB$y, i64 %arg294024, i64 %FtB$y)      ; tail call
  ret void
}


define void @lam294037(i64 %env294038, i64 %_95293165, i64 %a292855) {
  %envptr296744 = inttoptr i64 %env294038 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296745 = getelementptr inbounds i64, i64* %envptr296744, i64 3              ; &envptr296744[3]
  %qgk$f = load i64, i64* %envptr296745, align 8                                     ; load; *envptr296745
  %envptr296746 = inttoptr i64 %env294038 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296747 = getelementptr inbounds i64, i64* %envptr296746, i64 2              ; &envptr296746[2]
  %Ssn$args = load i64, i64* %envptr296747, align 8                                  ; load; *envptr296747
  %envptr296748 = inttoptr i64 %env294038 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296749 = getelementptr inbounds i64, i64* %envptr296748, i64 1              ; &envptr296748[1]
  %cont293163 = load i64, i64* %envptr296749, align 8                                ; load; *envptr296749
  %cloptr296750 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr296752 = getelementptr inbounds i64, i64* %cloptr296750, i64 1                ; &eptr296752[1]
  %eptr296753 = getelementptr inbounds i64, i64* %cloptr296750, i64 2                ; &eptr296753[2]
  store i64 %cont293163, i64* %eptr296752                                            ; *eptr296752 = %cont293163
  store i64 %Ssn$args, i64* %eptr296753                                              ; *eptr296753 = %Ssn$args
  %eptr296751 = getelementptr inbounds i64, i64* %cloptr296750, i64 0                ; &cloptr296750[0]
  %f296754 = ptrtoint void(i64,i64,i64)* @lam294035 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f296754, i64* %eptr296751                                               ; store fptr
  %arg294027 = ptrtoint i64* %cloptr296750 to i64                                    ; closure cast; i64* -> i64
  %cloptr296755 = inttoptr i64 %a292855 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr296756 = getelementptr inbounds i64, i64* %cloptr296755, i64 0               ; &cloptr296755[0]
  %f296758 = load i64, i64* %i0ptr296756, align 8                                    ; load; *i0ptr296756
  %fptr296757 = inttoptr i64 %f296758 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296757(i64 %a292855, i64 %arg294027, i64 %qgk$f)    ; tail call
  ret void
}


define void @lam294035(i64 %env294036, i64 %_95293166, i64 %a292856) {
  %envptr296759 = inttoptr i64 %env294036 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296760 = getelementptr inbounds i64, i64* %envptr296759, i64 2              ; &envptr296759[2]
  %Ssn$args = load i64, i64* %envptr296760, align 8                                  ; load; *envptr296760
  %envptr296761 = inttoptr i64 %env294036 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr296762 = getelementptr inbounds i64, i64* %envptr296761, i64 1              ; &envptr296761[1]
  %cont293163 = load i64, i64* %envptr296762, align 8                                ; load; *envptr296762
  %cps_45lst293167 = call i64 @prim_cons(i64 %cont293163, i64 %Ssn$args)             ; call prim_cons
  %cloptr296763 = inttoptr i64 %a292856 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr296764 = getelementptr inbounds i64, i64* %cloptr296763, i64 0               ; &cloptr296763[0]
  %f296766 = load i64, i64* %i0ptr296764, align 8                                    ; load; *i0ptr296764
  %fptr296765 = inttoptr i64 %f296766 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr296765(i64 %a292856, i64 %cps_45lst293167)          ; tail call
  ret void
}





@sym295343 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
