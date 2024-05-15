.class public Ljava/util/concurrent/atomic/LongAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/LongBinaryOperator;

.field private final greylist-max-o identity:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/function/LongBinaryOperator;J)V
    .registers 4
    .param p1, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .param p2, "identity"    # J

    .line 94
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 95
    iput-object p1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    .line 96
    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 97
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

    .line 290
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 281
    new-instance v6, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;-><init>(JLjava/util/function/LongBinaryOperator;J)V

    return-object v6
.end method


# virtual methods
.method public whitelist test-api accumulate(J)V
    .registers 15
    .param p1, "x"    # J

    .line 106
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v1, v0

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_19

    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    move-wide v4, v2

    .line 107
    .local v4, "b":J
    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    move-wide v6, v2

    .local v6, "r":J
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    invoke-virtual {p0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/LongAccumulator;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 108
    .end local v4    # "b":J
    .end local v6    # "r":J
    :cond_19
    const/4 v0, 0x1

    .line 109
    .local v0, "uncontended":Z
    if-eqz v1, :cond_47

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    .local v4, "m":I
    if-ltz v2, :cond_47

    .line 110
    invoke-static {}, Ljava/util/concurrent/atomic/LongAccumulator;->getProbe()I

    move-result v2

    and-int/2addr v2, v4

    aget-object v2, v1, v2

    move-object v5, v2

    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v2, :cond_47

    iget-object v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v8, v6

    .line 112
    .local v8, "v":J
    invoke-interface {v2, v6, v7, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    move-wide v10, v6

    .local v10, "r":J
    cmp-long v2, v6, v8

    if-eqz v2, :cond_43

    .line 113
    invoke-virtual {v5, v8, v9, v10, v11}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_43

    :cond_41
    const/4 v3, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    nop

    :goto_44
    move v0, v3

    if-nez v3, :cond_4c

    .line 114
    .end local v4    # "m":I
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v8    # "v":J
    .end local v10    # "r":J
    :cond_47
    iget-object v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-virtual {p0, p1, p2, v2, v0}, Ljava/util/concurrent/atomic/LongAccumulator;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    .line 116
    .end local v0    # "uncontended":Z
    :cond_4c
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 212
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api get()J
    .registers 10

    .line 128
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 129
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 130
    .local v1, "result":J
    if-eqz v0, :cond_19

    .line 131
    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_19

    aget-object v5, v0, v4

    .line 132
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_16

    .line 133
    iget-object v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v7, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-interface {v6, v1, v2, v7, v8}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    .line 131
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 135
    :cond_19
    return-wide v1
.end method

.method public whitelist test-api getThenReset()J
    .registers 11

    .line 167
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 168
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 169
    .local v1, "result":J
    iget-wide v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 170
    if-eqz v0, :cond_22

    .line 171
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_22

    aget-object v5, v0, v4

    .line 172
    .local v5, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_1f

    .line 173
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 174
    .local v6, "v":J
    iget-wide v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 175
    iget-object v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-interface {v8, v1, v2, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    .line 171
    .end local v5    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v6    # "v":J
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 179
    :cond_22
    return-wide v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 204
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 196
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 7

    .line 147
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 148
    .local v0, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 149
    if-eqz v0, :cond_18

    .line 150
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 151
    .local v3, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_15

    .line 152
    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 150
    .end local v3    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 154
    :cond_18
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 187
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
