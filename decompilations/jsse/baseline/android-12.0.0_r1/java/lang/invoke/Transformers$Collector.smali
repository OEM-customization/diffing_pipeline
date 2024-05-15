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

    move-result-object v1

    invoke-static {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    iput-char v1, p0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    .line 1339
    iput p3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    .line 1342
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

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

    sparse-switch v3, :sswitch_data_13e

    goto/16 :goto_133

    .line 1418
    :sswitch_3b
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [Z

    .line 1419
    .local v3, "array":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_4d

    .line 1420
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 1419
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1422
    .end local v4    # "i":I
    :cond_4d
    const-class v4, [Z

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1423
    goto/16 :goto_133

    .line 1402
    .end local v3    # "array":[Z
    :sswitch_54
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [S

    .line 1403
    .local v3, "array":[S
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_59
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_66

    .line 1404
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v5

    aput-short v5, v3, v4

    .line 1403
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1406
    .end local v4    # "i":I
    :cond_66
    const-class v4, [S

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1407
    goto/16 :goto_133

    .line 1365
    .end local v3    # "array":[S
    :sswitch_6d
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
    :goto_90
    iget v8, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v7, v8, :cond_9d

    .line 1371
    invoke-virtual {v2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1370
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 1374
    .end local v7    # "i":I
    :cond_9d
    invoke-virtual {v1, v6, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1375
    goto/16 :goto_133

    .line 1386
    .end local v3    # "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "targetComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "adapterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "arr":[Ljava/lang/Object;
    :sswitch_a2
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [J

    .line 1387
    .local v3, "array":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a7
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_b4

    .line 1388
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1387
    add-int/lit8 v4, v4, 0x1

    goto :goto_a7

    .line 1390
    .end local v4    # "i":I
    :cond_b4
    const-class v4, [J

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1391
    goto/16 :goto_133

    .line 1378
    .end local v3    # "array":[J
    :sswitch_bb
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [I

    .line 1379
    .local v3, "array":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c0
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_cd

    .line 1380
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v5

    aput v5, v3, v4

    .line 1379
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 1382
    .end local v4    # "i":I
    :cond_cd
    const-class v4, [I

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1383
    goto :goto_133

    .line 1426
    .end local v3    # "array":[I
    :sswitch_d3
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [F

    .line 1427
    .local v3, "array":[F
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d8
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_e5

    .line 1428
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v5

    aput v5, v3, v4

    .line 1427
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 1430
    .end local v4    # "i":I
    :cond_e5
    const-class v4, [F

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1431
    goto :goto_133

    .line 1434
    .end local v3    # "array":[F
    :sswitch_eb
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [D

    .line 1435
    .local v3, "array":[D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_f0
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_fd

    .line 1436
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1435
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    .line 1438
    .end local v4    # "i":I
    :cond_fd
    const-class v4, [D

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1439
    goto :goto_133

    .line 1410
    .end local v3    # "array":[D
    :sswitch_103
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [C

    .line 1411
    .local v3, "array":[C
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_108
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_115

    .line 1412
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v5

    aput-char v5, v3, v4

    .line 1411
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 1414
    .end local v4    # "i":I
    :cond_115
    const-class v4, [C

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1415
    goto :goto_133

    .line 1394
    .end local v3    # "array":[C
    :sswitch_11b
    iget v3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    new-array v3, v3, [B

    .line 1395
    .local v3, "array":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_120
    iget v5, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    if-ge v4, v5, :cond_12d

    .line 1396
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v5

    aput-byte v5, v3, v4

    .line 1395
    add-int/lit8 v4, v4, 0x1

    goto :goto_120

    .line 1398
    .end local v4    # "i":I
    :cond_12d
    const-class v4, [B

    invoke-virtual {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1399
    nop

    .line 1443
    .end local v3    # "array":[B
    :goto_133
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v3, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1444
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1445
    return-void

    nop

    :sswitch_data_13e
    .sparse-switch
        0x42 -> :sswitch_11b
        0x43 -> :sswitch_103
        0x44 -> :sswitch_eb
        0x46 -> :sswitch_d3
        0x49 -> :sswitch_bb
        0x4a -> :sswitch_a2
        0x4c -> :sswitch_6d
        0x53 -> :sswitch_54
        0x5a -> :sswitch_3b
    .end sparse-switch
.end method
