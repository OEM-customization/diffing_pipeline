.class public final Ljava/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final greylist-max-o EMPTY:Ljava/util/OptionalInt;


# instance fields
.field private final greylist-max-o isPresent:Z

.field private final greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 65
    iput v0, p0, Ljava/util/OptionalInt;->value:I

    .line 66
    return-void
.end method

.method private constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 90
    iput p1, p0, Ljava/util/OptionalInt;->value:I

    .line 91
    return-void
.end method

.method public static whitelist core-platform-api test-api empty()Ljava/util/OptionalInt;
    .registers 1

    .line 80
    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(I)Ljava/util/OptionalInt;
    .registers 2
    .param p0, "value"    # I

    .line 100
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 205
    return v0

    .line 208
    :cond_4
    instance-of v1, p1, Ljava/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 209
    return v2

    .line 212
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/OptionalInt;

    .line 213
    .local v1, "other":Ljava/util/OptionalInt;
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v1, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    .line 214
    iget v3, p0, Ljava/util/OptionalInt;->value:I

    iget v4, v1, Ljava/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_1c

    goto :goto_26

    :cond_1c
    move v0, v2

    goto :goto_26

    .line 215
    :cond_1e
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v1, Ljava/util/OptionalInt;->isPresent:Z

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    .line 213
    :goto_26
    return v0
.end method

.method public whitelist core-platform-api test-api getAsInt()I
    .registers 3

    .line 113
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 116
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 114
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 226
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist core-platform-api test-api ifPresent(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 137
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_9

    .line 138
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 139
    :cond_9
    return-void
.end method

.method public whitelist core-platform-api test-api isPresent()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public whitelist core-platform-api test-api orElse(I)I
    .registers 3
    .param p1, "other"    # I

    .line 148
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method

.method public whitelist core-platform-api test-api orElseGet(Ljava/util/function/IntSupplier;)I
    .registers 3
    .param p1, "other"    # Ljava/util/function/IntSupplier;

    .line 162
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api orElseThrow(Ljava/util/function/Supplier;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 182
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 183
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 185
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 244
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_17

    .line 245
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OptionalInt[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 246
    :cond_17
    const-string v0, "OptionalInt.empty"

    .line 244
    :goto_19
    return-object v0
.end method
