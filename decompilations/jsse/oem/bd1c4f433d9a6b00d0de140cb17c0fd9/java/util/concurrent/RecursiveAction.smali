.class public abstract Ljava/util/concurrent/RecursiveAction;
.super Ljava/util/concurrent/ForkJoinTask;
.source "RecursiveAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990753ceL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract compute()V
.end method

.method protected final exec()Z
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->compute()V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/RecursiveAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected final setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "mustBeNull"    # Ljava/lang/Void;

    .prologue
    .line 183
    return-void
.end method
