.class Ljava/lang/invoke/Transformers$Collector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Collector"
.end annotation


# instance fields
.field private final greylist-max-o arrayOffset:I

.field private final greylist-max-o arrayTypeChar:C

.field private final greylist-max-o copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o numArrayArgs:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V
    .registers 7
    .param p1, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1332
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/invoke/MethodType;->asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1334
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    .line 1337
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    .line 1338
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    .line 1339
    iput p3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    .line 1342
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1343
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 11
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1351
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1355
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1356
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v2, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1357
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1358
    .local v2, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v2, p1, v3, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1360
    iget-char v3, p0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    const/16 v4, 0x46

    if-eq v3, v4, :cond_134

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_100

    const/16 v4, 0x53

    if-eq v3, v4, :cond_e8

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_d0

    const/16 v4, 0x49

    if-eq v3, v4, :cond_b7

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_9e

    packed-switch v3, :pswitch_data_156

    goto/16 :goto_14c

    .line 1434
    :pswitch_53
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [D

    .line 1435
    .local v3, "array":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_65

    .line 1436
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1435
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 1438
    .end local v4    # "i":I
    :cond_65
    const-class v4, [D

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1439
    goto/16 :goto_14c

    .line 1410
    .end local v3    # "array":[D
    :pswitch_6c
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [C

    .line 1411
    .local v3, "array":[C
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_71
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_7e

    .line 1412
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v5

    aput-char v5, v3, v4

    .line 1411
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 1414
    .end local v4    # "i":I
    :cond_7e
    const-class v4, [C

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1415
    goto/16 :goto_14c

    .line 1394
    .end local v3    # "array":[C
    :pswitch_85
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [B

    .line 1395
    .local v3, "array":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8a
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_97

    .line 1396
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v5

    aput-byte v5, v3, v4

    .line 1395
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 1398
    .end local v4    # "i":I
    :cond_97
    const-class v4, [B

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1399
    goto/16 :goto_14c

    .line 1386
    .end local v3    # "array":[B
    :cond_9e
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [J

    .line 1387
    .local v3, "array":[J
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a3
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_b0

    .line 1388
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1387
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    .line 1390
    .end local v4    # "i":I
    :cond_b0
    const-class v4, [J

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1391
    goto/16 :goto_14c

    .line 1378
    .end local v3    # "array":[J
    :cond_b7
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [I

    .line 1379
    .local v3, "array":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_bc
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_c9

    .line 1380
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v5

    aput v5, v3, v4

    .line 1379
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 1382
    .end local v4    # "i":I
    :cond_c9
    const-class v4, [I

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1383
    goto/16 :goto_14c

    .line 1418
    .end local v3    # "array":[I
    :cond_d0
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [Z

    .line 1419
    .local v3, "array":[Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d5
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_e2

    .line 1420
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 1419
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 1422
    .end local v4    # "i":I
    :cond_e2
    const-class v4, [Z

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1423
    goto :goto_14c

    .line 1402
    .end local v3    # "array":[Z
    :cond_e8
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [S

    .line 1403
    .local v3, "array":[S
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_ed
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_fa

    .line 1404
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v5

    aput-short v5, v3, v4

    .line 1403
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    .line 1406
    .end local v4    # "i":I
    :cond_fa
    const-class v4, [S

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1407
    goto :goto_14c

    .line 1365
    .end local v3    # "array":[S
    :cond_100
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    iget v4, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    aget-object v3, v3, v4

    .line 1366
    .local v3, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1367
    .local v4, "targetComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Collector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v5

    .line 1369
    .local v5, "adapterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v6, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 1370
    .local v6, "arr":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_123
    iget v8, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v7, v8, :cond_130

    .line 1371
    invoke-virtual {v2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1370
    add-int/lit8 v7, v7, 0x1

    goto :goto_123

    .line 1374
    .end local v7    # "i":I
    :cond_130
    invoke-virtual {v1, v6, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1375
    goto :goto_14c

    .line 1426
    .end local v3    # "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "targetComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "adapterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "arr":[Ljava/lang/Object;
    :cond_134
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [F

    .line 1427
    .local v3, "array":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_139
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_146

    .line 1428
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v5

    aput v5, v3, v4

    .line 1427
    add-int/lit8 v4, v4, 0x1

    goto :goto_139

    .line 1430
    .end local v4    # "i":I
    :cond_146
    const-class v4, [F

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1431
    nop

    .line 1443
    .end local v3    # "array":[F
    :goto_14c
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1444
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1445
    return-void

    :pswitch_data_156
    .packed-switch 0x42
        :pswitch_85
        :pswitch_6c
        :pswitch_53
    .end packed-switch
.end method
