.class public final synthetic Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:[Ljava/lang/Object;

.field public final synthetic blacklist f$1:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;->f$0:[Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;->f$1:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;->f$0:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;->f$1:Ljava/util/function/IntFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$parallelSetAll$0([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V

    return-void
.end method
