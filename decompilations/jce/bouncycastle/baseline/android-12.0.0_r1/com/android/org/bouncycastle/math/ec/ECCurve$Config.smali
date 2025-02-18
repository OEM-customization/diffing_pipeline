.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "coord"    # I
    .param p3, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p4, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 48
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 50
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 51
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist create()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 80
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_26

    .line 86
    monitor-enter v0

    .line 88
    :try_start_15
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 89
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 91
    monitor-exit v0

    .line 93
    return-object v0

    .line 91
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1

    .line 82
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "implementation returned current curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCoordinateSystem(I)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "coord"    # I

    .line 56
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 57
    return-object p0
.end method

.method public blacklist setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 63
    return-object p0
.end method

.method public blacklist setMultiplier(Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 68
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 69
    return-object p0
.end method
