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
.field private greylist-max-o list:[I

.field private greylist-max-o size:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 3645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3642
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    .line 3643
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    .line 3646
    return-void
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 6
    .param p1, "handle"    # I

    .line 3649
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    array-length v2, v1

    if-lt v0, v2, :cond_13

    .line 3650
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 3651
    .local v0, "newList":[I
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3652
    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    .line 3654
    .end local v0    # "newList":[I
    :cond_13
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    aput p1, v0, v1

    .line 3655
    return-void
.end method

.method public greylist-max-o get(I)I
    .registers 3
    .param p1, "index"    # I

    .line 3658
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    if-ge p1, v0, :cond_9

    .line 3661
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->list:[I

    aget v0, v0, p1

    return v0

    .line 3659
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 3665
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size:I

    return v0
.end method
