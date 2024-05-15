.class public Ljava/util/concurrent/atomic/DoubleAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/DoubleBinaryOperator;

.field private final greylist-max-o identity:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .registers 6
    .param p1, "accumulatorFunction"    # Ljava/util/function/DoubleBinaryOperator;
    .param p2, "identity"    # D

    .line 92
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 93
    iput-object p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 95
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

    .line 296
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 287
    new-instance v6, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;-><init>(DLjava/util/function/DoubleBinaryOperator;J)V

    return-object v6
.end method


# virtual methods
.method public whitelist test-api accumulate(D)V
    .registers 15
    .param p1, "x"    # D

    .line 104
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v1, v0

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_21

    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    move-wide v4, v2

    .line 107
    .local v4, "b":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    move-wide v6, v2

    .local v6, "r":J
    cmp-long v0, v2, v4

    if-eqz v0, :cond_5c

    .line 107
    invoke-virtual {p0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/DoubleAccumulator;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 108
    .end local v4    # "b":J
    .end local v6    # "r":J
    :cond_21
    const/4 v0, 0x1

    .line 109
    .local v0, "uncontended":Z
    if-eqz v1, :cond_57

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    .local v4, "m":I
    if-ltz v2, :cond_57

    .line 110
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getProbe()I

    move-result v2

    and-int/2addr v2, v4

    aget-object v2, v1, v2

    move-object v5, v2

    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v2, :cond_57

    iget-object v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v8, v6

    .line 114
    .local v8, "v":J
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-interface {v2, v6, v7, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v6

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-wide v10, v6

    .local v10, "r":J
    cmp-long v2, v6, v8

    if-eqz v2, :cond_53

    .line 115
    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    const/4 v3, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    nop

    :goto_54
    move v0, v3

    if-nez v3, :cond_5c

    .line 116
    .end local v4    # "m":I
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v8    # "v":J
    .end local v10    # "r":J
    :cond_57
    iget-object v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-virtual {p0, p1, p2, v2, v0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    .line 118
    .end local v0    # "uncontended":Z
    :cond_5c
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 199
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 223
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist test-api get()D
    .registers 10

    .line 130
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 131
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 132
    .local v1, "result":D
    if-eqz v0, :cond_21

    .line 133
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_21

    aget-object v5, v0, v4

    .line 134
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_1e

    .line 135
    iget-object v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v7, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 136
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-interface {v6, v1, v2, v7, v8}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    .line 133
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 138
    :cond_21
    return-wide v1
.end method

.method public whitelist test-api getThenReset()D
    .registers 11

    .line 170
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 171
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 172
    .local v1, "result":D
    iget-wide v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 173
    if-eqz v0, :cond_2a

    .line 174
    array-length v3, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_2a

    aget-object v5, v0, v4

    .line 175
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_27

    .line 176
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 177
    .local v6, "v":D
    iget-wide v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 178
    iget-object v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-interface {v8, v1, v2, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    .line 174
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v6    # "v":D
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 182
    :cond_2a
    return-wide v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 215
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 207
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 7

    .line 150
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 151
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 152
    if-eqz v0, :cond_18

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 154
    .local v3, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_15

    .line 155
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 153
    .end local v3    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 157
    :cond_18
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
