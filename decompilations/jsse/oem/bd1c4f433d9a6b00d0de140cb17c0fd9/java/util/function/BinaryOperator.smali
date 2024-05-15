.class public interface abstract Ljava/util/function/BinaryOperator;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction",
        "<TT;TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$-java_util_function_BinaryOperator_2544(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 59
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_7

    .end local p1    # "a":Ljava/lang/Object;, "TT;"
    :goto_6
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TT;"
    :cond_7
    move-object p1, p2

    goto :goto_6
.end method

.method public static synthetic lambda$-java_util_function_BinaryOperator_3246(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 74
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_7

    .end local p1    # "a":Ljava/lang/Object;, "TT;"
    :goto_6
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TT;"
    :cond_7
    move-object p1, p2

    goto :goto_6
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/function/-$Lambda$mIdd76aENPtnGc8CGzUjiSYitJQ;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
