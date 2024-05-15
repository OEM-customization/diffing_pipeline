.class public Ljava/util/concurrent/atomic/DoubleAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 82
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
    .line 263
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 254
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/DoubleAdder;)V

    return-object v0
.end method


# virtual methods
.method public add(D)V
    .registers 14
    .param p1, "x"    # D

    .prologue
    const/4 v10, 0x0

    .line 91
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_18

    .line 92
    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    .line 94
    .local v2, "b":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v8, p1

    .line 93
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    .line 92
    invoke-virtual {p0, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/DoubleAdder;->casBase(JJ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 91
    if-eqz v8, :cond_23

    .line 95
    .end local v2    # "b":J
    :cond_18
    const/4 v5, 0x1

    .line 96
    .local v5, "uncontended":Z
    if-eqz v1, :cond_20

    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .local v4, "m":I
    if-gez v4, :cond_24

    .line 101
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_20
    :goto_20
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/DoubleAdder;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    .line 103
    :cond_23
    return-void

    .line 97
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_24
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAdder;->getProbe()I

    move-result v8

    and-int/2addr v8, v4

    aget-object v0, v1, v8

    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_20

    .line 98
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 100
    .local v6, "v":J
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v8, p1

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    .line 98
    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v5

    .local v5, "uncontended":Z
    xor-int/lit8 v8, v5, 0x1

    .line 96
    if-eqz v8, :cond_23

    goto :goto_20
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 136
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 137
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    .line 138
    if-eqz v1, :cond_16

    .line 139
    const/4 v2, 0x0

    array-length v3, v1

    :goto_a
    if-ge v2, v3, :cond_16

    aget-object v0, v1, v2

    .line 140
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_13

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 139
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 143
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_16
    return-void
.end method

.method public sum()D
    .registers 9

    .prologue
    .line 118
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 119
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 120
    .local v2, "sum":D
    if-eqz v1, :cond_1c

    .line 121
    const/4 v4, 0x0

    array-length v5, v1

    :goto_c
    if-ge v4, v5, :cond_1c

    aget-object v0, v1, v4

    .line 122
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_19

    .line 123
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 121
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 125
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1c
    return-wide v2
.end method

.method public sumThenReset()D
    .registers 11

    .prologue
    .line 156
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 157
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 158
    .local v2, "sum":D
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    .line 159
    if-eqz v1, :cond_23

    .line 160
    const/4 v6, 0x0

    array-length v7, v1

    :goto_10
    if-ge v6, v7, :cond_23

    aget-object v0, v1, v6

    .line 161
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_20

    .line 162
    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 163
    .local v4, "v":J
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 160
    .end local v4    # "v":J
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 168
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_23
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
