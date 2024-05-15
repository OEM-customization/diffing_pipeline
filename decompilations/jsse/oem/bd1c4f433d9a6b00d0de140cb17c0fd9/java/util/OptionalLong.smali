.class public final Ljava/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0}, Ljava/util/OptionalLong;-><init>()V

    sput-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

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

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/OptionalLong;->value:J

    .line 66
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    .line 90
    iput-wide p1, p0, Ljava/util/OptionalLong;->value:J

    .line 91
    return-void
.end method

.method public static empty()Ljava/util/OptionalLong;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Ljava/util/OptionalLong;
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 100
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalLong;-><init>(J)V

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
    instance-of v3, p1, Ljava/util/OptionalLong;

    if-nez v3, :cond_a

    .line 209
    return v2

    :cond_a
    move-object v0, p1

    .line 212
    check-cast v0, Ljava/util/OptionalLong;

    .line 213
    .local v0, "other":Ljava/util/OptionalLong;
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    .line 214
    iget-wide v4, p0, Ljava/util/OptionalLong;->value:J

    iget-wide v6, v0, Ljava/util/OptionalLong;->value:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    .line 213
    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    .line 214
    goto :goto_1d

    .line 215
    :cond_20
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalLong;->isPresent:Z

    if-eq v3, v4, :cond_1d

    move v1, v2

    goto :goto_1d
.end method

.method public getAsLong()J
    .registers 3

    .prologue
    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-nez v0, :cond_d

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_d
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 226
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public ifPresent(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 137
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_9

    .line 138
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 139
    :cond_9
    return-void
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .registers 4
    .param p1, "other"    # J

    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_6

    iget-wide p1, p0, Ljava/util/OptionalLong;->value:J

    .end local p1    # "other":J
    :cond_6
    return-wide p1
.end method

.method public orElseGet(Ljava/util/function/LongSupplier;)J
    .registers 4
    .param p1, "other"    # Ljava/util/function/LongSupplier;

    .prologue
    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    :goto_6
    return-wide v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    goto :goto_6
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)J^TX;"
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
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 183
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

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
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_18

    .line 245
    const-string/jumbo v0, "OptionalLong[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    const-string/jumbo v0, "OptionalLong.empty"

    goto :goto_17
.end method
