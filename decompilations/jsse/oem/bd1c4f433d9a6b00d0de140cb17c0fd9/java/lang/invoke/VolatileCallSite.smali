.class public Ljava/lang/invoke/VolatileCallSite;
.super Ljava/lang/invoke/CallSite;
.source "VolatileCallSite.java"


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/invoke/MethodType;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final dynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->getTargetVolatile()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/invoke/VolatileCallSite;->getTargetVolatile()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/VolatileCallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/invoke/VolatileCallSite;->setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V

    .line 96
    return-void
.end method
