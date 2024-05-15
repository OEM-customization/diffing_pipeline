.class final Ljava/util/concurrent/ForkJoinPool$EmptyTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x6b295cc9a986fd4fL


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 733
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    const/high16 v0, -0x10000000

    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->status:I

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api exec()Z
    .registers 2

    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 731
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getRawResult()Ljava/lang/Void;
    .registers 2

    .line 734
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api setRawResult(Ljava/lang/Object;)V
    .registers 2

    .line 731
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final greylist-max-o setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "x"    # Ljava/lang/Void;

    .line 735
    return-void
.end method
