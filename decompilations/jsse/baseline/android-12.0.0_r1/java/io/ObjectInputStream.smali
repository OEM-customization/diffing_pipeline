.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable;,
        Ljava/io/ObjectInputStream$BlockDataInputStream;,
        Ljava/io/ObjectInputStream$PeekInputStream;,
        Ljava/io/ObjectInputStream$ValidationList;,
        Ljava/io/ObjectInputStream$GetFieldImpl;,
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$Caches;
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL_HANDLE:I = -0x1

.field private static final greylist-max-o primClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o unsharedMarker:Ljava/lang/Object;


# instance fields
.field private final greylist bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

.field private greylist-max-o closed:Z

.field private greylist-max-o curContext:Ljava/io/SerialCallbackContext;

.field private greylist-max-o defaultDataEnd:Z

.field private greylist-max-o depth:I

.field private final greylist-max-o enableOverride:Z

.field private greylist-max-o enableResolve:Z

.field private final greylist-max-o handles:Ljava/io/ObjectInputStream$HandleTable;

.field private greylist-max-o passHandle:I

.field private greylist-max-o primVals:[B

.field private final greylist-max-o vlist:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    .line 221
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "char"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "int"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "float"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "double"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "void"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 375
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 376
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 377
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 379
    :cond_14
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 380
    iput-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 381
    iput-object v1, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 385
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 346
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    .line 347
    new-instance v1, Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-direct {v1, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 348
    new-instance v2, Ljava/io/ObjectInputStream$HandleTable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    iput-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 349
    new-instance v2, Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {v2}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    iput-object v2, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 352
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 353
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 354
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 355
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/io/ObjectInputStream;)I
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectInputStream;

    .line 208
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return v0
.end method

.method static synthetic blacklist access$002(Ljava/io/ObjectInputStream;I)I
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectInputStream;
    .param p1, "x1"    # I

    .line 208
    iput p1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return p1
.end method

.method static synthetic blacklist access$100(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectInputStream;

    .line 208
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectInputStream;

    .line 208
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/io/ObjectInputStream;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Ljava/io/ObjectInputStream;)Z
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectInputStream;

    .line 208
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    return v0
.end method

.method static synthetic blacklist access$600(Ljava/io/ObjectInputStream;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    return-void
.end method

.method static synthetic blacklist access$700([BI[FII)V
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [F
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 208
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V

    return-void
.end method

.method static synthetic blacklist access$800([BI[DII)V
    .registers 5
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [D
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 208
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    return-void
.end method

.method private static greylist-max-o auditSubclass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1322
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/io/ObjectInputStream$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1345
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native greylist bytesToDoubles([BI[DII)V
.end method

.method private static native greylist bytesToFloats([BI[FII)V
.end method

.method private greylist-max-o checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_1d

    .line 1460
    :cond_f
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1461
    .local v0, "rep":Ljava/lang/Object;
    if-eq v0, p1, :cond_1c

    .line 1474
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1476
    :cond_1c
    return-object v0

    .line 1458
    .end local v0    # "rep":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-object p1
.end method

.method private greylist-max-o clear()V
    .registers 2

    .line 1352
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    .line 1353
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    .line 1354
    return-void
.end method

.method private static greylist-max-o cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 3674
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 3675
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3676
    :cond_c
    instance-of v0, p0, [Z

    if-eqz v0, :cond_18

    .line 3677
    move-object v0, p0

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3678
    :cond_18
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    .line 3679
    move-object v0, p0

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3680
    :cond_24
    instance-of v0, p0, [C

    if-eqz v0, :cond_30

    .line 3681
    move-object v0, p0

    check-cast v0, [C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3682
    :cond_30
    instance-of v0, p0, [D

    if-eqz v0, :cond_3c

    .line 3683
    move-object v0, p0

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3684
    :cond_3c
    instance-of v0, p0, [F

    if-eqz v0, :cond_48

    .line 3685
    move-object v0, p0

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3686
    :cond_48
    instance-of v0, p0, [I

    if-eqz v0, :cond_54

    .line 3687
    move-object v0, p0

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3688
    :cond_54
    instance-of v0, p0, [J

    if-eqz v0, :cond_60

    .line 3689
    move-object v0, p0

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3690
    :cond_60
    instance-of v0, p0, [S

    if-eqz v0, :cond_6c

    .line 3691
    move-object v0, p0

    check-cast v0, [S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3693
    :cond_6c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private greylist-max-o defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2094
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 2095
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_15

    .line 2096
    :cond_f
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 2099
    :cond_15
    :goto_15
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v1

    .line 2100
    .local v1, "primDataSize":I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    if-eqz v2, :cond_20

    array-length v2, v2

    if-ge v2, v1, :cond_24

    .line 2101
    :cond_20
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    .line 2103
    :cond_24
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream;->primVals:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2104
    if-eqz p1, :cond_33

    .line 2105
    iget-object v2, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {p2, p1, v2}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 2108
    :cond_33
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2109
    .local v2, "objHandle":I
    invoke-virtual {p2, v4}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 2110
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 2111
    .local v4, "objVals":[Ljava/lang/Object;
    array-length v5, v3

    array-length v6, v4

    sub-int/2addr v5, v6

    .line 2112
    .local v5, "numPrimFields":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    array-length v7, v4

    if-ge v6, v7, :cond_64

    .line 2113
    add-int v7, v5, v6

    aget-object v7, v3, v7

    .line 2114
    .local v7, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    .line 2115
    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 2116
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v8, v2, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2112
    .end local v7    # "f":Ljava/io/ObjectStreamField;
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    .line 2119
    .end local v6    # "i":I
    :cond_64
    if-eqz p1, :cond_69

    .line 2120
    invoke-virtual {p2, p1, v4}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2122
    :cond_69
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2123
    return-void
.end method

.method private greylist-max-o handleReset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 2150
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-gtz v0, :cond_8

    .line 2154
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2155
    return-void

    .line 2151
    :cond_8
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected reset; recursion depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isCustomSubclass()Z
    .registers 3

    .line 1609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/io/ObjectInputStream;

    .line 1610
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1609
    :goto_13
    return v0
.end method

.method private static greylist-max-o latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 2186
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o readArray(Z)Ljava/lang/Object;
    .registers 14
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1755
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_df

    .line 1759
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1760
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v2

    .line 1765
    .local v2, "len":I
    const/4 v3, 0x0

    .line 1766
    .local v3, "array":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1767
    .local v4, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v5

    .local v6, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_26

    .line 1768
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 1769
    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 1772
    :cond_26
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_2d

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_2e

    :cond_2d
    move-object v7, v3

    :goto_2e
    invoke-virtual {v5, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v5

    .line 1773
    .local v5, "arrayHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v7

    .line 1774
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v7, :cond_3d

    .line 1775
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v5, v7}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1778
    :cond_3d
    if-nez v4, :cond_4a

    .line 1779
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_40
    if-ge v8, v2, :cond_48

    .line 1780
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 1779
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .end local v8    # "i":I
    :cond_48
    goto/16 :goto_d7

    .line 1782
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 1783
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_5e

    .line 1784
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [I

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    goto/16 :goto_d7

    .line 1785
    :cond_5e
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_6d

    .line 1786
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [B

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v0, v2, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    goto/16 :goto_d7

    .line 1787
    :cond_6d
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_7a

    .line 1788
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [J

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    goto :goto_d7

    .line 1789
    :cond_7a
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_87

    .line 1790
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [F

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    goto :goto_d7

    .line 1791
    :cond_87
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_94

    .line 1792
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [D

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    goto :goto_d7

    .line 1793
    :cond_94
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_a1

    .line 1794
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [S

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    goto :goto_d7

    .line 1795
    :cond_a1
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_ae

    .line 1796
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [C

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    goto :goto_d7

    .line 1797
    :cond_ae
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v8, :cond_bb

    .line 1798
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v3

    check-cast v9, [Z

    invoke-virtual {v8, v9, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    goto :goto_d7

    .line 1800
    :cond_bb
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1803
    :cond_c1
    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    .line 1804
    .local v8, "oa":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_c5
    if-ge v9, v2, :cond_d7

    .line 1805
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1806
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v11, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v10, v5, v11}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 1804
    add-int/lit8 v9, v9, 0x1

    goto :goto_c5

    .line 1810
    .end local v8    # "oa":[Ljava/lang/Object;
    .end local v9    # "i":I
    :cond_d7
    :goto_d7
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0, v5}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1811
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1812
    return-object v3

    .line 1756
    .end local v1    # "desc":Ljava/io/ObjectStreamClass;
    .end local v2    # "len":I
    .end local v3    # "array":Ljava/lang/Object;
    .end local v4    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "arrayHandle":I
    .end local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_df
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readClass(Z)Ljava/lang/Class;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_36

    .line 1559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1560
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1561
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1a

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1563
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 1564
    .local v2, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_2e

    .line 1565
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1568
    :cond_2e
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1569
    return-object v1

    .line 1557
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_36
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v0

    .line 1583
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_38

    .line 1597
    new-instance v1, Ljava/io/StreamCorruptedException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1598
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "invalid type code: %02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1591
    :sswitch_1f
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1592
    .local v1, "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_37

    .line 1594
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_24
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1595
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_37

    .line 1588
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_29
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    .line 1589
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    goto :goto_37

    .line 1585
    .end local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    :sswitch_30
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    .line 1586
    .restart local v1    # "descriptor":Ljava/io/ObjectStreamClass;
    nop

    .line 1604
    :goto_37
    return-object v1

    :sswitch_data_38
    .sparse-switch
        0x70 -> :sswitch_30
        0x71 -> :sswitch_29
        0x72 -> :sswitch_24
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private greylist-max-o readEnum(Z)Ljava/lang/Enum;
    .registers 12
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1820
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_8a

    .line 1824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1825
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1829
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_1c

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    .line 1830
    .local v2, "enumHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 1831
    .local v3, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v3, :cond_2c

    .line 1832
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v4, v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1835
    :cond_2c
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1837
    .local v4, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v5

    .line 1838
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_6b

    .line 1841
    :try_start_37
    invoke-static {v5, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_45

    .line 1842
    .local v6, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object v4, v6

    .line 1847
    .end local v6    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 1848
    if-nez p1, :cond_6b

    .line 1849
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    goto :goto_6b

    .line 1843
    :catch_45
    move-exception v6

    .line 1844
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/InvalidObjectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enum constant "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not exist in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v7, v6}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 1853
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_6b
    :goto_6b
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1854
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1855
    return-object v4

    .line 1826
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "enumHandle":I
    .end local v3    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local v4    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_73
    new-instance v0, Ljava/io/InvalidClassException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-enum class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1821
    .end local v1    # "desc":Ljava/io/ObjectStreamClass;
    :cond_8a
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .registers 8
    .param p1, "obj"    # Ljava/io/Externalizable;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1941
    .local v0, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_7

    .line 1942
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 1943
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1945
    :try_start_a
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    move-result v1

    .line 1946
    .local v1, "blocked":Z
    if-eqz v1, :cond_16

    .line 1947
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_32

    .line 1949
    :cond_16
    if-eqz p1, :cond_24

    .line 1951
    :try_start_18
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_32

    .line 1961
    goto :goto_24

    .line 1952
    :catch_1c
    move-exception v2

    .line 1960
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1d
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1963
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_24
    :goto_24
    if-eqz v1, :cond_29

    .line 1964
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_32

    .line 1967
    .end local v1    # "blocked":Z
    :cond_29
    if-eqz v0, :cond_2e

    .line 1968
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 1969
    :cond_2e
    iput-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1970
    nop

    .line 1983
    return-void

    .line 1967
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_38

    .line 1968
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->check()V

    .line 1969
    :cond_38
    iput-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1970
    throw v1
.end method

.method private greylist-max-o readFatalException()Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_18

    .line 2134
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 2139
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2140
    return-object v0

    .line 2132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readHandle(Z)Ljava/lang/Object;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x71

    if-ne v0, v1, :cond_57

    .line 1526
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    const/high16 v1, 0x7e0000

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1527
    if-ltz v0, :cond_3e

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 1532
    if-nez p1, :cond_36

    .line 1538
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1539
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    if-eq v0, v1, :cond_2e

    .line 1546
    return-object v0

    .line 1541
    :cond_2e
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1534
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_36
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "cannot read back reference as unshared"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_3e
    new-instance v0, Ljava/io/StreamCorruptedException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    add-int/2addr v4, v1

    .line 1529
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "invalid handle value: %08X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1524
    :cond_57
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_6b

    .line 1686
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1687
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_16

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_17

    :cond_16
    move-object v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1688
    .local v1, "descHandle":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1690
    const/4 v2, 0x0

    .line 1692
    .local v2, "readDesc":Ljava/io/ObjectStreamClass;
    :try_start_1f
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_23} :catch_5c

    move-object v2, v3

    .line 1696
    nop

    .line 1698
    const/4 v3, 0x0

    .line 1699
    .local v3, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1700
    .local v4, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1701
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    move-result v5

    .line 1703
    .local v5, "checksRequired":Z
    :try_start_31
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    if-nez v6, :cond_41

    .line 1704
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_46

    .line 1705
    :cond_41
    if-eqz v5, :cond_46

    .line 1706
    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_46} :catch_47

    .line 1710
    :cond_46
    :goto_46
    goto :goto_49

    .line 1708
    :catch_47
    move-exception v6

    .line 1709
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    move-object v4, v6

    .line 1711
    .end local v6    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_49
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1713
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v4, v6}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1719
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1720
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1722
    return-object v0

    .line 1693
    .end local v3    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local v5    # "checksRequired":Z
    :catch_5c
    move-exception v3

    .line 1694
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/InvalidClassException;

    const-string v5, "failed to read class descriptor"

    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v4, v3}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 1683
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "readDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_6b
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readNull()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1511
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_f

    .line 1514
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1515
    const/4 v0, 0x0

    return-object v0

    .line 1512
    :cond_f
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readObject0(Z)Ljava/lang/Object;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v0

    .line 1361
    .local v0, "oldMode":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 1362
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v3

    .line 1363
    .local v3, "remain":I
    if-gtz v3, :cond_22

    .line 1365
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    if-nez v4, :cond_1c

    .line 1374
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_28

    .line 1372
    :cond_1c
    new-instance v1, Ljava/io/OptionalDataException;

    invoke-direct {v1, v2}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v1

    .line 1364
    :cond_22
    new-instance v1, Ljava/io/OptionalDataException;

    invoke-direct {v1, v3}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v1

    .line 1378
    .end local v3    # "remain":I
    :cond_28
    :goto_28
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v3

    move v4, v3

    .local v4, "tc":B
    const/16 v5, 0x79

    if-ne v3, v5, :cond_3c

    .line 1379
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1380
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    goto :goto_28

    .line 1383
    :cond_3c
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1387
    packed-switch v4, :pswitch_data_12c

    .line 1439
    :pswitch_44
    :try_start_44
    new-instance v3, Ljava/io/StreamCorruptedException;

    goto/16 :goto_10e

    .line 1409
    :pswitch_48
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1409
    return-object v1

    .line 1415
    :pswitch_5b
    :try_start_5b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    move-result-object v1

    .line 1416
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v5, "writing aborted"

    invoke-direct {v3, v5, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v3

    .line 1431
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_67
    if-eqz v0, :cond_6f

    .line 1432
    new-instance v1, Ljava/io/OptionalDataException;

    invoke-direct {v1, v2}, Ljava/io/OptionalDataException;-><init>(Z)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v1

    .line 1434
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :cond_6f
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v3, "unexpected end of block data"

    invoke-direct {v1, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v1

    .line 1420
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_77
    if-eqz v0, :cond_8f

    .line 1421
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1422
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    .line 1423
    new-instance v1, Ljava/io/OptionalDataException;

    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 1424
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/OptionalDataException;-><init>(I)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v1

    .line 1426
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :cond_8f
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v3, "unexpected block data"

    invoke-direct {v1, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v1

    .line 1395
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :pswitch_97
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;

    move-result-object v1
    :try_end_9b
    .catchall {:try_start_5b .. :try_end_9b} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1395
    return-object v1

    .line 1406
    :pswitch_a6
    :try_start_a6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1406
    return-object v1

    .line 1403
    :pswitch_b9
    :try_start_b9
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1403
    return-object v1

    .line 1412
    :pswitch_cc
    :try_start_cc
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1412
    return-object v1

    .line 1399
    :pswitch_df
    :try_start_df
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1399
    return-object v1

    .line 1392
    :pswitch_ee
    :try_start_ee
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1392
    return-object v1

    .line 1389
    :pswitch_fd
    :try_start_fd
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_10c

    .line 1443
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1389
    return-object v1

    .line 1443
    :catchall_10c
    move-exception v1

    goto :goto_120

    .line 1439
    :goto_10e
    :try_start_10e
    const-string v5, "invalid type code: %02X"

    new-array v6, v2, [Ljava/lang/Object;

    .line 1440
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldMode":Z
    .end local v4    # "tc":B
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v3
    :try_end_120
    .catchall {:try_start_10e .. :try_end_120} :catchall_10c

    .line 1443
    .restart local v0    # "oldMode":Z
    .restart local v4    # "tc":B
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :goto_120
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1444
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1445
    throw v1

    nop

    :pswitch_data_12c
    .packed-switch 0x70
        :pswitch_fd
        :pswitch_ee
        :pswitch_df
        :pswitch_cc
        :pswitch_b9
        :pswitch_a6
        :pswitch_97
        :pswitch_77
        :pswitch_67
        :pswitch_44
        :pswitch_77
        :pswitch_5b
        :pswitch_b9
        :pswitch_df
        :pswitch_48
    .end packed-switch
.end method

.method private greylist-max-o readOrdinaryObject(Z)Ljava/lang/Object;
    .registers 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1868
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_b1

    .line 1872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1873
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    .line 1875
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1876
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_a9

    const-class v2, Ljava/lang/Class;

    if-eq v1, v2, :cond_a9

    const-class v2, Ljava/io/ObjectStreamClass;

    if-eq v1, v2, :cond_a9

    .line 1883
    :try_start_22
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_92

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 1888
    .local v2, "obj":Ljava/lang/Object;
    :goto_2e
    nop

    .line 1890
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_36

    sget-object v4, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_37

    :cond_36
    move-object v4, v2

    :goto_37
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1891
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 1892
    .local v3, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v3, :cond_4a

    .line 1893
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5, v3}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1896
    :cond_4a
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1897
    move-object v4, v2

    check-cast v4, Ljava/io/Externalizable;

    invoke-direct {p0, v4, v0}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    goto :goto_5a

    .line 1899
    :cond_57
    invoke-direct {p0, v2, v0}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1902
    :goto_5a
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1904
    if-eqz v2, :cond_91

    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1905
    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v4

    if-nez v4, :cond_91

    .line 1906
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1908
    invoke-virtual {v0, v2}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1909
    .local v4, "rep":Ljava/lang/Object;
    if-eqz p1, :cond_87

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1910
    invoke-static {v4}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1912
    :cond_87
    if-eq v4, v2, :cond_91

    .line 1924
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    move-object v2, v4

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1928
    .end local v4    # "rep":Ljava/lang/Object;
    :cond_91
    return-object v2

    .line 1884
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_92
    move-exception v2

    .line 1885
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/io/InvalidClassException;

    .line 1886
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unable to create instance"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v3, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 1878
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_a9
    new-instance v2, Ljava/io/InvalidClassException;

    const-string v3, "invalid class descriptor"

    invoke-direct {v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1869
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b1
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 10
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_80

    .line 1626
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1627
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_16

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_17

    :cond_16
    move-object v2, v0

    :goto_17
    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1628
    .local v1, "descHandle":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1630
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v2

    .line 1631
    .local v2, "numIfaces":I
    new-array v3, v2, [Ljava/lang/String;

    .line 1632
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v2, :cond_34

    .line 1633
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1632
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1636
    .end local v4    # "i":I
    :cond_34
    const/4 v4, 0x0

    .line 1637
    .local v4, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 1638
    .local v5, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1640
    :try_start_3c
    invoke-virtual {p0, v3}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    if-nez v6, :cond_4c

    .line 1641
    new-instance v6, Ljava/lang/ClassNotFoundException;

    const-string v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_62

    .line 1642
    :cond_4c
    invoke-static {v4}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1648
    nop

    .line 1649
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1650
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    .line 1648
    invoke-static {v6, v7}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V

    .line 1659
    :goto_62
    goto :goto_6d

    .line 1643
    :cond_63
    new-instance v6, Ljava/io/InvalidClassException;

    const-string v7, "Not a proxy"

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "numIfaces":I
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    .end local p1    # "unshared":Z
    throw v6
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_6b} :catch_6b

    .line 1657
    .restart local v0    # "desc":Ljava/io/ObjectStreamClass;
    .restart local v1    # "descHandle":I
    .restart local v2    # "numIfaces":I
    .restart local v3    # "ifaces":[Ljava/lang/String;
    .restart local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    .restart local p1    # "unshared":Z
    :catch_6b
    move-exception v6

    .line 1658
    .local v6, "ex":Ljava/lang/ClassNotFoundException;
    move-object v5, v6

    .line 1660
    .end local v6    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_6d
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1662
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1668
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v6, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1669
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1670
    return-object v0

    .line 1623
    .end local v0    # "desc":Ljava/io/ObjectStreamClass;
    .end local v1    # "descHandle":I
    .end local v2    # "numIfaces":I
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_80
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method private greylist-max-o readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1994
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    .line 1995
    .local v0, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_9d

    .line 1996
    aget-object v2, v0, v1

    iget-object v2, v2, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1998
    .local v2, "slotDesc":Ljava/io/ObjectStreamClass;
    aget-object v3, v0, v1

    iget-boolean v3, v3, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v3, :cond_84

    .line 1999
    const/4 v3, 0x0

    if-eqz p1, :cond_70

    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v4

    if-eqz v4, :cond_20

    goto :goto_70

    .line 2001
    :cond_20
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2006
    iget-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2007
    .local v4, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v4, :cond_2d

    .line 2008
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2010
    :cond_2d
    :try_start_2d
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v2}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2012
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2013
    invoke-virtual {v2, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_3d} :catch_47
    .catchall {:try_start_2d .. :try_end_3d} :catchall_45

    .line 2024
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2025
    if-eqz v4, :cond_59

    .line 2026
    goto :goto_56

    .line 2024
    :catchall_45
    move-exception v3

    goto :goto_5f

    .line 2014
    :catch_47
    move-exception v5

    .line 2022
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_48
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 2024
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2025
    if-eqz v4, :cond_59

    .line 2026
    :goto_56
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2027
    :cond_59
    iput-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2029
    nop

    .line 2036
    iput-boolean v3, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 2037
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    goto :goto_74

    .line 2024
    .restart local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :goto_5f
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 2025
    if-eqz v4, :cond_69

    .line 2026
    invoke-virtual {v4}, Ljava/io/SerialCallbackContext;->check()V

    .line 2027
    :cond_69
    iput-object v4, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 2029
    throw v3

    .line 2038
    .end local v4    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_6c
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_74

    .line 2000
    :cond_70
    :goto_70
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 2041
    :goto_74
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2042
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    goto :goto_99

    .line 2044
    :cond_7e
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_99

    .line 2047
    :cond_84
    if-eqz p1, :cond_99

    .line 2048
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2049
    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    if-nez v3, :cond_99

    .line 2051
    invoke-virtual {v2, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    .line 1995
    .end local v2    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2055
    .end local v1    # "i":I
    :cond_9d
    return-void
.end method

.method private greylist-max-o readString(Z)Ljava/lang/String;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    .line 1732
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_42

    .line 1742
    new-instance v1, Ljava/io/StreamCorruptedException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1743
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "invalid type code: %02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1738
    :sswitch_1f
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, "str":Ljava/lang/String;
    goto :goto_2d

    .line 1734
    .end local v1    # "str":Ljava/lang/String;
    :sswitch_26
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1735
    .restart local v1    # "str":Ljava/lang/String;
    nop

    .line 1745
    :goto_2d
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_34

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    goto :goto_35

    :cond_34
    move-object v3, v1

    :goto_35
    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1746
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1747
    return-object v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x74 -> :sswitch_26
        0x7c -> :sswitch_1f
    .end sparse-switch
.end method

.method private greylist-max-o skipCustomData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2062
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2064
    .local v0, "oldHandle":I
    :goto_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 2065
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    .line 2066
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2068
    :cond_15
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 2080
    :pswitch_1e
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 2081
    goto :goto_2

    .line 2075
    :pswitch_22
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 2076
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2077
    return-void

    .line 2071
    :pswitch_2a
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 2072
    goto :goto_2

    nop

    :pswitch_data_32
    .packed-switch 0x77
        :pswitch_2a
        :pswitch_22
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method

.method private greylist-max-o verifySubclass()V
    .registers 6

    .line 1295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1296
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/io/ObjectInputStream;

    if-ne v0, v1, :cond_9

    .line 1297
    return-void

    .line 1299
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1300
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-nez v1, :cond_10

    .line 1301
    return-void

    .line 1303
    :cond_10
    sget-object v2, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1304
    new-instance v2, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1305
    .local v2, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v3, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1306
    .local v3, "result":Ljava/lang/Boolean;
    if-nez v3, :cond_35

    .line 1307
    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1308
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    :cond_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1311
    return-void

    .line 1313
    :cond_3c
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1314
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    .line 948
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_a

    .line 949
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 951
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

    .line 952
    return-void
.end method

.method public whitelist test-api defaultReadObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 551
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_2f

    .line 554
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 555
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 556
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 557
    invoke-direct {p0, v1, v2}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 558
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 559
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v3

    if-nez v3, :cond_23

    .line 565
    iput-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 567
    :cond_23
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 568
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v3, :cond_2e

    .line 571
    return-void

    .line 569
    :cond_2e
    throw v3

    .line 552
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2f
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to readObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api enableResolveObject(Z)Z
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 832
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-ne p1, v0, :cond_5

    .line 833
    return p1

    .line 835
    :cond_5
    if-eqz p1, :cond_12

    .line 836
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 837
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 838
    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 841
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_12
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 842
    xor-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    if-eqz p1, :cond_1b

    .line 918
    add-int v0, p2, p3

    .line 919
    .local v0, "endoff":I
    if-ltz p2, :cond_15

    if-ltz p3, :cond_15

    array-length v1, p1

    if-gt v0, v1, :cond_15

    if-ltz v0, :cond_15

    .line 922
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v1

    return v1

    .line 920
    :cond_15
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 916
    .end local v0    # "endoff":I
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public whitelist test-api readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected whitelist test-api readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 886
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 887
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    .line 888
    return-object v0
.end method

.method public whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api readFields()Ljava/io/ObjectInputStream$GetField;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 590
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-eqz v0, :cond_29

    .line 593
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v1

    .line 594
    .local v1, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 595
    .local v2, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 596
    new-instance v3, Ljava/io/ObjectInputStream$GetFieldImpl;

    invoke-direct {v3, p0, v2}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    .line 597
    .local v3, "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    .line 598
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 599
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-nez v4, :cond_28

    .line 605
    iput-boolean v5, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 608
    :cond_28
    return-object v3

    .line 591
    .end local v1    # "curObj":Ljava/lang/Object;
    .end local v2    # "curDesc":Ljava/io/ObjectStreamClass;
    .end local v3    # "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    :cond_29
    new-instance v1, Ljava/io/NotActiveException;

    const-string v2, "not in call to readObject"

    invoke-direct {v1, v2}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public whitelist test-api readFully([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1073
    return-void
.end method

.method public whitelist test-api readFully([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    add-int v0, p2, p3

    .line 1086
    .local v0, "endoff":I
    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    array-length v1, p1

    if-gt v0, v1, :cond_12

    if-ltz v0, :cond_12

    .line 1089
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1090
    return-void

    .line 1087
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1114
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api readObject()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 420
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    if-eqz v0, :cond_9

    .line 421
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 425
    :cond_9
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 427
    .local v0, "outerHandle":I
    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 428
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 429
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 430
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_39

    .line 433
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2a

    .line 434
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_3b

    .line 436
    :cond_2a
    nop

    .line 438
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 439
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_38

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_38

    .line 440
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 436
    :cond_38
    return-object v1

    .line 431
    :cond_39
    nop

    .end local v0    # "outerHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    :try_start_3a
    throw v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 438
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "outerHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_3b
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 439
    iget-boolean v2, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v2, :cond_49

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v2, :cond_49

    .line 440
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 442
    :cond_49
    throw v1
.end method

.method protected whitelist test-api readObjectOverride()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected whitelist test-api readStreamHeader()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    .line 859
    .local v0, "s0":S
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v1

    .line 860
    .local v1, "s1":S
    const/16 v2, -0x5313

    if-ne v0, v2, :cond_14

    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    .line 864
    return-void

    .line 861
    :cond_14
    new-instance v2, Ljava/io/StreamCorruptedException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 862
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "invalid stream header: %04X%04X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method greylist-max-o readTypeString()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1486
    .local v0, "oldHandle":I
    :try_start_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    .line 1487
    .local v1, "tc":B
    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_40

    .line 1499
    new-instance v3, Ljava/io/StreamCorruptedException;

    goto :goto_28

    .line 1496
    :sswitch_f
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_3b

    .line 1503
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1496
    return-object v2

    .line 1492
    :sswitch_16
    :try_start_16
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_3b

    .line 1503
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1492
    return-object v2

    .line 1489
    :sswitch_1f
    :try_start_1f
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_3b

    .line 1503
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1489
    return-object v2

    .line 1499
    :goto_28
    :try_start_28
    const-string v4, "invalid type code: %02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1500
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    throw v3
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_3b

    .line 1503
    .end local v1    # "tc":B
    .restart local v0    # "oldHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_3b
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1504
    throw v1

    nop

    :sswitch_data_40
    .sparse-switch
        0x70 -> :sswitch_1f
        0x71 -> :sswitch_16
        0x74 -> :sswitch_f
        0x7c -> :sswitch_f
    .end sparse-switch
.end method

.method public whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readUnshared()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 515
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 517
    .local v0, "outerHandle":I
    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 518
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v0, v3}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 519
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 520
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_30

    .line 523
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_21

    .line 524
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_32

    .line 526
    :cond_21
    nop

    .line 528
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 529
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_2f

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_2f

    .line 530
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 526
    :cond_2f
    return-object v1

    .line 521
    :cond_30
    nop

    .end local v0    # "outerHandle":I
    .end local p0    # "this":Ljava/io/ObjectInputStream;
    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 528
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "outerHandle":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream;
    :catchall_32
    move-exception v1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 529
    iget-boolean v2, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v2, :cond_40

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v2, :cond_40

    .line 530
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 532
    :cond_40
    throw v1
.end method

.method public whitelist test-api readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public whitelist test-api readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api registerValidation(Ljava/io/ObjectInputValidation;I)V
    .registers 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 630
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-eqz v0, :cond_a

    .line 633
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    .line 634
    return-void

    .line 631
    :cond_a
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 680
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_5
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    return-object v1

    .line 683
    :catch_e
    move-exception v1

    .line 684
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 685
    .local v2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1a

    .line 686
    return-object v2

    .line 688
    :cond_1a
    throw v1
.end method

.method protected whitelist test-api resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    return-object p1
.end method

.method protected whitelist test-api resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 747
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 748
    .local v0, "latestLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 749
    .local v1, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 752
    .local v2, "hasNonPublicInterface":Z
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/Class;

    .line 753
    .local v3, "classObjs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    array-length v5, p1

    if-ge v4, v5, :cond_37

    .line 754
    aget-object v5, p1, v4

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 755
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_32

    .line 756
    if-eqz v2, :cond_2d

    .line 757
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v1, v6, :cond_25

    goto :goto_32

    .line 758
    :cond_25
    new-instance v6, Ljava/lang/IllegalAccessError;

    const-string v7, "conflicting non-public interface class loaders"

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 762
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 763
    const/4 v2, 0x1

    .line 766
    :cond_32
    :goto_32
    aput-object v5, v3, v4

    .line 753
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 770
    .end local v4    # "i":I
    :cond_37
    if-eqz v2, :cond_3b

    move-object v4, v1

    goto :goto_3c

    :cond_3b
    move-object v4, v0

    .line 769
    :goto_3c
    :try_start_3c
    invoke-static {v4, v3}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_40} :catch_41

    return-object v4

    .line 772
    :catch_41
    move-exception v4

    .line 773
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/ClassNotFoundException;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
