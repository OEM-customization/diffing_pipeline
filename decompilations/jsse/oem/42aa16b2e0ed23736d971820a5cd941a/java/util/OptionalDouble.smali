.class public final Ljava/util/OptionalDouble;
.super Ljava/lang/Object;
.source "OptionalDouble.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalDouble;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0}, Ljava/util/OptionalDouble;-><init>()V

    sput-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

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

.method private constructor greylist-max-o <init>(D)V
    .registers 4
    .param p1, "value"    # D

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

.method public static whitelist core-platform-api test-api empty()Ljava/util/OptionalDouble;
    .registers 1

    .line 80
    sget-object v0, Ljava/util/OptionalDouble;->EMPTY:Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(D)Ljava/util/OptionalDouble;
    .registers 3
    .param p0, "value"    # D

    .line 100
    new-instance v0, Ljava/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 205
    return v0

    .line 208
    :cond_4
    instance-of v1, p1, Ljava/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 209
    return v2

    .line 212
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalDouble;

    .line 213
    .local v1, "other":Ljava/util/OptionalDouble;
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v1, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v3, :cond_22

    .line 214
    iget-wide v3, p0, Ljava/util/OptionalDouble;->value:D

    iget-wide v5, v1, Ljava/util/OptionalDouble;->value:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_20

    goto :goto_2a

    :cond_20
    move v0, v2

    goto :goto_2a

    .line 215
    :cond_22
    iget-boolean v3, p0, Ljava/util/OptionalDouble;->isPresent:Z

    iget-boolean v4, v1, Ljava/util/OptionalDouble;->isPresent:Z

    if-ne v3, v4, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 213
    :goto_2a
    return v0
.end method

.method public whitelist core-platform-api test-api getAsDouble()D
    .registers 3

    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    .line 116
    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    return-wide v0

    .line 114
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 226
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api ifPresent(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

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

.method public whitelist core-platform-api test-api isPresent()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    return v0
.end method

.method public whitelist core-platform-api test-api orElse(D)D
    .registers 5
    .param p1, "other"    # D

    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public whitelist core-platform-api test-api orElseGet(Ljava/util/function/DoubleSupplier;)D
    .registers 4
    .param p1, "other"    # Ljava/util/function/DoubleSupplier;

    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalDouble;->value:D

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public whitelist core-platform-api test-api orElseThrow(Ljava/util/function/Supplier;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TX;>;)D^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalDouble;->isPresent:Z

    if-eqz v0, :cond_17

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Ljava/util/OptionalDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OptionalDouble[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 246
    :cond_17
    const-string v0, "OptionalDouble.empty"

    .line 244
    :goto_19
    return-object v0
.end method
