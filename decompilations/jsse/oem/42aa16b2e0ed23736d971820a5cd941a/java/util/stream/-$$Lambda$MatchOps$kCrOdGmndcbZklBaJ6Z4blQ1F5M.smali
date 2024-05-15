.class public final synthetic Ljava/util/stream/-$$Lambda$MatchOps$kCrOdGmndcbZklBaJ6Z4blQ1F5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/MatchOps$MatchKind;

.field public final synthetic blacklist f$1:Ljava/util/function/LongPredicate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$MatchOps$kCrOdGmndcbZklBaJ6Z4blQ1F5M;->f$0:Ljava/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$MatchOps$kCrOdGmndcbZklBaJ6Z4blQ1F5M;->f$1:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$MatchOps$kCrOdGmndcbZklBaJ6Z4blQ1F5M;->f$0:Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$MatchOps$kCrOdGmndcbZklBaJ6Z4blQ1F5M;->f$1:Ljava/util/function/LongPredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->lambda$makeLong$2(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
