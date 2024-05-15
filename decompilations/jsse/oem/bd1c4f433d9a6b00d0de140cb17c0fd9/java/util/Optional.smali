.class public final Ljava/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/Optional;

    invoke-direct {v0}, Ljava/util/Optional;-><init>()V

    sput-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public static empty()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    .line 82
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Optional;

    invoke-direct {v0, p0}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 305
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_4

    .line 306
    const/4 v1, 0x1

    return v1

    .line 309
    :cond_4
    instance-of v1, p1, Ljava/util/Optional;

    if-nez v1, :cond_a

    .line 310
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 313
    check-cast v0, Ljava/util/Optional;

    .line 314
    .local v0, "other":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Ljava/util/function/Predicate;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_a

    .line 172
    return-object p0

    .line 174
    :cond_a
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .end local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_12
    return-object p0

    .restart local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_12
.end method

.method public flatMap(Ljava/util/function/Function;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;",
            "Ljava/util/Optional",
            "<TU;>;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Ljava/util/Optional<TU;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    .line 235
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 237
    :cond_e
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 131
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_d
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 325
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    :cond_9
    return-void
.end method

.method public isPresent()Z
    .registers 2

    .prologue
    .line 142
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public map(Ljava/util/function/Function;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_e

    .line 209
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 211
    :cond_e
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .end local p1    # "other":Ljava/lang/Object;, "TT;"
    :cond_6
    return-object p1
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    :goto_6
    return-object v0

    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 284
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 286
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 341
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 342
    const-string/jumbo v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_13
    return-object v0

    .line 343
    :cond_14
    const-string/jumbo v0, "Optional.empty"

    goto :goto_13
.end method
