.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$BlockDataInputStream;,
        Ljava/io/ObjectInputStream$Caches;,
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$GetFieldImpl;,
        Ljava/io/ObjectInputStream$HandleTable;,
        Ljava/io/ObjectInputStream$PeekInputStream;,
        Ljava/io/ObjectInputStream$ValidationList;
    }
.end annotation


# static fields
.field private static final NULL_HANDLE:I = -0x1

.field private static final primClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final unsharedMarker:Ljava/lang/Object;


# instance fields
.field private final bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

.field private closed:Z

.field private curContext:Ljava/io/SerialCallbackContext;

.field private defaultDataEnd:Z

.field private depth:I

.field private final enableOverride:Z

.field private enableResolve:Z

.field private final handles:Ljava/io/ObjectInputStream$HandleTable;

.field private passHandle:I

.field private primVals:[B

.field private final vlist:Ljava/io/ObjectInputStream$ValidationList;


# direct methods
.method static synthetic -get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectInputStream;

    .prologue
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    return-object v0
.end method

.method static synthetic -get1(Ljava/io/ObjectInputStream;)Z
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectInputStream;

    .prologue
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    return v0
.end method

.method static synthetic -get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectInputStream;

    .prologue
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    return-object v0
.end method

.method static synthetic -get3(Ljava/io/ObjectInputStream;)I
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectInputStream;

    .prologue
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return v0
.end method

.method static synthetic -set0(Ljava/io/ObjectInputStream;I)I
    .registers 2
    .param p0, "-this"    # Ljava/io/ObjectInputStream;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;
    .registers 3
    .param p0, "-this"    # Ljava/io/ObjectInputStream;
    .param p1, "unshared"    # Z

    .prologue
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([BI[DII)V
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstpos"    # I
    .param p4, "ndoubles"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V

    return-void
.end method

.method static synthetic -wrap2([BI[FII)V
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcpos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstpos"    # I
    .param p4, "nfloats"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/io/ObjectInputStream;)V
    .registers 1
    .param p0, "-this"    # Ljava/io/ObjectInputStream;

    .prologue
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 219
    sput-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    .line 222
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    const-string/jumbo v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
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

    .line 323
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 255
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 324
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 325
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 326
    sget-object v1, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 328
    :cond_15
    iput-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 329
    iput-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 330
    iput-object v2, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 257
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 297
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->verifySubclass()V

    .line 298
    new-instance v0, Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;-><init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    .line 299
    new-instance v0, Ljava/io/ObjectInputStream$HandleTable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream$HandleTable;-><init>(I)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    .line 300
    new-instance v0, Ljava/io/ObjectInputStream$ValidationList;

    invoke-direct {v0}, Ljava/io/ObjectInputStream$ValidationList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    .line 301
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    .line 302
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 303
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 304
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
    .line 1267
    .local p0, "subcl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/io/ObjectInputStream$1;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream$1;-><init>(Ljava/lang/Class;)V

    .line 1266
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1289
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native bytesToDoubles([BI[DII)V
.end method

.method private static native bytesToFloats([BI[FII)V
.end method

.method private checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1399
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1400
    :cond_e
    return-object p1

    .line 1402
    :cond_f
    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1403
    .local v0, "rep":Ljava/lang/Object;
    if-eq v0, p1, :cond_1c

    .line 1404
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1406
    :cond_1c
    return-object v0
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 1296
    iget-object v0, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable;->clear()V

    .line 1297
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$ValidationList;->clear()V

    .line 1298
    return-void
.end method

.method private static cloneArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 3530
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 3531
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3532
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_b
    instance-of v0, p0, [Z

    if-eqz v0, :cond_16

    .line 3533
    check-cast p0, [Z

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3534
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_21

    .line 3535
    check-cast p0, [B

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3536
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_21
    instance-of v0, p0, [C

    if-eqz v0, :cond_2c

    .line 3537
    check-cast p0, [C

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3538
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2c
    instance-of v0, p0, [D

    if-eqz v0, :cond_37

    .line 3539
    check-cast p0, [D

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3540
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_37
    instance-of v0, p0, [F

    if-eqz v0, :cond_42

    .line 3541
    check-cast p0, [F

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3542
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_42
    instance-of v0, p0, [I

    if-eqz v0, :cond_4d

    .line 3543
    check-cast p0, [I

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3544
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4d
    instance-of v0, p0, [J

    if-eqz v0, :cond_58

    .line 3545
    check-cast p0, [J

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3546
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_58
    instance-of v0, p0, [S

    if-eqz v0, :cond_63

    .line 3547
    check-cast p0, [S

    .end local p0    # "array":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3549
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_63
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .registers 14
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1983
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1984
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_17

    .line 1985
    new-instance v8, Ljava/lang/ClassCastException;

    invoke-direct {v8}, Ljava/lang/ClassCastException;-><init>()V

    throw v8

    .line 1988
    :cond_17
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v7

    .line 1989
    .local v7, "primDataSize":I
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    if-eqz v8, :cond_24

    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    array-length v8, v8

    if-ge v8, v7, :cond_28

    .line 1990
    :cond_24
    new-array v8, v7, [B

    iput-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    .line 1992
    :cond_28
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    iget-object v9, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {v8, v9, v10, v7, v10}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1993
    if-eqz p1, :cond_36

    .line 1994
    iget-object v8, p0, Ljava/io/ObjectInputStream;->primVals:[B

    invoke-virtual {p2, p1, v8}, Ljava/io/ObjectStreamClass;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1997
    :cond_36
    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1998
    .local v5, "objHandle":I
    invoke-virtual {p2, v10}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 1999
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v8

    new-array v6, v8, [Ljava/lang/Object;

    .line 2000
    .local v6, "objVals":[Ljava/lang/Object;
    array-length v8, v2

    array-length v9, v6

    sub-int v4, v8, v9

    .line 2001
    .local v4, "numPrimFields":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_47
    array-length v8, v6

    if-ge v3, v8, :cond_68

    .line 2002
    add-int v8, v4, v3

    aget-object v1, v2, v8

    .line 2003
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v3

    .line 2004
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_65

    .line 2005
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v9, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v8, v5, v9}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2001
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 2008
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_68
    if-eqz p1, :cond_6d

    .line 2009
    invoke-virtual {p2, p1, v6}, Ljava/io/ObjectStreamClass;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2011
    :cond_6d
    iput v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 2012
    return-void
.end method

.method private handleReset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2037
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-lez v0, :cond_20

    .line 2038
    new-instance v0, Ljava/io/StreamCorruptedException;

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected reset; recursion depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/io/ObjectInputStream;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2038
    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2041
    :cond_20
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2042
    return-void
.end method

.method private isCustomSubclass()Z
    .registers 3

    .prologue
    .line 1531
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1532
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1531
    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static latestUserDefinedLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 2072
    invoke-static {}, Ldalvik/system/VMStack;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private readArray(Z)Ljava/lang/Object;
    .registers 15
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1663
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v9

    const/16 v10, 0x75

    if-eq v9, v10, :cond_11

    .line 1664
    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    .line 1667
    :cond_11
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v4

    .line 1668
    .local v4, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    .line 1670
    .local v6, "len":I
    const/4 v0, 0x0

    .line 1671
    .local v0, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1672
    .local v2, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    .local v3, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2b

    .line 1673
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 1674
    .local v2, "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1677
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "ccl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2b
    iget-object v10, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_4b

    sget-object v9, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_31
    invoke-virtual {v10, v9}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 1678
    .local v1, "arrayHandle":I
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v8

    .line 1679
    .local v8, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v8, :cond_40

    .line 1680
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1, v8}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1683
    :cond_40
    if-nez v2, :cond_4d

    .line 1684
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v6, :cond_5f

    .line 1685
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    .line 1684
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .end local v1    # "arrayHandle":I
    .end local v5    # "i":I
    .end local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4b
    move-object v9, v0

    .line 1677
    goto :goto_31

    .line 1687
    .restart local v1    # "arrayHandle":I
    .restart local v8    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 1688
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_67

    .line 1689
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [I

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInts([III)V

    .line 1715
    :cond_5f
    :goto_5f
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v9, v1}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1716
    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1717
    return-object v0

    .line 1690
    :cond_67
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_75

    .line 1691
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [B

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v12, v6, v11}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    goto :goto_5f

    .line 1692
    :cond_75
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_82

    .line 1693
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [J

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongs([JII)V

    goto :goto_5f

    .line 1694
    :cond_82
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_8f

    .line 1695
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [F

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloats([FII)V

    goto :goto_5f

    .line 1696
    :cond_8f
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_9c

    .line 1697
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [D

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDoubles([DII)V

    goto :goto_5f

    .line 1698
    :cond_9c
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_a9

    .line 1699
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [S

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShorts([SII)V

    goto :goto_5f

    .line 1700
    :cond_a9
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_b6

    .line 1701
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [C

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChars([CII)V

    goto :goto_5f

    .line 1702
    :cond_b6
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v9, :cond_c3

    .line 1703
    iget-object v10, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-object v9, v0

    check-cast v9, [Z

    invoke-virtual {v10, v9, v12, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBooleans([ZII)V

    goto :goto_5f

    .line 1705
    :cond_c3
    new-instance v9, Ljava/lang/InternalError;

    invoke-direct {v9}, Ljava/lang/InternalError;-><init>()V

    throw v9

    :cond_c9
    move-object v7, v0

    .line 1708
    check-cast v7, [Ljava/lang/Object;

    .line 1709
    .local v7, "oa":[Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_cd
    if-ge v5, v6, :cond_5f

    .line 1710
    invoke-direct {p0, v12}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v5

    .line 1711
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v10, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v9, v1, v10}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 1709
    add-int/lit8 v5, v5, 0x1

    goto :goto_cd
.end method

.method private readClass(Z)Ljava/lang/Class;
    .registers 7
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v3

    const/16 v4, 0x76

    if-eq v3, v4, :cond_10

    .line 1485
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1487
    :cond_10
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1488
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1489
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_3a

    sget-object v3, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1491
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v2

    .line 1492
    .local v2, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v2, :cond_32

    .line 1493
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1496
    :cond_32
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1497
    return-object v0

    .end local v2    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_3a
    move-object v3, v0

    .line 1489
    goto :goto_1f
.end method

.method private readClassDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 8
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v0

    .line 1510
    .local v0, "tc":B
    sparse-switch v0, :sswitch_data_38

    .line 1524
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1525
    const-string/jumbo v2, "invalid type code: %02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1524
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1512
    :sswitch_20
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    .line 1515
    :sswitch_27
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    return-object v1

    .line 1518
    :sswitch_2e
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

    .line 1521
    :sswitch_33
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1

    .line 1510
    :sswitch_data_38
    .sparse-switch
        0x70 -> :sswitch_20
        0x71 -> :sswitch_27
        0x72 -> :sswitch_33
        0x7d -> :sswitch_2e
    .end sparse-switch
.end method

.method private readEnum(Z)Ljava/lang/Enum;
    .registers 14
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 1725
    iget-object v9, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v9

    const/16 v10, 0x7e

    if-eq v9, v10, :cond_12

    .line 1726
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 1729
    :cond_12
    invoke-direct {p0, v11}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1730
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isEnum()Z

    move-result v9

    if-nez v9, :cond_36

    .line 1731
    new-instance v8, Ljava/io/InvalidClassException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "non-enum class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1734
    :cond_36
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_3c

    sget-object v8, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :cond_3c
    invoke-virtual {v9, v8}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    .line 1735
    .local v3, "enumHandle":I
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v6

    .line 1736
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v6, :cond_4b

    .line 1737
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v3, v6}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1740
    :cond_4b
    invoke-direct {p0, v11}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v5

    .line 1741
    .local v5, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1742
    .local v7, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1743
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_62

    .line 1746
    :try_start_56
    invoke-static {v0, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_59} :catch_6a

    move-result-object v2

    .line 1747
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object v7, v2

    .line 1753
    .local v7, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_62

    .line 1754
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1758
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v7    # "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_62
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1759
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1760
    return-object v7

    .line 1748
    .local v7, "result":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_6a
    move-exception v4

    .line 1749
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/io/InvalidObjectException;

    .line 1750
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "enum constant "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " does not exist in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1749
    invoke-direct {v8, v9}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Ljava/io/IOException;

    throw v8
.end method

.method private readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V
    .registers 8
    .param p1, "obj"    # Ljava/io/Externalizable;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1834
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1835
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v2, :cond_8

    .line 1836
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1837
    :cond_8
    iput-object v3, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1839
    :try_start_a
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->hasBlockExternalData()Z

    move-result v0

    .line 1840
    .local v0, "blocked":Z
    if-eqz v0, :cond_16

    .line 1841
    iget-object v3, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_31

    .line 1843
    :cond_16
    if-eqz p1, :cond_1b

    .line 1845
    :try_start_18
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1b} :catch_28
    .catchall {:try_start_18 .. :try_end_1b} :catchall_31

    .line 1857
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_20

    .line 1858
    :try_start_1d
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_31

    .line 1861
    :cond_20
    if-eqz v2, :cond_25

    .line 1862
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1863
    :cond_25
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1877
    return-void

    .line 1846
    :catch_28
    move-exception v1

    .line 1854
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_29
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4, v1}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_1b

    .line 1860
    .end local v0    # "blocked":Z
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_31
    move-exception v3

    .line 1861
    if-eqz v2, :cond_37

    .line 1862
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1863
    :cond_37
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1860
    throw v3
.end method

.method private readFatalException()Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2020
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_10

    .line 2021
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 2023
    :cond_10
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2024
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 2026
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 2028
    return-object v0
.end method

.method private readHandle(Z)Ljava/lang/Object;
    .registers 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x7e0000

    const/4 v5, 0x0

    .line 1453
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    const/16 v2, 0x71

    if-eq v1, v2, :cond_13

    .line 1454
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 1456
    :cond_13
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v1

    sub-int/2addr v1, v6

    iput v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1457
    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    if-ltz v1, :cond_2a

    iget v1, p0, Ljava/io/ObjectInputStream;->passHandle:I

    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$HandleTable;->size()I

    move-result v2

    if-lt v1, v2, :cond_43

    .line 1458
    :cond_2a
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 1459
    const-string/jumbo v2, "invalid handle value: %08X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1462
    :cond_43
    if-eqz p1, :cond_4e

    .line 1464
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 1465
    const-string/jumbo v2, "cannot read back reference as unshared"

    .line 1464
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1468
    :cond_4e
    iget-object v1, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$HandleTable;->lookupObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1469
    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    if-ne v0, v1, :cond_63

    .line 1471
    new-instance v1, Ljava/io/InvalidObjectException;

    .line 1472
    const-string/jumbo v2, "cannot read back reference to unshared object"

    .line 1471
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1474
    :cond_63
    return-object v0
.end method

.method private readNonProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 11
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v7

    const/16 v8, 0x72

    if-eq v7, v8, :cond_10

    .line 1596
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 1599
    :cond_10
    new-instance v2, Ljava/io/ObjectStreamClass;

    invoke-direct {v2}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1600
    .local v2, "desc":Ljava/io/ObjectStreamClass;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_54

    sget-object v7, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1b
    invoke-virtual {v8, v7}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v3

    .line 1601
    .local v3, "descHandle":I
    const/4 v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1603
    const/4 v5, 0x0

    .line 1605
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :try_start_23
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_26} :catch_56

    move-result-object v5

    .line 1611
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    const/4 v1, 0x0

    .line 1612
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 1613
    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v7, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1614
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->isCustomSubclass()Z

    move-result v0

    .line 1616
    .local v0, "checksRequired":Z
    :try_start_33
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_66

    .line 1617
    new-instance v6, Ljava/lang/ClassNotFoundException;

    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "null class"

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_41} :catch_6c

    .line 1624
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_41
    :goto_41
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1626
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v7

    invoke-virtual {v2, v5, v1, v6, v7}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1628
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v7, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1629
    iput v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1630
    return-object v2

    .end local v0    # "checksRequired":Z
    .end local v3    # "descHandle":I
    .end local v5    # "readDesc":Ljava/io/ObjectStreamClass;
    :cond_54
    move-object v7, v2

    .line 1600
    goto :goto_1b

    .line 1606
    .restart local v3    # "descHandle":I
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    :catch_56
    move-exception v4

    .line 1607
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    .line 1608
    const-string/jumbo v8, "failed to read class descriptor"

    .line 1607
    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 1618
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "checksRequired":Z
    .restart local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "readDesc":Ljava/io/ObjectStreamClass;
    .restart local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_66
    if-eqz v0, :cond_41

    .line 1619
    :try_start_68
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_41

    .line 1621
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_6c
    move-exception v4

    .line 1622
    .restart local v4    # "ex":Ljava/lang/ClassNotFoundException;
    move-object v6, v4

    .local v6, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_41
.end method

.method private readNull()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_10

    .line 1442
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1444
    :cond_10
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1445
    const/4 v0, 0x0

    return-object v0
.end method

.method private readObject0(Z)Ljava/lang/Object;
    .registers 11
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1304
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    .line 1305
    .local v1, "oldMode":Z
    if-eqz v1, :cond_27

    .line 1306
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v2

    .line 1307
    .local v2, "remain":I
    if-lez v2, :cond_18

    .line 1308
    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v2}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    .line 1309
    :cond_18
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    if-eqz v4, :cond_22

    .line 1316
    new-instance v4, Ljava/io/OptionalDataException;

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    .line 1318
    :cond_22
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1322
    .end local v2    # "remain":I
    :cond_27
    :goto_27
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v3

    .local v3, "tc":B
    const/16 v4, 0x79

    if-ne v3, v4, :cond_3a

    .line 1323
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1324
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->handleReset()V

    goto :goto_27

    .line 1327
    :cond_3a
    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1329
    packed-switch v3, :pswitch_data_138

    .line 1381
    :pswitch_43
    :try_start_43
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1382
    const-string/jumbo v5, "invalid type code: %02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1381
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_5a

    .line 1384
    :catchall_5a
    move-exception v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1384
    throw v4

    .line 1331
    :pswitch_67
    :try_start_67
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1331
    return-object v4

    .line 1334
    :pswitch_77
    :try_start_77
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1334
    return-object v4

    .line 1337
    :pswitch_87
    :try_start_87
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClass(Z)Ljava/lang/Class;
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1337
    return-object v4

    .line 1341
    :pswitch_97
    :try_start_97
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1341
    return-object v4

    .line 1345
    :pswitch_a7
    :try_start_a7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1345
    return-object v4

    .line 1348
    :pswitch_bb
    :try_start_bb
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readArray(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1348
    return-object v4

    .line 1351
    :pswitch_cf
    :try_start_cf
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Enum;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1351
    return-object v4

    .line 1354
    :pswitch_e3
    :try_start_e3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readOrdinaryObject(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->checkResolve(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_5a

    move-result-object v4

    .line 1385
    iget v5, p0, Ljava/io/ObjectInputStream;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/io/ObjectInputStream;->depth:I

    .line 1386
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1354
    return-object v4

    .line 1357
    :pswitch_f7
    :try_start_f7
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readFatalException()Ljava/io/IOException;

    move-result-object v0

    .line 1358
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/io/WriteAbortedException;

    const-string/jumbo v5, "writing aborted"

    invoke-direct {v4, v5, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1362
    .end local v0    # "ex":Ljava/io/IOException;
    :pswitch_104
    if-eqz v1, :cond_11d

    .line 1363
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1364
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    .line 1365
    new-instance v4, Ljava/io/OptionalDataException;

    .line 1366
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->currentBlockRemaining()I

    move-result v5

    .line 1365
    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(I)V

    throw v4

    .line 1368
    :cond_11d
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1369
    const-string/jumbo v5, "unexpected block data"

    .line 1368
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1373
    :pswitch_126
    if-eqz v1, :cond_12f

    .line 1374
    new-instance v4, Ljava/io/OptionalDataException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/io/OptionalDataException;-><init>(Z)V

    throw v4

    .line 1376
    :cond_12f
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1377
    const-string/jumbo v5, "unexpected end of block data"

    .line 1376
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_138
    .catchall {:try_start_f7 .. :try_end_138} :catchall_5a

    .line 1329
    :pswitch_data_138
    .packed-switch 0x70
        :pswitch_67
        :pswitch_77
        :pswitch_97
        :pswitch_e3
        :pswitch_a7
        :pswitch_bb
        :pswitch_87
        :pswitch_104
        :pswitch_126
        :pswitch_43
        :pswitch_104
        :pswitch_f7
        :pswitch_a7
        :pswitch_97
        :pswitch_cf
    .end packed-switch
.end method

.method private readOrdinaryObject(Z)Ljava/lang/Object;
    .registers 11
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v6, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v6

    const/16 v7, 0x73

    if-eq v6, v7, :cond_10

    .line 1774
    new-instance v6, Ljava/lang/InternalError;

    invoke-direct {v6}, Ljava/lang/InternalError;-><init>()V

    throw v6

    .line 1777
    :cond_10
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1778
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->checkDeserialize()V

    .line 1780
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 1781
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-eq v0, v6, :cond_24

    const-class v6, Ljava/lang/Class;

    if-ne v0, v6, :cond_2d

    .line 1783
    :cond_24
    new-instance v6, Ljava/io/InvalidClassException;

    const-string/jumbo v7, "invalid class descriptor"

    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1782
    :cond_2d
    const-class v6, Ljava/io/ObjectStreamClass;

    if-eq v0, v6, :cond_24

    .line 1788
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isInstantiable()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->newInstance()Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_9a

    move-result-object v3

    .line 1795
    :goto_3b
    iget-object v7, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_b2

    sget-object v6, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_41
    invoke-virtual {v7, v6}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1796
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getResolveException()Ljava/lang/ClassNotFoundException;

    move-result-object v5

    .line 1797
    .local v5, "resolveEx":Ljava/lang/ClassNotFoundException;
    if-eqz v5, :cond_54

    .line 1798
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7, v5}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 1801
    :cond_54
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    move-result v6

    if-eqz v6, :cond_b4

    move-object v6, v3

    .line 1802
    check-cast v6, Ljava/io/Externalizable;

    invoke-direct {p0, v6, v1}, Ljava/io/ObjectInputStream;->readExternalData(Ljava/io/Externalizable;Ljava/io/ObjectStreamClass;)V

    .line 1807
    :goto_60
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1809
    if-eqz v3, :cond_97

    .line 1810
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v6, v7}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v6

    if-nez v6, :cond_97

    .line 1811
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasReadResolveMethod()Z

    move-result v6

    .line 1809
    if-eqz v6, :cond_97

    .line 1813
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1814
    .local v4, "rep":Ljava/lang/Object;
    if-eqz p1, :cond_8d

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 1815
    invoke-static {v4}, Ljava/io/ObjectInputStream;->cloneArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1817
    :cond_8d
    if-eq v4, v3, :cond_97

    .line 1818
    iget-object v6, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v7, p0, Ljava/io/ObjectInputStream;->passHandle:I

    move-object v3, v4

    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v6, v7, v4}, Ljava/io/ObjectInputStream$HandleTable;->setObject(ILjava/lang/Object;)V

    .line 1822
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "rep":Ljava/lang/Object;
    :cond_97
    return-object v3

    .line 1788
    .end local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_98
    const/4 v3, 0x0

    .restart local v3    # "obj":Ljava/lang/Object;
    goto :goto_3b

    .line 1789
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_9a
    move-exception v2

    .line 1790
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/io/InvalidClassException;

    .line 1791
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1792
    const-string/jumbo v8, "unable to create instance"

    .line 1790
    invoke-direct {v6, v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_b2
    move-object v6, v3

    .line 1795
    goto :goto_41

    .line 1804
    .restart local v5    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_b4
    invoke-direct {p0, v3, v1}, Ljava/io/ObjectInputStream;->readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_60
.end method

.method private readProxyDesc(Z)Ljava/io/ObjectStreamClass;
    .registers 12
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v8

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_10

    .line 1545
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 1548
    :cond_10
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1549
    .local v1, "desc":Ljava/io/ObjectStreamClass;
    iget-object v9, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_38

    sget-object v8, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_1b
    invoke-virtual {v9, v8}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    .line 1550
    .local v2, "descHandle":I
    const/4 v8, -0x1

    iput v8, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1552
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v6

    .line 1553
    .local v6, "numIfaces":I
    new-array v5, v6, [Ljava/lang/String;

    .line 1554
    .local v5, "ifaces":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b
    if-ge v4, v6, :cond_3a

    .line 1555
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    .line 1554
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .end local v2    # "descHandle":I
    .end local v4    # "i":I
    .end local v5    # "ifaces":[Ljava/lang/String;
    .end local v6    # "numIfaces":I
    :cond_38
    move-object v8, v1

    .line 1549
    goto :goto_1b

    .line 1558
    .restart local v2    # "descHandle":I
    .restart local v4    # "i":I
    .restart local v5    # "ifaces":[Ljava/lang/String;
    .restart local v6    # "numIfaces":I
    :cond_3a
    const/4 v0, 0x0

    .line 1559
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 1560
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    iget-object v8, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1562
    :try_start_42
    invoke-virtual {p0, v5}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_63

    .line 1563
    new-instance v7, Ljava/lang/ClassNotFoundException;

    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "null class"

    invoke-direct {v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_50} :catch_72

    .line 1577
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_50
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1579
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/io/ObjectInputStream;->readClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-virtual {v1, v0, v7, v8}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1581
    iget-object v8, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    invoke-virtual {v8, v2}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1582
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1583
    return-object v1

    .line 1564
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_63
    :try_start_63
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 1565
    new-instance v8, Ljava/io/InvalidClassException;

    const-string/jumbo v9, "Not a proxy"

    invoke-direct {v8, v9}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1574
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "resolveEx":Ljava/lang/ClassNotFoundException;
    :catch_72
    move-exception v3

    .line 1575
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    move-object v7, v3

    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    goto :goto_50

    .line 1571
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "resolveEx":Ljava/lang/ClassNotFoundException;
    :cond_75
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1572
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    .line 1570
    invoke-static {v8, v9}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_84} :catch_72

    goto :goto_50
.end method

.method private readSerialData(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
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

    const/4 v7, 0x0

    .line 1888
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v4

    .line 1889
    .local v4, "slots":[Ljava/io/ObjectStreamClass$ClassDataSlot;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v5, v4

    if-ge v1, v5, :cond_9c

    .line 1890
    aget-object v5, v4, v1

    iget-object v3, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->desc:Ljava/io/ObjectStreamClass;

    .line 1892
    .local v3, "slotDesc":Ljava/io/ObjectStreamClass;
    aget-object v5, v4, v1

    iget-boolean v5, v5, Ljava/io/ObjectStreamClass$ClassDataSlot;->hasData:Z

    if-eqz v5, :cond_86

    .line 1893
    if-eqz p1, :cond_20

    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 1894
    :cond_20
    invoke-direct {p0, v7, v3}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1930
    :goto_23
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1931
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->skipCustomData()V

    .line 1889
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1895
    :cond_2f
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectMethod()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1896
    iget-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1897
    .local v2, "oldContext":Ljava/io/SerialCallbackContext;
    if-eqz v2, :cond_3c

    .line 1898
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1900
    :cond_3c
    :try_start_3c
    new-instance v5, Ljava/io/SerialCallbackContext;

    invoke-direct {v5, p1, v3}, Ljava/io/SerialCallbackContext;-><init>(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    iput-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1902
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1903
    invoke-virtual {v3, p1, p0}, Ljava/io/ObjectStreamClass;->invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_4c} :catch_5b
    .catchall {:try_start_3c .. :try_end_4c} :catchall_6e

    .line 1914
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1915
    if-eqz v2, :cond_56

    .line 1916
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1917
    :cond_56
    :goto_56
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1925
    iput-boolean v8, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    goto :goto_23

    .line 1904
    :catch_5b
    move-exception v0

    .line 1912
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_5c
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6e

    .line 1914
    iget-object v5, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v5}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1915
    if-eqz v2, :cond_56

    .line 1916
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    goto :goto_56

    .line 1913
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_6e
    move-exception v5

    .line 1914
    iget-object v6, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    invoke-virtual {v6}, Ljava/io/SerialCallbackContext;->setUsed()V

    .line 1915
    if-eqz v2, :cond_79

    .line 1916
    invoke-virtual {v2}, Ljava/io/SerialCallbackContext;->check()V

    .line 1917
    :cond_79
    iput-object v2, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 1913
    throw v5

    .line 1927
    .end local v2    # "oldContext":Ljava/io/SerialCallbackContext;
    :cond_7c
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_23

    .line 1933
    :cond_80
    iget-object v5, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v5, v8}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_2c

    .line 1936
    :cond_86
    if-eqz p1, :cond_2c

    .line 1937
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->hasReadObjectNoDataMethod()Z

    move-result v5

    .line 1936
    if-eqz v5, :cond_2c

    .line 1938
    iget-object v5, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v6, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v5, v6}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v5

    if-nez v5, :cond_2c

    .line 1940
    invoke-virtual {v3, p1}, Ljava/io/ObjectStreamClass;->invokeReadObjectNoData(Ljava/lang/Object;)V

    goto :goto_2c

    .line 1944
    .end local v3    # "slotDesc":Ljava/io/ObjectStreamClass;
    :cond_9c
    return-void
.end method

.method private readString(Z)Ljava/lang/String;
    .registers 9
    .param p1, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 1640
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_44

    .line 1650
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 1651
    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1650
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1642
    :sswitch_20
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, "str":Ljava/lang/String;
    :goto_26
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    if-eqz p1, :cond_41

    sget-object v2, Ljava/io/ObjectInputStream;->unsharedMarker:Ljava/lang/Object;

    :goto_2c
    invoke-virtual {v3, v2}, Ljava/io/ObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1654
    iget-object v2, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v3, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectInputStream$HandleTable;->finish(I)V

    .line 1655
    return-object v0

    .line 1646
    .end local v0    # "str":Ljava/lang/String;
    :sswitch_3a
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLongUTF()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_26

    :cond_41
    move-object v2, v0

    .line 1653
    goto :goto_2c

    .line 1640
    nop

    :sswitch_data_44
    .sparse-switch
        0x74 -> :sswitch_20
        0x7c -> :sswitch_3a
    .end sparse-switch
.end method

.method private skipCustomData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1951
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1953
    .local v0, "oldHandle":I
    :goto_3
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->getBlockDataMode()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1954
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBlockData()V

    .line 1955
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 1957
    :cond_15
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 1969
    :pswitch_1e
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    goto :goto_3

    .line 1960
    :pswitch_22
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    goto :goto_3

    .line 1964
    :pswitch_29
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 1965
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1966
    return-void

    .line 1957
    nop

    :pswitch_data_32
    .packed-switch 0x77
        :pswitch_22
        :pswitch_29
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method private verifySubclass()V
    .registers 7

    .prologue
    .line 1239
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1240
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/io/ObjectInputStream;

    if-ne v0, v4, :cond_9

    .line 1241
    return-void

    .line 1243
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1244
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-nez v3, :cond_10

    .line 1245
    return-void

    .line 1247
    :cond_10
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v5, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1248
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v4}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1249
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1250
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_35

    .line 1251
    invoke-static {v0}, Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1252
    sget-object v4, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1255
    return-void

    .line 1257
    :cond_3c
    sget-object v4, Ljava/io/ObjectInputStream;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1258
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->closed:Z

    .line 895
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_a

    .line 896
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 898
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->close()V

    .line 899
    return-void
.end method

.method public defaultReadObject()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 497
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 498
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-nez v0, :cond_e

    .line 499
    new-instance v4, Ljava/io/NotActiveException;

    const-string/jumbo v5, "not in call to readObject"

    invoke-direct {v4, v5}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 501
    :cond_e
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v2

    .line 502
    .local v2, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 503
    .local v1, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 504
    invoke-direct {p0, v2, v1}, Ljava/io/ObjectInputStream;->defaultReadFields(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 505
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 506
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 512
    iput-boolean v6, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 514
    :cond_2c
    iget-object v4, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v5, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v3

    .line 515
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v3, :cond_37

    .line 516
    throw v3

    .line 518
    :cond_37
    return-void
.end method

.method protected enableResolveObject(Z)Z
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 779
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-ne p1, v1, :cond_5

    .line 780
    return p1

    .line 782
    :cond_5
    if-eqz p1, :cond_12

    .line 783
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 784
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 785
    sget-object v1, Ljava/io/ObjectInputStream;->SUBSTITUTION_PERMISSION:Ljava/io/SerializablePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 788
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_12
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 789
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
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

    .line 862
    if-nez p1, :cond_9

    .line 863
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 865
    :cond_9
    add-int v0, p2, p3

    .line 866
    .local v0, "endoff":I
    if-ltz p2, :cond_f

    if-gez p3, :cond_15

    .line 867
    :cond_f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 866
    :cond_15
    array-length v1, p1

    if-gt v0, v1, :cond_f

    if-ltz v0, :cond_f

    .line 869
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v1

    return v1
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 834
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0, p0}, Ljava/io/ObjectStreamClass;->readNonProxy(Ljava/io/ObjectInputStream;)V

    .line 835
    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 536
    iget-object v0, p0, Ljava/io/ObjectInputStream;->curContext:Ljava/io/SerialCallbackContext;

    .line 537
    .local v0, "ctx":Ljava/io/SerialCallbackContext;
    if-nez v0, :cond_e

    .line 538
    new-instance v4, Ljava/io/NotActiveException;

    const-string/jumbo v5, "not in call to readObject"

    invoke-direct {v4, v5}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_e
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getObj()Ljava/lang/Object;

    move-result-object v2

    .line 541
    .local v2, "curObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/SerialCallbackContext;->getDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 542
    .local v1, "curDesc":Ljava/io/ObjectStreamClass;
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 543
    new-instance v3, Ljava/io/ObjectInputStream$GetFieldImpl;

    invoke-direct {v3, p0, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;-><init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V

    .line 544
    .local v3, "getField":Ljava/io/ObjectInputStream$GetFieldImpl;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->readFields()V

    .line 545
    iget-object v4, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v4, v6}, Ljava/io/ObjectInputStream$BlockDataInputStream;->setBlockDataMode(Z)Z

    .line 546
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->hasWriteObjectData()Z

    move-result v4

    if-nez v4, :cond_31

    .line 552
    iput-boolean v6, p0, Ljava/io/ObjectInputStream;->defaultDataEnd:Z

    .line 555
    :cond_31
    return-object v3
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 5
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1019
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1020
    return-void
.end method

.method public readFully([BII)V
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

    .line 1032
    add-int v0, p2, p3

    .line 1033
    .local v0, "endoff":I
    if-ltz p2, :cond_7

    if-gez p3, :cond_d

    .line 1034
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1033
    :cond_d
    array-length v1, p1

    if-gt v0, v1, :cond_7

    if-ltz v0, :cond_7

    .line 1036
    iget-object v1, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v1, p1, p2, p3, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 1037
    return-void
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 367
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableOverride:Z

    if-eqz v3, :cond_9

    .line 368
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 372
    :cond_9
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 374
    .local v2, "outerHandle":I
    const/4 v3, 0x0

    :try_start_c
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 375
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 376
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    .line 377
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_31

    .line 378
    throw v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_22

    .line 384
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_22
    move-exception v3

    .line 385
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 386
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_30

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_30

    .line 387
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 384
    :cond_30
    throw v3

    .line 380
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_31
    :try_start_31
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3a

    .line 381
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_22

    .line 385
    :cond_3a
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 386
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_47

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_47

    .line 387
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 383
    :cond_47
    return-object v1
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public readShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v0

    .line 806
    .local v0, "s0":S
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readShort()S

    move-result v1

    .line 807
    .local v1, "s1":S
    const/16 v2, -0x5313

    if-ne v0, v2, :cond_13

    const/4 v2, 0x5

    if-eq v1, v2, :cond_31

    .line 808
    :cond_13
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 809
    const-string/jumbo v3, "invalid stream header: %04X%04X"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :cond_31
    return-void
.end method

.method readTypeString()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    iget v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1416
    .local v0, "oldHandle":I
    :try_start_2
    iget-object v2, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peekByte()B

    move-result v1

    .line 1417
    .local v1, "tc":B
    sparse-switch v1, :sswitch_data_42

    .line 1429
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 1430
    const-string/jumbo v3, "invalid type code: %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_22

    .line 1432
    .end local v1    # "tc":B
    :catchall_22
    move-exception v2

    .line 1433
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1432
    throw v2

    .line 1419
    .restart local v1    # "tc":B
    :sswitch_26
    :try_start_26
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_22

    .line 1433
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1419
    return-object v2

    .line 1422
    :sswitch_2f
    const/4 v2, 0x0

    :try_start_30
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readHandle(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_22

    .line 1433
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1422
    return-object v2

    .line 1426
    :sswitch_39
    const/4 v2, 0x0

    :try_start_3a
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readString(Z)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_22

    move-result-object v2

    .line 1433
    iput v0, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 1426
    return-object v2

    .line 1417
    nop

    :sswitch_data_42
    .sparse-switch
        0x70 -> :sswitch_26
        0x71 -> :sswitch_2f
        0x74 -> :sswitch_39
        0x7c -> :sswitch_39
    .end sparse-switch
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 462
    iget v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 464
    .local v2, "outerHandle":I
    const/4 v3, 0x1

    :try_start_3
    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;->readObject0(Z)Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v2, v4}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 466
    iget-object v3, p0, Ljava/io/ObjectInputStream;->handles:Ljava/io/ObjectInputStream$HandleTable;

    iget v4, p0, Ljava/io/ObjectInputStream;->passHandle:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v0

    .line 467
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v0, :cond_28

    .line 468
    throw v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_19

    .line 474
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_19
    move-exception v3

    .line 475
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 476
    iget-boolean v4, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v4, :cond_27

    iget v4, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v4, :cond_27

    .line 477
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 474
    :cond_27
    throw v3

    .line 470
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_28
    :try_start_28
    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_31

    .line 471
    iget-object v3, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$ValidationList;->doCallbacks()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_19

    .line 475
    :cond_31
    iput v2, p0, Ljava/io/ObjectInputStream;->passHandle:I

    .line 476
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->closed:Z

    if-eqz v3, :cond_3e

    iget v3, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v3, :cond_3e

    .line 477
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->clear()V

    .line 473
    :cond_3e
    return-object v1
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .registers 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 577
    iget v0, p0, Ljava/io/ObjectInputStream;->depth:I

    if-nez v0, :cond_d

    .line 578
    new-instance v0, Ljava/io/NotActiveException;

    const-string/jumbo v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_d
    iget-object v0, p0, Ljava/io/ObjectInputStream;->vlist:Ljava/io/ObjectInputStream$ValidationList;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectInputStream$ValidationList;->register(Ljava/io/ObjectInputValidation;I)V

    .line 581
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 7
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "name":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v3

    return-object v3

    .line 630
    :catch_e
    move-exception v1

    .line 631
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/io/ObjectInputStream;->primClasses:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 632
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1a

    .line 633
    return-object v0

    .line 635
    :cond_1a
    throw v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 11
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 694
    invoke-static {}, Ljava/io/ObjectInputStream;->latestUserDefinedLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 695
    .local v5, "latestLoader":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 696
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .line 699
    .local v3, "hasNonPublicInterface":Z
    array-length v7, p1

    new-array v1, v7, [Ljava/lang/Class;

    .line 700
    .local v1, "classObjs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    .local v4, "i":I
    :goto_b
    array-length v7, p1

    if-ge v4, v7, :cond_37

    .line 701
    aget-object v7, p1, v4

    invoke-static {v7, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 702
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_32

    .line 703
    if-eqz v3, :cond_2d

    .line 704
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eq v6, v7, :cond_32

    .line 705
    new-instance v7, Ljava/lang/IllegalAccessError;

    .line 706
    const-string/jumbo v8, "conflicting non-public interface class loaders"

    .line 705
    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 709
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 710
    .local v6, "nonPublicLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x1

    .line 713
    .end local v6    # "nonPublicLoader":Ljava/lang/ClassLoader;
    :cond_32
    aput-object v0, v1, v4

    .line 700
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 717
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_37
    if-eqz v3, :cond_3e

    .line 716
    :goto_39
    :try_start_39
    invoke-static {v6, v1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3c} :catch_40

    move-result-object v7

    return-object v7

    :cond_3e
    move-object v6, v5

    .line 717
    goto :goto_39

    .line 719
    :catch_40
    move-exception v2

    .line 720
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/ClassNotFoundException;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public skipBytes(I)I
    .registers 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    iget-object v0, p0, Ljava/io/ObjectInputStream;->bin:Ljava/io/ObjectInputStream$BlockDataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
