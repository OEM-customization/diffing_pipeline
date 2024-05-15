.class public final Ljava/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field private static final EMPTY:Ljava/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0}, Ljava/util/OptionalInt;-><init>()V

    sput-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 65
    iput v0, p0, Ljava/util/OptionalInt;->value:I

    .line 66
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    .line 91
    iput p1, p0, Ljava/util/OptionalInt;->value:I

    .line 92
    return-void
.end method

.method public static empty()Ljava/util/OptionalInt;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Ljava/util/OptionalInt;->EMPTY:Ljava/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava/util/OptionalInt;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 101
    new-instance v0, Ljava/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-ne p0, p1, :cond_5

    .line 206
    return v1

    .line 209
    :cond_5
    instance-of v3, p1, Ljava/util/OptionalInt;

    if-nez v3, :cond_a

    .line 210
    return v2

    :cond_a
    move-object v0, p1

    .line 213
    check-cast v0, Ljava/util/OptionalInt;

    .line 214
    .local v0, "other":Ljava/util/OptionalInt;
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v3, :cond_1e

    .line 215
    iget v3, p0, Ljava/util/OptionalInt;->value:I

    iget v4, v0, Ljava/util/OptionalInt;->value:I

    if-ne v3, v4, :cond_1c

    .line 214
    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    .line 215
    goto :goto_1b

    .line 216
    :cond_1e
    iget-boolean v3, p0, Ljava/util/OptionalInt;->isPresent:Z

    iget-boolean v4, v0, Ljava/util/OptionalInt;->isPresent:Z

    if-eq v3, v4, :cond_1b

    move v1, v2

    goto :goto_1b
.end method

.method public getAsInt()I
    .registers 3

    .prologue
    .line 114
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-nez v0, :cond_d

    .line 115
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_d
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public ifPresent(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 138
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_9

    .line 139
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 140
    :cond_9
    return-void
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .registers 3
    .param p1, "other"    # I

    .prologue
    .line 149
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_6

    iget p1, p0, Ljava/util/OptionalInt;->value:I

    .end local p1    # "other":I
    :cond_6
    return p1
.end method

.method public orElseGet(Ljava/util/function/IntSupplier;)I
    .registers 3
    .param p1, "other"    # Ljava/util/function/IntSupplier;

    .prologue
    .line 163
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/OptionalInt;->value:I

    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    goto :goto_6
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TX;>;"
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_7

    .line 184
    iget v0, p0, Ljava/util/OptionalInt;->value:I

    return v0

    .line 186
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 245
    iget-boolean v0, p0, Ljava/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_18

    .line 246
    const-string/jumbo v0, "OptionalInt[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/OptionalInt;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_17
    return-object v0

    .line 247
    :cond_18
    const-string/jumbo v0, "OptionalInt.empty"

    goto :goto_17
.end method
