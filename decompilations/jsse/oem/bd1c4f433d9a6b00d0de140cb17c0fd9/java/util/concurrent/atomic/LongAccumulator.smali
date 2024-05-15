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
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/LongBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/LongBinaryOperator;J)V
    .registers 4
    .param p1, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .param p2, "identity"    # J

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 95
    iput-object p1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    .line 96
    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 97
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;-><init>(JLjava/util/function/LongBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public accumulate(J)V
    .registers 14
    .param p1, "x"    # J

    .prologue
    .line 106
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_18

    .line 107
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .local v2, "b":J
    invoke-interface {v10, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    .local v6, "r":J
    cmp-long v10, v6, v2

    if-eqz v10, :cond_25

    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/LongAccumulator;->casBase(JJ)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 106
    if-eqz v10, :cond_25

    .line 108
    .end local v2    # "b":J
    .end local v6    # "r":J
    :cond_18
    const/4 v5, 0x1

    .line 109
    .local v5, "uncontended":Z
    if-eqz v1, :cond_20

    array-length v10, v1

    add-int/lit8 v4, v10, -0x1

    .local v4, "m":I
    if-gez v4, :cond_26

    .line 114
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_20
    :goto_20
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/LongAccumulator;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    .line 116
    :cond_25
    return-void

    .line 110
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_26
    invoke-static {}, Ljava/util/concurrent/atomic/LongAccumulator;->getProbe()I

    move-result v10

    and-int/2addr v10, v4

    aget-object v0, v1, v10

    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_20

    .line 112
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .local v8, "v":J
    invoke-interface {v10, v8, v9, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    .restart local v6    # "r":J
    cmp-long v10, v6, v8

    if-eqz v10, :cond_44

    .line 113
    invoke-virtual {v0, v8, v9, v6, v7}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v5

    .line 111
    .local v5, "uncontended":Z
    :goto_3f
    xor-int/lit8 v10, v5, 0x1

    .line 109
    if-eqz v10, :cond_25

    goto :goto_20

    .line 112
    .local v5, "uncontended":Z
    :cond_44
    const/4 v5, 0x1

    goto :goto_3f
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public get()J
    .registers 11

    .prologue
    .line 128
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 129
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 130
    .local v2, "result":J
    if-eqz v1, :cond_19

    .line 131
    const/4 v4, 0x0

    array-length v5, v1

    :goto_8
    if-ge v4, v5, :cond_19

    aget-object v0, v1, v4

    .line 132
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_16

    .line 133
    iget-object v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 131
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 135
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_19
    return-wide v2
.end method

.method public getThenReset()J
    .registers 11

    .prologue
    .line 167
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 168
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 169
    .local v2, "result":J
    iget-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 170
    if-eqz v1, :cond_22

    .line 171
    const/4 v6, 0x0

    array-length v7, v1

    :goto_c
    if-ge v6, v7, :cond_22

    aget-object v0, v1, v6

    .line 172
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_1f

    .line 173
    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 174
    .local v4, "v":J
    iget-wide v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 175
    iget-object v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    .line 171
    .end local v4    # "v":J
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 179
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_22
    return-wide v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 147
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 148
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 149
    if-eqz v1, :cond_18

    .line 150
    const/4 v2, 0x0

    array-length v3, v1

    :goto_a
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 151
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_15

    .line 152
    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 150
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 154
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
