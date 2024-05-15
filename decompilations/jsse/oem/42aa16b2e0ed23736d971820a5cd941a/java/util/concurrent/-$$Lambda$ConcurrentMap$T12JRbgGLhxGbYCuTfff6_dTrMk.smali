.class public final synthetic Ljava/util/concurrent/-$$Lambda$ConcurrentMap$T12JRbgGLhxGbYCuTfff6_dTrMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/ConcurrentMap;

.field public final synthetic blacklist f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/-$$Lambda$ConcurrentMap$T12JRbgGLhxGbYCuTfff6_dTrMk;->f$0:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Ljava/util/concurrent/-$$Lambda$ConcurrentMap$T12JRbgGLhxGbYCuTfff6_dTrMk;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljava/util/concurrent/-$$Lambda$ConcurrentMap$T12JRbgGLhxGbYCuTfff6_dTrMk;->f$0:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava/util/concurrent/-$$Lambda$ConcurrentMap$T12JRbgGLhxGbYCuTfff6_dTrMk;->f$1:Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->lambda$replaceAll$0(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
