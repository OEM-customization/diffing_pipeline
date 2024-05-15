.class public Ljava/lang/invoke/MutableCallSite;
.super Ljava/lang/invoke/CallSite;
.source "MutableCallSite.java"


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/invoke/MethodType;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/invoke/MutableCallSite;->makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljava/lang/invoke/MutableCallSite;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public setTarget(Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 152
    iget-object v0, p0, Ljava/lang/invoke/MutableCallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MutableCallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MutableCallSite;->setTargetNormal(Ljava/lang/invoke/MethodHandle;)V

    .line 154
    return-void
.end method
