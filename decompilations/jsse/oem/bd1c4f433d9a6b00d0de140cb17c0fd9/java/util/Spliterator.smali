.class public interface abstract Ljava/util/Spliterator;
.super Ljava/lang/Object;
.source "Spliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterator$OfDouble;,
        Ljava/util/Spliterator$OfInt;,
        Ljava/util/Spliterator$OfLong;,
        Ljava/util/Spliterator$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONCURRENT:I = 0x1000

.field public static final DISTINCT:I = 0x1

.field public static final IMMUTABLE:I = 0x400

.field public static final NONNULL:I = 0x100

.field public static final ORDERED:I = 0x10

.field public static final SIZED:I = 0x40

.field public static final SORTED:I = 0x4

.field public static final SUBSIZED:I = 0x4000


# virtual methods
.method public abstract characteristics()I
.end method

.method public abstract estimateSize()J
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getExactSizeIfKnown()J
    .registers 3

    .prologue
    .line 408
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    goto :goto_a
.end method

.method public hasCharacteristics(I)Z
    .registers 3
    .param p1, "characteristics"    # I

    .prologue
    .line 447
    .local p0, "this":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public abstract tryAdvance(Ljava/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract trySplit()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation
.end method
