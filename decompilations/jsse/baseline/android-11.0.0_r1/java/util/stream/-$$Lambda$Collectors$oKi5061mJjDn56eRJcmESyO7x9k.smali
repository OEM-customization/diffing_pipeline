.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$oKi5061mJjDn56eRJcmESyO7x9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$oKi5061mJjDn56eRJcmESyO7x9k;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$oKi5061mJjDn56eRJcmESyO7x9k;->f$0:Ljava/util/function/Function;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->lambda$groupingByConcurrent$53(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    return-object p1
.end method
