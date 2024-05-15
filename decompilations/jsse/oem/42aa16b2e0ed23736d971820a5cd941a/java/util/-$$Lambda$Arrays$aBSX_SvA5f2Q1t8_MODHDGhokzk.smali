.class public final synthetic Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:[J

.field public final synthetic blacklist f$1:Ljava/util/function/IntToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>([JLjava/util/function/IntToLongFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;->f$0:[J

    iput-object p2, p0, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;->f$1:Ljava/util/function/IntToLongFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;->f$0:[J

    iget-object v1, p0, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;->f$1:Ljava/util/function/IntToLongFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$parallelSetAll$2([JLjava/util/function/IntToLongFunction;I)V

    return-void
.end method
