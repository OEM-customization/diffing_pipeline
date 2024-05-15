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
.field private static final greylist-max-o STATUS_EXCEPTION:B = 0x3t

.field private static final greylist-max-o STATUS_OK:B = 0x1t

.field private static final greylist-max-o STATUS_UNKNOWN:B = 0x2t


# instance fields
.field greylist-max-o deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field greylist-max-o entries:[Ljava/lang/Object;

.field greylist-max-o lowDep:I

.field greylist-max-o size:I

.field greylist-max-o status:[B


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 3419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3412
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3414
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3420
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3421
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3422
    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3423
    return-void
.end method

.method private greylist-max-o grow()V
    .registers 8

    .line 3623
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 3625
    .local v0, "newCapacity":I
    new-array v1, v0, [B

    .line 3626
    .local v1, "newStatus":[B
    new-array v2, v0, [Ljava/lang/Object;

    .line 3627
    .local v2, "newEntries":[Ljava/lang/Object;
    new-array v3, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3629
    .local v3, "newDeps":[Ljava/io/ObjectInputStream$HandleTable$HandleList;
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3630
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3631
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3633
    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3634
    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3635
    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3636
    return-void
.end method


# virtual methods
.method greylist-max-o assign(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3432
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 3433
    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    .line 3435
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 3436
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 3437
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v1
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 3605
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 3606
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3607
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3608
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3609
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3610
    return-void
.end method

.method greylist-max-o finish(I)V
    .registers 8
    .param p1, "handle"    # I

    .line 3528
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-gez v0, :cond_7

    .line 3530
    add-int/lit8 v0, p1, 0x1

    .local v0, "end":I
    goto :goto_e

    .line 3531
    .end local v0    # "end":I
    :cond_7
    if-lt v0, p1, :cond_32

    .line 3533
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3534
    .restart local v0    # "end":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3541
    :goto_e
    move v1, p1

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_31

    .line 3542
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v3, v2, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1f

    goto :goto_2d

    .line 3553
    :cond_1f
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 3544
    :cond_25
    aput-byte v4, v2, v1

    .line 3545
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 3546
    goto :goto_2e

    .line 3550
    :cond_2d
    :goto_2d
    nop

    .line 3541
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3556
    .end local v1    # "i":I
    :cond_31
    return-void

    .line 3537
    .end local v0    # "end":I
    :cond_32
    return-void
.end method

.method greylist-max-o lookupException(I)Ljava/lang/ClassNotFoundException;
    .registers 4
    .param p1, "handle"    # I

    .line 3596
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 3598
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/ClassNotFoundException;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3596
    :goto_12
    return-object v0
.end method

.method greylist-max-o lookupObject(I)Ljava/lang/Object;
    .registers 4
    .param p1, "handle"    # I

    .line 3585
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 3587
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3585
    :goto_10
    return-object v0
.end method

.method greylist-max-o markDependency(II)V
    .registers 7
    .param p1, "dependent"    # I
    .param p2, "target"    # I

    .line 3447
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4f

    if-ne p2, v0, :cond_6

    goto :goto_4f

    .line 3450
    :cond_6
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_11

    .line 3483
    goto :goto_4e

    .line 3486
    :cond_11
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3453
    :cond_17
    aget-byte v0, v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    if-eq v0, v3, :cond_30

    if-ne v0, v2, :cond_2a

    .line 3460
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3462
    goto :goto_4e

    .line 3478
    :cond_2a
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3466
    :cond_30
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v1, v0, p2

    if-nez v1, :cond_3d

    .line 3467
    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    aput-object v1, v0, p2

    .line 3469
    :cond_3d
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    .line 3472
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-ltz v0, :cond_4a

    if-le v0, p2, :cond_4e

    .line 3473
    :cond_4a
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_4e

    .line 3456
    :cond_4d
    nop

    .line 3488
    :cond_4e
    :goto_4e
    return-void

    .line 3448
    :cond_4f
    :goto_4f
    return-void
.end method

.method greylist-max-o markException(ILjava/lang/ClassNotFoundException;)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "ex"    # Ljava/lang/ClassNotFoundException;

    .line 3497
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_11

    if-ne v1, v3, :cond_b

    .line 3514
    goto :goto_33

    .line 3517
    :cond_b
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3499
    :cond_11
    aput-byte v3, v0, p1

    .line 3500
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3503
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p1

    .line 3504
    .local v0, "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    if-eqz v0, :cond_33

    .line 3505
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    move-result v1

    .line 3506
    .local v1, "ndeps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_2e

    .line 3507
    invoke-virtual {v0, v2}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3506
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3509
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    .line 3519
    .end local v0    # "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    .end local v1    # "ndeps":I
    :cond_33
    :goto_33
    return-void
.end method

.method greylist-max-o setObject(ILjava/lang/Object;)V
    .registers 5
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3565
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 3572
    goto :goto_19

    .line 3575
    :cond_e
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3568
    :cond_14
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3569
    nop

    .line 3577
    :goto_19
    return-void
.end method

.method greylist-max-o size()I
    .registers 2

    .line 3616
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method
