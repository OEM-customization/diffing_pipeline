.class public final synthetic Ljava/util/stream/-$$Lambda$DistinctOps$1$y8chmSlaKpIKb_VPPBaXdCNT51c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$DistinctOps$1$y8chmSlaKpIKb_VPPBaXdCNT51c;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$DistinctOps$1$y8chmSlaKpIKb_VPPBaXdCNT51c;->f$1:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$DistinctOps$1$y8chmSlaKpIKb_VPPBaXdCNT51c;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$DistinctOps$1$y8chmSlaKpIKb_VPPBaXdCNT51c;->f$1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Ljava/util/stream/DistinctOps$1;->lambda$opEvaluateParallel$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method
