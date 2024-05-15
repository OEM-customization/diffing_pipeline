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
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/DoubleBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .registers 6
    .param p1, "accumulatorFunction"    # Ljava/util/function/DoubleBinaryOperator;
    .param p2, "identity"    # D

    .prologue
    .line 91
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;-><init>(DLjava/util/function/DoubleBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public accumulate(D)V
    .registers 22
    .param p1, "x"    # D

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .local v5, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v5, :cond_2c

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 107
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .local v6, "b":J
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 106
    move-wide/from16 v0, v16

    move-wide/from16 v2, p1

    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    .line 105
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .local v10, "r":J
    cmp-long v14, v10, v6

    if-eqz v14, :cond_3f

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/DoubleAccumulator;->casBase(JJ)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    .line 104
    if-eqz v14, :cond_3f

    .line 108
    .end local v6    # "b":J
    .end local v10    # "r":J
    :cond_2c
    const/4 v9, 0x1

    .line 109
    .local v9, "uncontended":Z
    if-eqz v5, :cond_34

    array-length v14, v5

    add-int/lit8 v8, v14, -0x1

    .local v8, "m":I
    if-gez v8, :cond_40

    .line 116
    .end local v8    # "m":I
    .end local v9    # "uncontended":Z
    :cond_34
    :goto_34
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14, v9}, Ljava/util/concurrent/atomic/DoubleAccumulator;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    .line 118
    :cond_3f
    return-void

    .line 110
    .restart local v8    # "m":I
    .restart local v9    # "uncontended":Z
    :cond_40
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getProbe()I

    move-result v14

    and-int/2addr v14, v8

    aget-object v4, v5, v14

    .local v4, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v4, :cond_34

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 114
    iget-wide v12, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .local v12, "v":J
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    .line 113
    move-wide/from16 v0, v16

    move-wide/from16 v2, p1

    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v14

    .line 112
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    .restart local v10    # "r":J
    cmp-long v14, v10, v12

    if-eqz v14, :cond_6c

    .line 115
    invoke-virtual {v4, v12, v13, v10, v11}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v9

    .line 111
    .local v9, "uncontended":Z
    :goto_67
    xor-int/lit8 v14, v9, 0x1

    .line 109
    if-eqz v14, :cond_3f

    goto :goto_34

    .line 112
    .local v9, "uncontended":Z
    :cond_6c
    const/4 v9, 0x1

    goto :goto_67
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public get()D
    .registers 11

    .prologue
    .line 130
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 131
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 132
    .local v2, "result":D
    if-eqz v1, :cond_21

    .line 133
    const/4 v4, 0x0

    array-length v5, v1

    :goto_c
    if-ge v4, v5, :cond_21

    aget-object v0, v1, v4

    .line 134
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_1e

    .line 135
    iget-object v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 136
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 135
    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    .line 133
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 138
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_21
    return-wide v2
.end method

.method public getThenReset()D
    .registers 11

    .prologue
    .line 170
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 171
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 172
    .local v2, "result":D
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 173
    if-eqz v1, :cond_2a

    .line 174
    const/4 v6, 0x0

    array-length v7, v1

    :goto_10
    if-ge v6, v7, :cond_2a

    aget-object v0, v1, v6

    .line 175
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_27

    .line 176
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 177
    .local v4, "v":D
    iget-wide v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 178
    iget-object v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v2

    .line 174
    .end local v4    # "v":D
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 182
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_2a
    return-wide v2
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 150
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 151
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 152
    if-eqz v1, :cond_18

    .line 153
    const/4 v2, 0x0

    array-length v3, v1

    :goto_a
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 154
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_15

    .line 155
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 153
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 157
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
