.class Ljava/io/ObjectOutputStream$ReplaceTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplaceTable"
.end annotation


# instance fields
.field private final greylist-max-o htab:Ljava/io/ObjectOutputStream$HandleTable;

.field private greylist-max-o reps:[Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 2478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2479
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, p1, p2}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    .line 2480
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    .line 2481
    return-void
.end method

.method private greylist-max-o grow()V
    .registers 5

    .line 2522
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2523
    .local v1, "newReps":[Ljava/lang/Object;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2524
    iput-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    .line 2525
    return-void
.end method


# virtual methods
.method greylist-max-o assign(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "rep"    # Ljava/lang/Object;

    .line 2487
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v0

    .line 2488
    .local v0, "index":I
    :goto_6
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_f

    .line 2489
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$ReplaceTable;->grow()V

    goto :goto_6

    .line 2491
    :cond_f
    aput-object p2, v1, v0

    .line 2492
    return-void
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 2507
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2508
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 2509
    return-void
.end method

.method greylist-max-o lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2499
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .line 2500
    .local v0, "index":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    return-object v1
.end method

.method greylist-max-o size()I
    .registers 2

    .line 2515
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    return v0
.end method
