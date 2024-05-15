.class public final synthetic Ljava/util/function/-$$Lambda$BiPredicate$-ZiDuSsQaw4dQsCoX8HU1cLSeS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$BiPredicate$-ZiDuSsQaw4dQsCoX8HU1cLSeS8;->f$0:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljava/util/function/-$$Lambda$BiPredicate$-ZiDuSsQaw4dQsCoX8HU1cLSeS8;->f$0:Ljava/util/function/BiPredicate;

    invoke-static {v0, p1, p2}, Ljava/util/function/BiPredicate;->lambda$negate$1(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
