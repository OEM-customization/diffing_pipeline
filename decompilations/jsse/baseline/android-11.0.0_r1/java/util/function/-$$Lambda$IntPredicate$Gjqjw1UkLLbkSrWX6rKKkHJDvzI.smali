.class public final synthetic Ljava/util/function/-$$Lambda$IntPredicate$Gjqjw1UkLLbkSrWX6rKKkHJDvzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntPredicate;

.field public final synthetic blacklist f$1:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$IntPredicate$Gjqjw1UkLLbkSrWX6rKKkHJDvzI;->f$0:Ljava/util/function/IntPredicate;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$IntPredicate$Gjqjw1UkLLbkSrWX6rKKkHJDvzI;->f$1:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(I)Z
    .registers 4

    iget-object v0, p0, Ljava/util/function/-$$Lambda$IntPredicate$Gjqjw1UkLLbkSrWX6rKKkHJDvzI;->f$0:Ljava/util/function/IntPredicate;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$IntPredicate$Gjqjw1UkLLbkSrWX6rKKkHJDvzI;->f$1:Ljava/util/function/IntPredicate;

    invoke-static {v0, v1, p1}, Ljava/util/function/IntPredicate;->lambda$and$0(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
