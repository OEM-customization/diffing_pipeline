.class Ljava/io/ObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable$HandleList;
    }
.end annotation


# static fields
.field private static final STATUS_EXCEPTION:B = 0x3t

.field private static final STATUS_OK:B = 0x1t

.field private static final STATUS_UNKNOWN:B = 0x2t


# instance fields
.field deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field entries:[Ljava/lang/Object;

.field lowDep:I

.field size:I

.field status:[B


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .prologue
    .line 3275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3268
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3270
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3276
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3277
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3278
    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3279
    return-void
.end method

.method private grow()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3479
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 3481
    .local v0, "newCapacity":I
    new-array v3, v0, [B

    .line 3482
    .local v3, "newStatus":[B
    new-array v2, v0, [Ljava/lang/Object;

    .line 3483
    .local v2, "newEntries":[Ljava/lang/Object;
    new-array v1, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3485
    .local v1, "newDeps":[Ljava/io/ObjectInputStream$HandleTable$HandleList;
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3486
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3487
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3489
    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3490
    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3491
    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3492
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3288
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 3289
    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    .line 3291
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 3292
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    aput-object p1, v0, v1

    .line 3293
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method

.method clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3461
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 3462
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3463
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3464
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3465
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3466
    return-void
.end method

.method finish(I)V
    .registers 6
    .param p1, "handle"    # I

    .prologue
    .line 3384
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-gez v2, :cond_16

    .line 3386
    add-int/lit8 v0, p1, 0x1

    .line 3397
    .local v0, "end":I
    :goto_6
    move v1, p1

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2e

    .line 3398
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v2, v2, v1

    packed-switch v2, :pswitch_data_30

    .line 3409
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 3387
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_16
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-lt v2, p1, :cond_20

    .line 3389
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3390
    .restart local v0    # "end":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_6

    .line 3393
    .end local v0    # "end":I
    :cond_20
    return-void

    .line 3400
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :pswitch_21
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 3401
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 3397
    :pswitch_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3412
    :cond_2e
    return-void

    .line 3398
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method lookupException(I)Ljava/lang/ClassNotFoundException;
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 3452
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 3453
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 3454
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/ClassNotFoundException;

    .line 3452
    :goto_10
    return-object v0

    .line 3454
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method lookupObject(I)Ljava/lang/Object;
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 3441
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 3442
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 3443
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3441
    :goto_e
    return-object v0

    .line 3443
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method markDependency(II)V
    .registers 5
    .param p1, "dependent"    # I
    .param p2, "target"    # I

    .prologue
    const/4 v0, -0x1

    .line 3303
    if-eq p1, v0, :cond_5

    if-ne p2, v0, :cond_6

    .line 3304
    :cond_5
    return-void

    .line 3306
    :cond_6
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_4c

    .line 3342
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3309
    :pswitch_13
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p2

    packed-switch v0, :pswitch_data_54

    .line 3334
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3317
    :pswitch_20
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/ClassNotFoundException;

    .line 3316
    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3344
    :cond_29
    :goto_29
    :pswitch_29
    return-void

    .line 3322
    :pswitch_2a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    if-nez v0, :cond_39

    .line 3323
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    aput-object v1, v0, p2

    .line 3325
    :cond_39
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    .line 3328
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-ltz v0, :cond_48

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-le v0, p2, :cond_29

    .line 3329
    :cond_48
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_29

    .line 3306
    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_29
    .end packed-switch

    .line 3309
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2a
        :pswitch_20
    .end packed-switch
.end method

.method markException(ILjava/lang/ClassNotFoundException;)V
    .registers 9
    .param p1, "handle"    # I
    .param p2, "ex"    # Ljava/lang/ClassNotFoundException;

    .prologue
    const/4 v5, 0x0

    .line 3353
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v3, v3, p1

    packed-switch v3, :pswitch_data_34

    .line 3373
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 3355
    :pswitch_e
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v4, 0x3

    aput-byte v4, v3, p1

    .line 3356
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v3, p1

    .line 3359
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v3, p1

    .line 3360
    .local v0, "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    if-eqz v0, :cond_32

    .line 3361
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    move-result v2

    .line 3362
    .local v2, "ndeps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v2, :cond_2e

    .line 3363
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3362
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 3365
    :cond_2e
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aput-object v5, v3, p1

    .line 3375
    .end local v0    # "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    .end local v1    # "i":I
    .end local v2    # "ndeps":I
    :cond_32
    :pswitch_32
    return-void

    .line 3353
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_e
        :pswitch_32
    .end packed-switch
.end method

.method setObject(ILjava/lang/Object;)V
    .registers 4
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3421
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_12

    .line 3431
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3424
    :pswitch_d
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3433
    :pswitch_11
    return-void

    .line 3421
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method size()I
    .registers 2

    .prologue
    .line 3472
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method
