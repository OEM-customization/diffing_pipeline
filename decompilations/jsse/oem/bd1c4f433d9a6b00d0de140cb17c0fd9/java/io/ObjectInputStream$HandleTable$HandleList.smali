.class Ljava/io/ObjectInputStream$HandleTable$HandleList;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream$HandleTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleList"
.end annotation


# instance fields
.field private list:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3498
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    .line 3499
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    .line 3502
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 6
    .param p1, "handle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3505
    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    array-length v2, v2

    if-lt v1, v2, :cond_19

    .line 3506
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 3507
    .local v0, "newList":[I
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3508
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    .line 3510
    .end local v0    # "newList":[I
    :cond_19
    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    aput p1, v1, v2

    .line 3511
    return-void
.end method

.method public get(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 3514
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    if-lt p1, v0, :cond_a

    .line 3515
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3517
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    aget v0, v0, p1

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3521
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    return v0
.end method
