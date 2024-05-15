.class public final synthetic Ljava/util/function/-$$Lambda$LongPredicate$DaAkBBvcfHLiOGrLHthRI1hFBUQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongPredicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongPredicate;

.field public final synthetic blacklist f$1:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$LongPredicate$DaAkBBvcfHLiOGrLHthRI1hFBUQ;->f$0:Ljava/util/function/LongPredicate;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$LongPredicate$DaAkBBvcfHLiOGrLHthRI1hFBUQ;->f$1:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(J)Z
    .registers 5

    iget-object v0, p0, Ljava/util/function/-$$Lambda$LongPredicate$DaAkBBvcfHLiOGrLHthRI1hFBUQ;->f$0:Ljava/util/function/LongPredicate;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$LongPredicate$DaAkBBvcfHLiOGrLHthRI1hFBUQ;->f$1:Ljava/util/function/LongPredicate;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/LongPredicate;->lambda$and$0(Ljava/util/function/LongPredicate;Ljava/util/function/LongPredicate;J)Z

    move-result p1

    return p1
.end method
