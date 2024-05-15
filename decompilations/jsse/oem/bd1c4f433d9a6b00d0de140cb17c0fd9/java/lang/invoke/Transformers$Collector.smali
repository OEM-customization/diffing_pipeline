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
.field private final arrayOffset:I

.field private final arrayTypeChar:C

.field private final copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final numArrayArgs:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;I)V
    .registers 7
    .param p1, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 1331
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/invoke/MethodType;->asCollectorType(Ljava/lang/Class;I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1333
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    .line 1336
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    .line 1337
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    iput-char v0, p0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    .line 1338
    iput p3, p0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    .line 1341
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1342
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 27
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v19

    .line 1350
    .local v19, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1354
    new-instance v21, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct/range {v21 .. v21}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1355
    .local v21, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1356
    new-instance v17, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1357
    .local v17, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1359
    move-object/from16 v0, p0

    iget-char v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayTypeChar:C

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_258

    .line 1442
    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    return-wide v0

    sput-object v17, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 1443
    const/16 v0, 0x108

    const-string v0, "Ljava/util/ArrayList<Ljava/lang/String;>;"

    if-ne v1, v0, :cond_b1

    .line 1444
    return-void

    .line 1364
    :sswitch_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/Transformers$Collector;->target:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    :cond_b1
    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->arrayOffset:I

    move/from16 v23, v0

    aget-object v20, v22, v23

    .line 1365
    .local v20, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v18

    .line 1366
    .local v18, "targetComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/invoke/Transformers$Collector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v6

    .line 1368
    .local v6, "adapterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 1369
    .local v7, "arr":[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_d8
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_ef

    .line 1370
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v7, v16

    .line 1369
    add-int/lit8 v16, v16, 0x1

    goto :goto_d8

    .line 1373
    :cond_ef
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_8e

    .line 1377
    .end local v6    # "adapterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "arr":[Ljava/lang/Object;
    .end local v16    # "i":I
    .end local v18    # "targetComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_f7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v12, v0, [I

    .line 1378
    .local v12, "array":[I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_103
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_118

    .line 1379
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v22

    aput v22, v12, v16

    .line 1378
    add-int/lit8 v16, v16, 0x1

    goto :goto_103

    .line 1381
    :cond_118
    const-class v22, [I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1385
    .end local v12    # "array":[I
    .end local v16    # "i":I
    :sswitch_123
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v13, v0, [J

    .line 1386
    .local v13, "array":[J
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_12f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_144

    .line 1387
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v22

    aput-wide v22, v13, v16

    .line 1386
    add-int/lit8 v16, v16, 0x1

    goto :goto_12f

    .line 1389
    :cond_144
    const-class v22, [J

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1393
    .end local v13    # "array":[J
    .end local v16    # "i":I
    :sswitch_14f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v8, v0, [B

    .line 1394
    .local v8, "array":[B
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_15b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_170

    .line 1395
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v22

    aput-byte v22, v8, v16

    .line 1394
    add-int/lit8 v16, v16, 0x1

    goto :goto_15b

    .line 1397
    :cond_170
    const-class v22, [B

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1401
    .end local v8    # "array":[B
    .end local v16    # "i":I
    :sswitch_17b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v14, v0, [S

    .line 1402
    .local v14, "array":[S
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_187
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_19c

    .line 1403
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v22

    aput-short v22, v14, v16

    .line 1402
    add-int/lit8 v16, v16, 0x1

    goto :goto_187

    .line 1405
    :cond_19c
    const-class v22, [S

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1409
    .end local v14    # "array":[S
    .end local v16    # "i":I
    :sswitch_1a7
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v9, v0, [C

    .line 1410
    .local v9, "array":[C
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1b3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1c8

    .line 1411
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v22

    aput-char v22, v9, v16

    .line 1410
    add-int/lit8 v16, v16, 0x1

    goto :goto_1b3

    .line 1413
    :cond_1c8
    const-class v22, [C

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1417
    .end local v9    # "array":[C
    .end local v16    # "i":I
    :sswitch_1d3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v15, v0, [Z

    .line 1418
    .local v15, "array":[Z
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1df
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1f4

    .line 1419
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v22

    aput-boolean v22, v15, v16

    .line 1418
    add-int/lit8 v16, v16, 0x1

    goto :goto_1df

    .line 1421
    :cond_1f4
    const-class v22, [Z

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1425
    .end local v15    # "array":[Z
    .end local v16    # "i":I
    :sswitch_1ff
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v11, v0, [F

    .line 1426
    .local v11, "array":[F
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_20b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_220

    .line 1427
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v22

    aput v22, v11, v16

    .line 1426
    add-int/lit8 v16, v16, 0x1

    goto :goto_20b

    .line 1429
    :cond_220
    const-class v22, [F

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1433
    .end local v11    # "array":[F
    .end local v16    # "i":I
    :sswitch_22b
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v10, v0, [D

    .line 1434
    .local v10, "array":[D
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_237
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/invoke/Transformers$Collector;->numArrayArgs:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_24c

    .line 1435
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v22

    aput-wide v22, v10, v16

    .line 1434
    add-int/lit8 v16, v16, 0x1

    goto :goto_237

    .line 1437
    :cond_24c
    const-class v22, [D

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_8e

    .line 1359
    nop

    :sswitch_data_258
    .sparse-switch
        0x42 -> :sswitch_14f
        0x43 -> :sswitch_1a7
        0x44 -> :sswitch_22b
        0x46 -> :sswitch_1ff
        0x49 -> :sswitch_f7
        0x4a -> :sswitch_123
        0x4c -> :sswitch_a4
        0x53 -> :sswitch_17b
        0x5a -> :sswitch_1d3
    .end sparse-switch
.end method
