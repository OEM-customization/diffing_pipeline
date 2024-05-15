.class public Ljava/lang/invoke/ConstantCallSite;
.super Ljava/lang/invoke/CallSite;
.source "ConstantCallSite.java"


# instance fields
.field private final greylist-max-o isFrozen:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    .line 45
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .registers 4
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "createTargetHook"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    .line 83
    return-void
.end method


# virtual methods
.method public final whitelist test-api dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 118
    invoke-virtual {p0}, Ljava/lang/invoke/ConstantCallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getTarget()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 95
    iget-boolean v0, p0, Ljava/lang/invoke/ConstantCallSite;->isFrozen:Z

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p0, Ljava/lang/invoke/ConstantCallSite;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0

    .line 95
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api setTarget(Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "ignore"    # Ljava/lang/invoke/MethodHandle;

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
