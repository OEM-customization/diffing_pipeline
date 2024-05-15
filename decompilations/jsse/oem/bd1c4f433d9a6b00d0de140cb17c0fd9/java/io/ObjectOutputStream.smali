.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$BlockDataOutputStream;,
        Ljava/io/ObjectOutputStream$Caches;,
        Ljava/io/ObjectOutputStream$DebugTraceInfoStack;,
        Ljava/io/ObjectOutputStream$HandleTable;,
        Ljava/io/ObjectOutputStream$PutField;,
        Ljava/io/ObjectOutputStream$PutFieldImpl;,
        Ljava/io/ObjectOutputStream$ReplaceTable;
    }
.end annotation


# static fields
.field private static final extendedDebugInfo:Z


# instance fields
.field private final bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

.field private curContext:Ljava/io/SerialCallbackContext;

.field private curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

.field private final debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

.field private depth:I

.field private final enableOverride:Z

.field private enableReplace:Z

.field private final handles:Ljava/io/ObjectOutputStream$HandleTable;

.field private primVals:[B

.field private protocol:I

.field private final subs:Ljava/io/ObjectOutputStream$ReplaceTable;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectOutputStream;

    .prologue
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    return-object v0
.end method

.method static synthetic -wrap0([DI[BII)V
    .registers 5
    .param p0, "src"    # [D
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->doublesToBytes([DI[BII)V

    return-void
.end method

.method static synthetic -wrap1([FI[BII)V
    .registers 5
    .param p0, "src"    # [F
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectOutputStream;->floatsToBytes([FI[BII)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    .registers 3
    .param p0, "-this"    # Ljava/io/ObjectOutputStream;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 185
    const/4 v1, 0x2

    iput v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 272
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 273
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 274
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 276
    :cond_12
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 277
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 278
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 280
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/high16 v1, 0x40400000    # 3.0f

    .line 239
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 185
    const/4 v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 240
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->verifySubclass()V

    .line 241
    new-instance v0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    .line 242
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    .line 243
    new-instance v0, Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-direct {v0, v2, v1}, Ljava/io/ObjectOutputStream$ReplaceTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    .line 245
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    .line 246
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/ObjectOutputStream;->debugInfoStack:Ljava/io/ObjectOutputStream$DebugTraceInfoStack;

    .line 252
    return-void
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/io/ObjectOutputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream$1;-><init>(Ljava/lang/Class;)V

    .line 1084
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1107
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$ReplaceTable;->clear()V

    .line 1115
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 1116
    return-void
.end method

.method private defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1571
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1572
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_17

    .line 1573
    new-instance v6, Ljava/lang/ClassCastException;

    invoke-direct {v6}, Ljava/lang/ClassCastException;-><init>()V

    throw v6

    .line 1576
    :cond_17
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkDefaultSerialize()V

    .line 1578
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v5

    .line 1579
    .local v5, "primDataSize":I
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    if-eqz v6, :cond_27

    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    array-length v6, v6

    if-ge v6, v5, :cond_2b

    .line 1580
    :cond_27
    new-array v6, v5, [B

    iput-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    .line 1582
    :cond_2b
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {p2, p1, v6}, Ljava/io/ObjectStreamClass;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1583
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    iget-object v7, p0, Ljava/io/ObjectOutputStream;->primVals:[B

    invoke-virtual {v6, v7, v8, v5, v8}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1585
    invoke-virtual {p2, v8}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 1586
    .local v1, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v6

    new-array v4, v6, [Ljava/lang/Object;

    .line 1587
    .local v4, "objVals":[Ljava/lang/Object;
    array-length v6, v1

    array-length v7, v4

    sub-int v3, v6, v7

    .line 1588
    .local v3, "numPrimFields":I
    invoke-virtual {p2, p1, v4}, Ljava/io/ObjectStreamClass;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1589
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    array-length v6, v4

    if-ge v2, v6, :cond_5e

    .line 1597
    :try_start_4c
    aget-object v6, v4, v2

    .line 1598
    add-int v7, v3, v2

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v7

    .line 1597
    invoke-direct {p0, v6, v7}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5c

    .line 1589
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1599
    :catchall_5c
    move-exception v6

    throw v6

    .line 1605
    :cond_5e
    return-void
.end method

.method private static native doublesToBytes([DI[BII)V
.end method

.method private static native floatsToBytes([FI[BII)V
.end method

.method private isCustomSubclass()Z
    .registers 3

    .prologue
    .line 1286
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1287
    const-class v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1286
    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private verifySubclass()V
    .registers 7

    .prologue
    .line 1057
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1058
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/io/ObjectOutputStream;

    if-ne v0, v4, :cond_9

    .line 1059
    return-void

    .line 1061
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1062
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_10

    .line 1063
    return-void

    .line 1065
    :cond_10
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1066
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1067
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1068
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_35

    .line 1069
    invoke-static {v0}, Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1070
    sget-object v4, Ljava/io/ObjectOutputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1073
    return-void

    .line 1075
    :cond_3c
    sget-object v4, Ljava/io/ObjectOutputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1076
    return-void
.end method

.method private writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .registers 22
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v15, 0x75

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1371
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_46

    const/4 v14, 0x0

    :goto_18
    invoke-virtual {v15, v14}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1374
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1375
    .local v4, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_121

    .line 1376
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_49

    move-object/from16 v8, p1

    .line 1377
    check-cast v8, [I

    .line 1378
    .local v8, "ia":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v8, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInts([III)V

    .line 1440
    .end local v8    # "ia":[I
    :cond_45
    :goto_45
    return-void

    .end local v4    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_46
    move-object/from16 v14, p1

    .line 1372
    goto :goto_18

    .line 1380
    .restart local v4    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_6a

    move-object/from16 v2, p1

    .line 1381
    check-cast v2, [B

    .line 1382
    .local v2, "ba":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v2, v0, v15, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    goto :goto_45

    .line 1384
    .end local v2    # "ba":[B
    :cond_6a
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_87

    move-object/from16 v9, p1

    .line 1385
    check-cast v9, [J

    .line 1386
    .local v9, "ja":[J
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v9, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongs([JII)V

    goto :goto_45

    .line 1388
    .end local v9    # "ja":[J
    :cond_87
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_a4

    move-object/from16 v6, p1

    .line 1389
    check-cast v6, [F

    .line 1390
    .local v6, "fa":[F
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloats([FII)V

    goto :goto_45

    .line 1392
    .end local v6    # "fa":[F
    :cond_a4
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_c1

    move-object/from16 v5, p1

    .line 1393
    check-cast v5, [D

    .line 1394
    .local v5, "da":[D
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDoubles([DII)V

    goto :goto_45

    .line 1396
    .end local v5    # "da":[D
    :cond_c1
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_df

    move-object/from16 v12, p1

    .line 1397
    check-cast v12, [S

    .line 1398
    .local v12, "sa":[S
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v12, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShorts([SII)V

    goto/16 :goto_45

    .line 1400
    .end local v12    # "sa":[S
    :cond_df
    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_fd

    move-object/from16 v3, p1

    .line 1401
    check-cast v3, [C

    .line 1402
    .local v3, "ca":[C
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    goto/16 :goto_45

    .line 1404
    .end local v3    # "ca":[C
    :cond_fd
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v14, :cond_11b

    move-object/from16 v13, p1

    .line 1405
    check-cast v13, [Z

    .line 1406
    .local v13, "za":[Z
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v15, v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0, v15}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBooleans([ZII)V

    goto/16 :goto_45

    .line 1409
    .end local v13    # "za":[Z
    :cond_11b
    new-instance v14, Ljava/lang/InternalError;

    invoke-direct {v14}, Ljava/lang/InternalError;-><init>()V

    throw v14

    :cond_121
    move-object/from16 v11, p1

    .line 1412
    check-cast v11, [Ljava/lang/Object;

    .line 1413
    .local v11, "objs":[Ljava/lang/Object;
    array-length v10, v11

    .line 1414
    .local v10, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v14, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1421
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_12e
    if-ge v7, v10, :cond_45

    .line 1427
    :try_start_130
    aget-object v14, v11, v7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_138
    .catchall {:try_start_130 .. :try_end_138} :catchall_13b

    .line 1421
    add-int/lit8 v7, v7, 0x1

    goto :goto_12e

    .line 1428
    :catchall_13b
    move-exception v14

    :try_start_13c
    throw v14
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13d

    .line 1434
    :catchall_13d
    move-exception v14

    throw v14
.end method

.method private writeClass(Ljava/lang/Class;Z)V
    .registers 5
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1262
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1263
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_15

    const/4 p1, 0x0

    .end local p1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1264
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    if-nez p1, :cond_6

    .line 1274
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1282
    :goto_5
    return-void

    .line 1275
    :cond_6
    if-nez p2, :cond_15

    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1276
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_5

    .line 1277
    .end local v0    # "handle":I
    :cond_15
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1278
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_5

    .line 1280
    :cond_1f
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V

    goto :goto_5
.end method

.method private writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V
    .registers 8
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v3, 0x0

    .line 1450
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1451
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1452
    .local v0, "sdesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_27

    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :goto_14
    invoke-direct {p0, p2, v3}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1453
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_29

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1454
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    .line 1455
    return-void

    .restart local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_27
    move-object p2, v0

    .line 1452
    goto :goto_14

    .end local p2    # "desc":Ljava/io/ObjectStreamClass;
    :cond_29
    move-object v1, p1

    .line 1453
    goto :goto_1c
.end method

.method private writeExternalData(Ljava/io/Externalizable;)V
    .registers 6
    .param p1, "obj"    # Ljava/io/Externalizable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1495
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1496
    .local v1, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1501
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1503
    .local v0, "oldContext":Ljava/io/SerialCallbackContext;
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1504
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v2, v3, :cond_17

    .line 1505
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_2e

    .line 1513
    :goto_12
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1519
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1520
    return-void

    .line 1507
    :cond_17
    :try_start_17
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1508
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1509
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1510
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2e

    goto :goto_12

    .line 1512
    :catchall_2e
    move-exception v2

    .line 1513
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1512
    throw v2
.end method

.method private writeFatalException(Ljava/io/IOException;)V
    .registers 5
    .param p1, "ex"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1622
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 1623
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v0

    .line 1625
    .local v0, "oldMode":Z
    :try_start_a
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1626
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V

    .line 1627
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1e

    .line 1629
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1631
    return-void

    .line 1628
    :catchall_1e
    move-exception v1

    .line 1629
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1628
    throw v1
.end method

.method private writeHandle(I)V
    .registers 4
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1254
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/high16 v1, 0x7e0000

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1255
    return-void
.end method

.method private writeNonProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 9
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1324
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1325
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_43

    :goto_e
    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1327
    iget v1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    if-ne v1, v5, :cond_45

    .line 1329
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    .line 1334
    :goto_18
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1335
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1336
    if-eqz v0, :cond_2c

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1337
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1339
    :cond_2c
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    .line 1340
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1341
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1343
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1344
    return-void

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    move-object v1, p1

    .line 1325
    goto :goto_e

    .line 1331
    :cond_45
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    goto :goto_18
.end method

.method private writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1247
    return-void
.end method

.method private writeObject0(Ljava/lang/Object;Z)V
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 1124
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    move-result v5

    .line 1125
    .local v5, "oldMode":Z
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1129
    :try_start_e
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$ReplaceTable;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_25

    .line 1130
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_10e

    .line 1237
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1131
    return-void

    .line 1132
    :cond_25
    if-nez p2, :cond_3e

    :try_start_27
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    .local v3, "h":I
    if-eq v3, v11, :cond_3e

    .line 1133
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_10e

    .line 1237
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1134
    return-void

    .line 1148
    .end local v3    # "h":I
    :cond_3e
    move-object v6, p1

    .line 1149
    .local v6, "orig":Ljava/lang/Object;
    :try_start_3f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1172
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1173
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteReplaceMethod()Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 1174
    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_10e

    move-result-object v4

    .end local p1    # "obj":Ljava/lang/Object;
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_60

    .line 1175
    :try_start_54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "repCl":Ljava/lang/Class;
    if-eq v8, v1, :cond_60

    .line 1177
    move-object v1, v8

    .line 1178
    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1182
    .end local v8    # "repCl":Ljava/lang/Class;
    :cond_60
    :goto_60
    iget-boolean v9, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-eqz v9, :cond_76

    .line 1183
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1184
    .local v7, "rep":Ljava/lang/Object;
    if-eq v7, v4, :cond_75

    if-eqz v7, :cond_75

    .line 1185
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1186
    const/4 v9, 0x1

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1188
    :cond_75
    move-object v4, v7

    .line 1192
    .end local v7    # "rep":Ljava/lang/Object;
    :cond_76
    if-eq v4, p1, :cond_a9

    .line 1193
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->subs:Ljava/io/ObjectOutputStream$ReplaceTable;

    invoke-virtual {v9, p1, v4}, Ljava/io/ObjectOutputStream$ReplaceTable;->assign(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1194
    if-nez v4, :cond_90

    .line 1195
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V
    :try_end_82
    .catchall {:try_start_54 .. :try_end_82} :catchall_cc

    .line 1237
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1196
    return-void

    .end local v4    # "obj":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8e
    move-object v4, p1

    .line 1175
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v4    # "obj":Ljava/lang/Object;
    goto :goto_60

    .line 1197
    :cond_90
    if-nez p2, :cond_a9

    :try_start_92
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v9, v4}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v3

    .restart local v3    # "h":I
    if-eq v3, v11, :cond_a9

    .line 1198
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream;->writeHandle(I)V
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_cc

    .line 1237
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1199
    return-void

    .line 1215
    .end local v3    # "h":I
    :cond_a9
    :try_start_a9
    instance-of v9, v4, Ljava/lang/Class;

    if-eqz v9, :cond_c0

    .line 1216
    move-object v0, v4

    check-cast v0, Ljava/lang/Class;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClass(Ljava/lang/Class;Z)V
    :try_end_b4
    .catchall {:try_start_a9 .. :try_end_b4} :catchall_cc

    .line 1237
    :goto_b4
    iget v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v9, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1240
    return-void

    .line 1217
    :cond_c0
    :try_start_c0
    instance-of v9, v4, Ljava/io/ObjectStreamClass;

    if-eqz v9, :cond_da

    .line 1218
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V
    :try_end_cb
    .catchall {:try_start_c0 .. :try_end_cb} :catchall_cc

    goto :goto_b4

    .line 1236
    :catchall_cc
    move-exception v9

    move-object p1, v4

    .line 1237
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_ce
    iget v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Ljava/io/ObjectOutputStream;->depth:I

    .line 1238
    iget-object v10, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v10, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1236
    throw v9

    .line 1220
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v6    # "orig":Ljava/lang/Object;
    :cond_da
    :try_start_da
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_e6

    .line 1221
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {p0, v9, p2}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_b4

    .line 1222
    :cond_e6
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 1223
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeArray(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_b4

    .line 1224
    :cond_f0
    instance-of v9, v4, Ljava/lang/Enum;

    if-eqz v9, :cond_fc

    .line 1225
    move-object v0, v4

    check-cast v0, Ljava/lang/Enum;

    move-object v9, v0

    invoke-direct {p0, v9, v2, p2}, Ljava/io/ObjectOutputStream;->writeEnum(Ljava/lang/Enum;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_b4

    .line 1226
    :cond_fc
    instance-of v9, v4, Ljava/io/Serializable;

    if-eqz v9, :cond_104

    .line 1227
    invoke-direct {p0, v4, v2, p2}, Ljava/io/ObjectOutputStream;->writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V

    goto :goto_b4

    .line 1233
    :cond_104
    new-instance v9, Ljava/io/NotSerializableException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_10e
    .catchall {:try_start_da .. :try_end_10e} :catchall_cc

    .line 1236
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "desc":Ljava/io/ObjectStreamClass;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "orig":Ljava/lang/Object;
    .restart local p1    # "obj":Ljava/lang/Object;
    :catchall_10e
    move-exception v9

    goto :goto_ce
.end method

.method private writeOrdinaryObject(Ljava/lang/Object;Ljava/io/ObjectStreamClass;Z)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->checkSerialize()V

    .line 1475
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1476
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1477
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p3, :cond_2a

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1478
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->isProxy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    .line 1479
    check-cast p1, Ljava/io/Externalizable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeExternalData(Ljava/io/Externalizable;)V

    .line 1488
    :goto_29
    return-void

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2a
    move-object v0, p1

    .line 1477
    goto :goto_13

    .line 1481
    :cond_2c
    invoke-direct {p0, p1, p2}, Ljava/io/ObjectOutputStream;->writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    goto :goto_29

    .line 1483
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_30
    move-exception v0

    throw v0
.end method

.method private writeProxyDesc(Ljava/io/ObjectStreamClass;Z)V
    .registers 10
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1296
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1297
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_30

    :goto_d
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1299
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1300
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1301
    .local v2, "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 1302
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 1303
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i":I
    .end local v2    # "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_30
    move-object v3, p1

    .line 1297
    goto :goto_d

    .line 1306
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "i":I
    .restart local v2    # "ifaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_32
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1307
    if-eqz v0, :cond_43

    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->isCustomSubclass()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1308
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 1310
    :cond_43
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    .line 1311
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1312
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1314
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)V

    .line 1315
    return-void
.end method

.method private writeSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    .line 1530
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v5, v4

    if-ge v0, v5, :cond_4f

    .line 1531
    aget-object v5, v4, v0

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1532
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectMethod()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1533
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1534
    .local v2, "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1535
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1543
    .local v1, "oldContext":Ljava/io/SerialCallbackContext;
    :try_start_19
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1544
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1545
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 1546
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 1547
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_42

    .line 1549
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1550
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1556
    iput-object v2, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 1530
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1548
    .restart local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .restart local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :catchall_42
    move-exception v5

    .line 1549
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1550
    iput-object v1, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1548
    throw v5

    .line 1558
    .end local v1    # "oldContext":Ljava/io/SerialCallbackContext;
    .end local v2    # "oldPut":Ljava/io/ObjectOutputStream$PutFieldImpl;
    :cond_4b
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_3f

    .line 1561
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_4f
    return-void
.end method

.method private writeString(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    if-eqz p2, :cond_22

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 1352
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 1353
    .local v0, "utflen":J
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_24

    .line 1354
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x74

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1355
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 1360
    :goto_21
    return-void

    .end local v0    # "utflen":J
    :cond_22
    move-object v2, p1

    .line 1351
    goto :goto_5

    .line 1357
    .restart local v0    # "utflen":J
    :cond_24
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 1358
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    goto :goto_21
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 758
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->close()V

    .line 759
    return-void
.end method

.method public defaultWriteObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 450
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-nez v0, :cond_d

    .line 451
    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to writeObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_d
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 455
    .local v1, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 456
    invoke-direct {p0, v2, v1}, Ljava/io/ObjectOutputStream;->defaultWriteFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 457
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 458
    return-void
.end method

.method protected drain()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 746
    return-void
.end method

.method protected enableReplaceObject(Z)Z
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 629
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    if-ne p1, v1, :cond_5

    .line 630
    return p1

    .line 632
    :cond_5
    if-eqz p1, :cond_12

    .line 633
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 634
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 635
    sget-object v1, Ljava/io/ObjectOutputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 638
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_12
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    .line 639
    iget-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 735
    return-void
.end method

.method getProtocolVersion()I
    .registers 2

    .prologue
    .line 1032
    iget v0, p0, Ljava/io/ObjectOutputStream;->protocol:I

    return v0
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v3, :cond_20

    .line 472
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 473
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-nez v0, :cond_11

    .line 474
    new-instance v3, Ljava/io/NotActiveException;

    const-string/jumbo v4, "not in call to writeObject"

    invoke-direct {v3, v4}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_11
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v2

    .line 477
    .local v2, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 478
    .local v1, "curDesc":Ljava/io/ObjectStreamClass;
    new-instance v3, Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-direct {v3, p0, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    iput-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    .line 480
    .end local v0    # "ctx":Ljava/io/SerialCallbackContext;
    .end local v1    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v2    # "curObj":Ljava/lang/Object;
    :cond_20
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    return-object v3
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    return-object p1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 512
    iget v0, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-eqz v0, :cond_e

    .line 513
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream active"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_e
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 516
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 517
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->clear()V

    .line 518
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 519
    return-void
.end method

.method public useProtocolVersion(I)V
    .registers 5
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stream non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_11
    packed-switch p1, :pswitch_data_32

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_2e
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocol:I

    .line 318
    return-void

    .line 308
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public write(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 695
    return-void
.end method

.method public write([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 706
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 717
    if-nez p1, :cond_9

    .line 718
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 720
    :cond_9
    add-int v0, p2, p3

    .line 721
    .local v0, "endoff":I
    if-ltz p2, :cond_f

    if-gez p3, :cond_15

    .line 722
    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 721
    :cond_15
    array-length v1, p1

    if-gt v0, v1, :cond_f

    if-ltz v0, :cond_f

    .line 724
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 725
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBoolean(Z)V

    .line 770
    return-void
.end method

.method public writeByte(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeByte(I)V

    .line 781
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public writeChar(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChar(I)V

    .line 803
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .registers 2
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p1, p0}, Ljava/io/ObjectStreamClass;->writeNonProxy(Ljava/io/ObjectOutputStream;)V

    .line 684
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeDouble(D)V

    .line 847
    return-void
.end method

.method public writeFields()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    if-nez v0, :cond_d

    .line 494
    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "no current PutField object"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_d
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 497
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->curPut:Ljava/io/ObjectOutputStream$PutFieldImpl;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$PutFieldImpl;->writeFields()V

    .line 498
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->setBlockDataMode(Z)Z

    .line 499
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeFloat(F)V

    .line 836
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeInt(I)V

    .line 814
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 825
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-boolean v2, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-eqz v2, :cond_8

    .line 343
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    .line 344
    return-void

    .line 347
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    .line 364
    return-void

    .line 348
    :catch_d
    move-exception v0

    .line 349
    .local v0, "ex":Ljava/io/IOException;
    iget v2, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v2, :cond_15

    .line 353
    :try_start_12
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 362
    :cond_15
    :goto_15
    throw v0

    .line 355
    :catch_16
    move-exception v1

    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_15
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableOverride:Z

    if-nez v0, :cond_a

    .line 384
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 387
    :cond_a
    return-void
.end method

.method public writeShort(I)V
    .registers 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 792
    return-void
.end method

.method protected writeStreamHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/16 v1, -0x5313

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 652
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 653
    return-void
.end method

.method writeTypeString(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    if-nez p1, :cond_6

    .line 1042
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    .line 1048
    :goto_5
    return-void

    .line 1043
    :cond_6
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->handles:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .local v0, "handle":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1044
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeHandle(I)V

    goto :goto_5

    .line 1046
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeString(Ljava/lang/String;Z)V

    goto :goto_5
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->bout:Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream;->writeObject0(Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_5

    .line 437
    return-void

    .line 431
    :catch_5
    move-exception v0

    .line 432
    .local v0, "ex":Ljava/io/IOException;
    iget v1, p0, Ljava/io/ObjectOutputStream;->depth:I

    if-nez v1, :cond_d

    .line 433
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFatalException(Ljava/io/IOException;)V

    .line 435
    :cond_d
    throw v0
.end method
