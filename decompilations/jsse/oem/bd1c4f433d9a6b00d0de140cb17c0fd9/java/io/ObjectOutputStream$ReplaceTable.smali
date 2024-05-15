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
.field private final htab:Ljava/io/ObjectOutputStream$HandleTable;

.field private reps:[Ljava/lang/Object;


# direct methods
.method constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 2462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2463
    new-instance v0, Ljava/io/ObjectOutputStream$HandleTable;

    invoke-direct {v0, p1, p2}, Ljava/io/ObjectOutputStream$HandleTable;-><init>(IF)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    .line 2464
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    .line 2465
    return-void
.end method

.method private grow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2506
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 2507
    .local v0, "newReps":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2508
    iput-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    .line 2509
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "rep"    # Ljava/lang/Object;

    .prologue
    .line 2471
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v0

    .line 2472
    .local v0, "index":I
    :goto_6
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_f

    .line 2473
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$ReplaceTable;->grow()V

    goto :goto_6

    .line 2475
    :cond_f
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 2476
    return-void
.end method

.method clear()V
    .registers 5

    .prologue
    .line 2491
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2492
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 2493
    return-void
.end method

.method lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2483
    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream$HandleTable;->lookup(Ljava/lang/Object;)I

    move-result v0

    .line 2484
    .local v0, "index":I
    if-ltz v0, :cond_c

    iget-object v1, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->reps:[Ljava/lang/Object;

    aget-object p1, v1, v0

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_c
    return-object p1
.end method

.method size()I
    .registers 2

    .prologue
    .line 2499
    iget-object v0, p0, Ljava/io/ObjectOutputStream$ReplaceTable;->htab:Ljava/io/ObjectOutputStream$HandleTable;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream$HandleTable;->size()I

    move-result v0

    return v0
.end method
