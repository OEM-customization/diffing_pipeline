.class public final synthetic Ljava/util/function/-$$Lambda$IntPredicate$6LuiLiTSEVs3MpquRl2gnnnEIxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$IntPredicate$6LuiLiTSEVs3MpquRl2gnnnEIxg;->f$0:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(I)Z
    .registers 3

    iget-object v0, p0, Ljava/util/function/-$$Lambda$IntPredicate$6LuiLiTSEVs3MpquRl2gnnnEIxg;->f$0:Ljava/util/function/IntPredicate;

    invoke-static {v0, p1}, Ljava/util/function/IntPredicate;->lambda$negate$1(Ljava/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
