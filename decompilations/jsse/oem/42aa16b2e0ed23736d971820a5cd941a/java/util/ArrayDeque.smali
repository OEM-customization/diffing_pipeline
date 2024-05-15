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
        Ljava/util/ArrayDeque$DeqSpliterator;,
        Ljava/util/ArrayDeque$DescendingIterator;,
        Ljava/util/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o MIN_INITIAL_CAPACITY:I = 0x8

.field private static final whitelist serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient greylist elements:[Ljava/lang/Object;

.field transient greylist head:I

.field transient greylist tail:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 87
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 177
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 178
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 2
    .param p1, "numElements"    # I

    .line 187
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 188
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 189
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 203
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 204
    return-void
.end method

.method private greylist-max-o allocateElements(I)V
    .registers 4
    .param p1, "numElements"    # I

    .line 129
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 132
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_1a

    .line 133
    move v0, p1

    .line 134
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

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
    if-gez v0, :cond_1a

    .line 142
    ushr-int/lit8 v0, v0, 0x1

    .line 144
    :cond_1a
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private greylist-max-o checkInvariants()V
    .registers 1

    .line 509
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    nop

    .line 510
    nop

    .line 513
    nop

    .line 514
    return-void
.end method

.method private greylist-max-o doubleCapacity()V
    .registers 9

    .line 152
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    nop

    .line 153
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 154
    .local v0, "p":I
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    .line 155
    .local v2, "n":I
    sub-int v3, v2, v0

    .line 156
    .local v3, "r":I
    shl-int/lit8 v4, v2, 0x1

    .line 157
    .local v4, "newCapacity":I
    if-ltz v4, :cond_24

    .line 159
    new-array v5, v4, [Ljava/lang/Object;

    .line 160
    .local v5, "a":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v1, v0, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v1, v6, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iput-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 169
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    .line 170
    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    .line 171
    return-void

    .line 158
    .end local v5    # "a":[Ljava/lang/Object;
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Sorry, deque too big"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 890
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 893
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 894
    .local v0, "size":I
    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 895
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 896
    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1d

    .line 900
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 901
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 873
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 876
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 877
    .local v0, "mask":I
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    :goto_11
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v1, v2, :cond_21

    .line 878
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 877
    add-int/lit8 v2, v1, 0x1

    and-int v1, v2, v0

    goto :goto_11

    .line 879
    .end local v1    # "i":I
    :cond_21
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 406
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api addFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_18

    .line 219
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 220
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v1, v0, :cond_17

    .line 221
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 222
    :cond_17
    return-void

    .line 218
    :cond_18
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_18

    .line 235
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_17

    .line 237
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 238
    :cond_17
    return-void

    .line 234
    :cond_18
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 7

    .line 745
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 746
    .local v0, "h":I
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 747
    .local v1, "t":I
    if-eq v0, v1, :cond_1c

    .line 748
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 749
    move v2, v0

    .line 750
    .local v2, "i":I
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 752
    .local v3, "mask":I
    :cond_11
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 753
    add-int/lit8 v4, v2, 0x1

    and-int v2, v4, v3

    .line 754
    if-ne v2, v1, :cond_11

    .line 756
    .end local v2    # "i":I
    .end local v3    # "mask":I
    :cond_1c
    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api clone()Ljava/util/ArrayDeque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 849
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    .line 850
    .local v0, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 851
    return-object v0

    .line 852
    .end local v0    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_12
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 712
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1c

    .line 713
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 714
    .local v0, "mask":I
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 715
    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;
    if-eqz v3, :cond_1c

    .line 716
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 717
    return v1

    .line 715
    :cond_17
    add-int/lit8 v3, v2, 0x1

    and-int v2, v3, v0

    goto :goto_9

    .line 720
    .end local v0    # "mask":I
    .end local v2    # "i":I
    .end local v4    # "x":Ljava/lang/Object;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o delete(I)Z
    .registers 12
    .param p1, "i"    # I

    .line 527
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    .line 528
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 529
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 530
    .local v1, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 531
    .local v3, "h":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    .line 532
    .local v4, "t":I
    sub-int v5, p1, v3

    and-int/2addr v5, v1

    .line 533
    .local v5, "front":I
    sub-int v6, v4, p1

    and-int/2addr v6, v1

    .line 536
    .local v6, "back":I
    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_59

    .line 540
    const/4 v7, 0x0

    if-ge v5, v6, :cond_39

    .line 541
    if-gt v3, p1, :cond_22

    .line 542
    add-int/lit8 v2, v3, 0x1

    invoke-static {v0, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 544
    :cond_22
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    aget-object v2, v0, v1

    aput-object v2, v0, v7

    .line 546
    add-int/lit8 v2, v3, 0x1

    sub-int v8, v1, v3

    invoke-static {v0, v3, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    :goto_30
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 549
    add-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v1

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 550
    return v7

    .line 552
    :cond_39
    if-ge p1, v4, :cond_45

    .line 553
    add-int/lit8 v7, p1, 0x1

    invoke-static {v0, v7, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_58

    .line 556
    :cond_45
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    invoke-static {v0, v8, v0, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    aget-object v8, v0, v7

    aput-object v8, v0, v1

    .line 558
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    add-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v1

    iput v7, p0, Ljava/util/ArrayDeque;->tail:I

    .line 561
    :goto_58
    return v2

    .line 537
    :cond_59
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public whitelist core-platform-api test-api descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 463
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    .line 315
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_9

    .line 317
    return-object v0

    .line 316
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 325
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 326
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_f

    .line 328
    return-object v0

    .line 327
    :cond_f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 3

    .line 582
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 594
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 420
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 248
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 476
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api peekLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 339
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 449
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api pollFirst()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 285
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 286
    .local v0, "elements":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 288
    .local v1, "h":I
    aget-object v2, v0, v1

    .line 290
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_13

    .line 291
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 292
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 294
    :cond_13
    return-object v2
.end method

.method public whitelist core-platform-api test-api pollLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 298
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 299
    .local v0, "elements":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    .line 301
    .local v1, "t":I
    aget-object v2, v0, v1

    .line 302
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_13

    .line 303
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 304
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 306
    :cond_13
    return-object v2
.end method

.method public whitelist core-platform-api test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 505
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 491
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public whitelist core-platform-api test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 435
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 737
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 268
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 271
    return-object v0

    .line 270
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 355
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1f

    .line 356
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 357
    .local v0, "mask":I
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 358
    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;
    if-eqz v3, :cond_1f

    .line 359
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 360
    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 361
    return v1

    .line 358
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    and-int v2, v3, v0

    goto :goto_9

    .line 365
    .end local v0    # "mask":I
    .end local v2    # "i":I
    .end local v4    # "x":Ljava/lang/Object;
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 278
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 281
    return-object v0

    .line 280
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 381
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_21

    .line 382
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 383
    .local v0, "mask":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    sub-int/2addr v2, v1

    and-int/2addr v2, v0

    .line 384
    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;
    if-eqz v3, :cond_21

    .line 385
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 386
    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 387
    return v1

    .line 384
    :cond_1c
    add-int/lit8 v3, v2, -0x1

    and-int v2, v3, v0

    goto :goto_b

    .line 391
    .end local v0    # "mask":I
    .end local v2    # "i":I
    .end local v4    # "x":Ljava/lang/Object;
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 3

    .line 573
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

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 917
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
    .registers 9

    .line 772
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 773
    .local v0, "head":I
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 774
    .local v1, "tail":I
    const/4 v2, 0x0

    if-ge v1, v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    move v3, v2

    .line 775
    .local v3, "wrap":Z
    :goto_a
    if-eqz v3, :cond_11

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/2addr v4, v1

    goto :goto_12

    :cond_11
    move v4, v1

    .line 776
    .local v4, "end":I
    :goto_12
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    .line 777
    .local v5, "a":[Ljava/lang/Object;
    if-eqz v3, :cond_21

    .line 778
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v7, v6

    sub-int/2addr v7, v0

    invoke-static {v6, v2, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    :cond_21
    return-object v5
.end method

.method public whitelist core-platform-api test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 820
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 821
    .local v0, "head":I
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 822
    .local v1, "tail":I
    const/4 v2, 0x0

    if-ge v1, v0, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    move v3, v2

    .line 823
    .local v3, "wrap":Z
    :goto_a
    sub-int v4, v1, v0

    if-eqz v3, :cond_12

    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v5, v5

    goto :goto_13

    :cond_12
    move v5, v2

    :goto_13
    add-int/2addr v4, v5

    .line 824
    .local v4, "size":I
    if-eqz v3, :cond_18

    move v5, v1

    goto :goto_19

    :cond_18
    move v5, v2

    :goto_19
    sub-int v5, v4, v5

    .line 825
    .local v5, "firstLeg":I
    array-length v6, p1

    .line 826
    .local v6, "len":I
    if-le v4, v6, :cond_2b

    .line 827
    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    add-int v8, v0, v4

    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 827
    invoke-static {v7, v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_35

    .line 830
    :cond_2b
    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v7, v0, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    if-ge v4, v6, :cond_35

    .line 832
    const/4 v7, 0x0

    aput-object v7, p1, v4

    .line 834
    :cond_35
    :goto_35
    if-eqz v3, :cond_3c

    .line 835
    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v7, v2, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    :cond_3c
    return-object p1
.end method
