.class public interface abstract Ljava/util/function/UnaryOperator;
.super Ljava/lang/Object;
.source "UnaryOperator.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function",
        "<TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Ljava/util/function/UnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/UnaryOperator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;->$INST$0:Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;

    .line 50
    return-object v0
.end method

.method public static synthetic lambda$-java_util_function_UnaryOperator_2074(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 50
    .local p0, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method
