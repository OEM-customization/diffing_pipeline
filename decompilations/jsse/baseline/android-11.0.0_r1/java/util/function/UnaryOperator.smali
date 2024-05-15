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
        "Ljava/util/function/Function<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api identity()Ljava/util/function/UnaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;->INSTANCE:Ljava/util/function/-$$Lambda$UnaryOperator$p7kKvUH5OpW1KFw_KNJNdNw8HUE;

    return-object v0
.end method

.method public static synthetic blacklist lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "t"    # Ljava/lang/Object;

    .line 50
    return-object p0
.end method
