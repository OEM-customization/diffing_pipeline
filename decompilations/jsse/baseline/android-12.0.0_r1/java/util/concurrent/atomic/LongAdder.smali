.class public Ljava/util/concurrent/atomic/LongAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 78
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/LongAdder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(J)V
    .registers 14
    .param p1, "x"    # J

    .line 87
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v1, v0

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_10

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    move-wide v4, v2

    .local v4, "b":J
    add-long v6, v4, p1

    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_33

    .line 88
    .end local v4    # "b":J
    :cond_10
    const/4 v0, 0x1

    .line 89
    .local v0, "uncontended":Z
    if-eqz v1, :cond_2f

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .local v3, "m":I
    if-ltz v2, :cond_2f

    .line 90
    invoke-static {}, Ljava/util/concurrent/atomic/LongAdder;->getProbe()I

    move-result v2

    and-int/2addr v2, v3

    aget-object v2, v1, v2

    move-object v4, v2

    .local v4, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v2, :cond_2f

    iget-wide v5, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v7, v5

    .local v7, "v":J
    add-long v9, v7, p1

    .line 91
    invoke-virtual {v4, v5, v6, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_33

    .line 92
    .end local v3    # "m":I
    .end local v4    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v7    # "v":J
    :cond_2f
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v0}, Ljava/util/concurrent/atomic/LongAdder;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    .line 94
    .end local v0    # "uncontended":Z
    :cond_33
    return-void
.end method

.method public whitelist test-api decrement()V
    .registers 3

    .line 107
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 108
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 210
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 202
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api increment()V
    .registers 3

    .line 100
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 101
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 186
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 5

    .line 138
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 139
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 140
    if-eqz v0, :cond_16

    .line 141
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 142
    .local v3, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_13

    .line 143
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 141
    .end local v3    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 145
    :cond_16
    return-void
.end method

.method public whitelist test-api sum()J
    .registers 9

    .line 120
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 121
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 122
    .local v1, "sum":J
    if-eqz v0, :cond_14

    .line 123
    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    aget-object v5, v0, v4

    .line 124
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_11

    .line 125
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    add-long/2addr v1, v6

    .line 123
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 127
    :cond_14
    return-wide v1
.end method

.method public whitelist test-api sumThenReset()J
    .registers 9

    .line 158
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 159
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 160
    .local v1, "sum":J
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 161
    if-eqz v0, :cond_1b

    .line 162
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1b

    aget-object v5, v0, v4

    .line 163
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_18

    .line 164
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    add-long/2addr v1, v6

    .line 165
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 162
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 169
    :cond_1b
    return-wide v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 177
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
