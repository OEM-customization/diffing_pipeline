.class public final Ljava/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalLong;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0}, Ljava/util/OptionalLong;-><init>()V

    sput-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

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

.method private constructor greylist-max-o <init>(J)V
    .registers 4
    .param p1, "value"    # J

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

.method public static whitelist core-platform-api test-api empty()Ljava/util/OptionalLong;
    .registers 1

    .line 80
    sget-object v0, Ljava/util/OptionalLong;->EMPTY:Ljava/util/OptionalLong;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(J)Ljava/util/OptionalLong;
    .registers 3
    .param p0, "value"    # J

    .line 100
    new-instance v0, Ljava/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava/util/OptionalLong;-><init>(J)V

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
    instance-of v1, p1, Ljava/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 209
    return v2

    .line 212
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalLong;

    .line 213
    .local v1, "other":Ljava/util/OptionalLong;
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_20

    .line 214
    iget-wide v3, p0, Ljava/util/OptionalLong;->value:J

    iget-wide v5, v1, Ljava/util/OptionalLong;->value:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    goto :goto_28

    :cond_1e
    move v0, v2

    goto :goto_28

    .line 215
    :cond_20
    iget-boolean v3, p0, Ljava/util/OptionalLong;->isPresent:Z

    iget-boolean v4, v1, Ljava/util/OptionalLong;->isPresent:Z

    if-ne v3, v4, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    .line 213
    :goto_28
    return v0
.end method

.method public whitelist core-platform-api test-api getAsLong()J
    .registers 3

    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    .line 116
    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

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
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api ifPresent(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

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

.method public whitelist core-platform-api test-api isPresent()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public whitelist core-platform-api test-api orElse(J)J
    .registers 5
    .param p1, "other"    # J

    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    goto :goto_8

    :cond_7
    move-wide v0, p1

    :goto_8
    return-wide v0
.end method

.method public whitelist core-platform-api test-api orElseGet(Ljava/util/function/LongSupplier;)J
    .registers 4
    .param p1, "other"    # Ljava/util/function/LongSupplier;

    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ljava/util/OptionalLong;->value:J

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public whitelist core-platform-api test-api orElseThrow(Ljava/util/function/Supplier;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_17

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Ljava/util/OptionalLong;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OptionalLong[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 246
    :cond_17
    const-string v0, "OptionalLong.empty"

    .line 244
    :goto_19
    return-object v0
.end method
