.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$DeqIterator;,
        Ljava/util/ArrayDeque$DeqSpliterator;,
        Ljava/util/ArrayDeque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient elements:[Ljava/lang/Object;

.field transient head:I

.field transient tail:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 172
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "numElements"    # I

    .prologue
    .line 181
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 182
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 197
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 198
    return-void
.end method

.method private allocateElements(I)V
    .registers 4
    .param p1, "numElements"    # I

    .prologue
    .line 129
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .local v0, "initialCapacity":I
    const/16 v1, 0x8

    .line 132
    if-lt p1, v1, :cond_1d

    .line 133
    move v0, p1

    .line 134
    ushr-int/lit8 v1, p1, 0x1

    or-int v0, p1, v1

    .line 135
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 136
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 137
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 138
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 141
    if-gez v0, :cond_1d

    .line 142
    ushr-int/lit8 v0, v0, 0x1

    .line 144
    :cond_1d
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private checkInvariants()V
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 504
    :cond_14
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_4c

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v3, :cond_30

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2e

    :cond_26
    :goto_26
    if-nez v0, :cond_4c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2e
    move v0, v1

    goto :goto_26

    .line 505
    :cond_30
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_4a

    .line 506
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_26

    move v0, v1

    goto :goto_26

    :cond_4a
    move v0, v1

    .line 505
    goto :goto_26

    .line 507
    :cond_4c
    sget-boolean v0, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_66
    return-void
.end method

.method private doubleCapacity()V
    .registers 9

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v7, 0x0

    .line 152
    sget-boolean v5, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v5, :cond_11

    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    iget v6, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v5, v6, :cond_11

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 153
    :cond_11
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 154
    .local v3, "p":I
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 155
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 156
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 157
    .local v2, "newCapacity":I
    if-gez v2, :cond_25

    .line 158
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_25
    new-array v0, v2, [Ljava/lang/Object;

    .line 160
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 163
    iput v7, p0, Ljava/util/ArrayDeque;->head:I

    .line 164
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 165
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 884
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 887
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 888
    .local v1, "size":I
    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 889
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 890
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1d

    .line 894
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 895
    :cond_1d
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 867
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 870
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 871
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_11
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_21

    .line 872
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 871
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_11

    .line 873
    :cond_21
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_8

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 213
    :cond_8
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 214
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_21

    .line 215
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 216
    :cond_21
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_8

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 229
    :cond_8
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 230
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_21

    .line 231
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 232
    :cond_21
    return-void
.end method

.method public clear()V
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    .line 739
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 740
    .local v0, "h":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    .line 741
    .local v3, "t":I
    if-eq v0, v3, :cond_1c

    .line 742
    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    .line 743
    move v1, v0

    .line 744
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 746
    .local v2, "mask":I
    :cond_11
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 747
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 748
    if-ne v1, v3, :cond_11

    .line 750
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1c
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/ArrayDeque;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 844
    .local v1, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 845
    return-object v1

    .line 846
    .end local v1    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_12
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 706
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1c

    .line 707
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 708
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 709
    .local v0, "i":I
    :goto_9
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1c

    .line 710
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 711
    const/4 v3, 0x1

    return v3

    .line 709
    :cond_17
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_9

    .line 714
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1c
    const/4 v3, 0x0

    return v3
.end method

.method delete(I)Z
    .registers 12
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 521
    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    .line 522
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 523
    .local v1, "elements":[Ljava/lang/Object;
    array-length v6, v1

    add-int/lit8 v4, v6, -0x1

    .line 524
    .local v4, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 525
    .local v3, "h":I
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    .line 526
    .local v5, "t":I
    sub-int v6, p1, v3

    and-int v2, v6, v4

    .line 527
    .local v2, "front":I
    sub-int v6, v5, p1

    and-int v0, v6, v4

    .line 530
    .local v0, "back":I
    sub-int v6, v5, v3

    and-int/2addr v6, v4

    if-lt v2, v6, :cond_21

    .line 531
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 534
    :cond_21
    if-ge v2, v0, :cond_42

    .line 535
    if-gt v3, p1, :cond_33

    .line 536
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    :goto_2a
    const/4 v6, 0x0

    aput-object v6, v1, v3

    .line 543
    add-int/lit8 v6, v3, 0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    .line 544
    return v8

    .line 538
    :cond_33
    invoke-static {v1, v8, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    aget-object v6, v1, v4

    aput-object v6, v1, v8

    .line 540
    add-int/lit8 v6, v3, 0x1

    sub-int v7, v4, v3

    invoke-static {v1, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    .line 546
    :cond_42
    if-ge p1, v5, :cond_4e

    .line 547
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    .line 555
    :goto_4d
    return v9

    .line 550
    :cond_4e
    add-int/lit8 v6, p1, 0x1

    sub-int v7, v4, p1

    invoke-static {v1, v6, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    aget-object v6, v1, v8

    aput-object v6, v1, v4

    .line 552
    invoke-static {v1, v9, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_4d
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 309
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_e

    .line 310
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 311
    :cond_e
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 320
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_16

    .line 321
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 322
    :cond_16
    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 576
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 280
    .local v0, "elements":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 282
    .local v1, "h":I
    aget-object v2, v0, v1

    .line 284
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_13

    .line 285
    aput-object v3, v0, v1

    .line 286
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 288
    :cond_13
    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v5, 0x0

    .line 292
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 293
    .local v0, "elements":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int v2, v3, v4

    .line 295
    .local v2, "t":I
    aget-object v1, v0, v2

    .line 296
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_14

    .line 297
    aput-object v5, v0, v2

    .line 298
    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    .line 300
    :cond_14
    return-object v1
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 731
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_c

    .line 264
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 265
    :cond_c
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 349
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1f

    .line 350
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 351
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 352
    .local v0, "i":I
    :goto_9
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1f

    .line 353
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 354
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 355
    const/4 v3, 0x1

    return v3

    .line 352
    :cond_1a
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_9

    .line 359
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1f
    const/4 v3, 0x0

    return v3
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_c

    .line 274
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 275
    :cond_c
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 375
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_23

    .line 376
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 377
    .local v1, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    and-int v0, v3, v1

    .line 378
    .local v0, "i":I
    :goto_d
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_23

    .line 379
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 380
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 381
    const/4 v3, 0x1

    return v3

    .line 378
    :cond_1e
    add-int/lit8 v3, v0, -0x1

    and-int v0, v3, v1

    goto :goto_d

    .line 385
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_23
    const/4 v3, 0x0

    return v3
.end method

.method public size()I
    .registers 3

    .prologue
    .line 567
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v1, -0x1

    .line 911
    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    invoke-direct {v0, p0, v1, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 9

    .prologue
    .line 766
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 767
    .local v2, "head":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    .line 768
    .local v3, "tail":I
    if-ge v3, v2, :cond_21

    const/4 v4, 0x1

    .line 769
    .local v4, "wrap":Z
    :goto_7
    if-eqz v4, :cond_23

    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v5, v5

    add-int v1, v3, v5

    .line 770
    .local v1, "end":I
    :goto_e
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 771
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v4, :cond_20

    .line 772
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, v2

    const/4 v7, 0x0

    invoke-static {v5, v7, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    :cond_20
    return-object v0

    .line 768
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v4    # "wrap":Z
    :cond_21
    const/4 v4, 0x0

    .restart local v4    # "wrap":Z
    goto :goto_7

    .line 769
    :cond_23
    move v1, v3

    .restart local v1    # "end":I
    goto :goto_e
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    .line 814
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 815
    .local v1, "head":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    .line 816
    .local v4, "tail":I
    if-ge v4, v1, :cond_2d

    const/4 v5, 0x1

    .line 817
    .local v5, "wrap":Z
    :goto_8
    sub-int v8, v4, v1

    if-eqz v5, :cond_2f

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    :goto_f
    add-int v3, v8, v6

    .line 818
    .local v3, "size":I
    if-eqz v5, :cond_31

    move v6, v4

    :goto_14
    sub-int v0, v3, v6

    .line 819
    .local v0, "firstLeg":I
    array-length v2, p1

    .line 820
    .local v2, "len":I
    if-le v3, v2, :cond_33

    .line 821
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    add-int v8, v1, v3

    .line 822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 821
    invoke-static {v6, v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 828
    :cond_25
    :goto_25
    if-eqz v5, :cond_2c

    .line 829
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v7, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    :cond_2c
    return-object p1

    .line 816
    .end local v0    # "firstLeg":I
    .end local v2    # "len":I
    .end local v3    # "size":I
    .end local v5    # "wrap":Z
    :cond_2d
    const/4 v5, 0x0

    .restart local v5    # "wrap":Z
    goto :goto_8

    :cond_2f
    move v6, v7

    .line 817
    goto :goto_f

    .restart local v3    # "size":I
    :cond_31
    move v6, v7

    .line 818
    goto :goto_14

    .line 824
    .restart local v0    # "firstLeg":I
    .restart local v2    # "len":I
    :cond_33
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v1, p1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    if-ge v3, v2, :cond_25

    .line 826
    const/4 v6, 0x0

    aput-object v6, p1, v3

    goto :goto_25
.end method
