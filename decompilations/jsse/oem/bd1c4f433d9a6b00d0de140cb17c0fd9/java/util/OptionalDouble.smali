.class public final Ljava/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalDouble;


# instance fields
.field private final isPresent:Z

.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0}, Ljava/util/OptionalDouble;-><init>()V

    sput-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    .line 65
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    .line 66
    return-void
.end method

.method private constructor <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    .line 90
    iput-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    .line 91
    return-void
.end method

.method public static empty()Ljava/util/OptionalDouble;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public static of(D)Ljava/util/OptionalDouble;
    .registers 4
    .param p0, "value"    # D

    .prologue
    .line 100
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p0, p1, :cond_5

    .line 205
    return v1

    .line 208
    :cond_5
    instance-of v3, p1, Ljava/util/OptionalDouble;

    if-nez v3, :cond_a

    .line 209
    return v2

    :cond_a
    move-object v0, p1

    .line 212
    check-cast v0, Ljava/util/OptionalDouble;

    .line 213
    .local v0, "other":Ljava/util/OptionalDouble;
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    .line 214
    iget-wide v4, p0, Ljava/util/OptionalDouble;->value:D

    iget-wide v6, v0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_20

    .line 213
    :cond_1f
    :goto_1f
    return v1

    :cond_20
    move v1, v2

    .line 214
    goto :goto_1f

    .line 215
    :cond_22
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eq v3, v4, :cond_1f

    move v1, v2

    goto :goto_1f
.end method

.method public getAsDouble()D
    .registers 3

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-nez v0, :cond_d

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_d
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 226
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public ifPresent(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 137
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_9

    .line 138
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 139
    :cond_9
    return-void
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public orElse(D)D
    .registers 4
    .param p1, "other"    # D

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_6

    iget-wide p1, p0, Ljava/util/OptionalDouble;->value:D

    .end local p1    # "other":D
    :cond_6
    return-wide p1
.end method

.method public orElseGet(Ljava/util/function/DoubleSupplier;)D
    .registers 4
    .param p1, "other"    # Ljava/util/function/DoubleSupplier;

    .prologue
    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    :goto_6
    return-wide v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    goto :goto_6
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 183
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    .line 185
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_18

    .line 245
    const-string/jumbo v0, "OptionalDouble[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_17
    return-object v0

    .line 246
    :cond_18
    const-string/jumbo v0, "OptionalDouble.empty"

    goto :goto_17
.end method
