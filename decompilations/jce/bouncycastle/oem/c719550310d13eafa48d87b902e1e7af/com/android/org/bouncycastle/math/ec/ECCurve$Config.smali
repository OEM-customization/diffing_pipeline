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
.field protected coord:I

.field protected endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field final synthetic this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "coord"    # I
    .param p3, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p4, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 43
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 44
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 45
    return-void
.end method


# virtual methods
.method public create()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_13
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 73
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-ne v0, v1, :cond_26

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "implementation returned current curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_26
    monitor-enter v0

    .line 81
    :try_start_27
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 83
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    iput-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_35

    monitor-exit v0

    .line 86
    return-object v0

    .line 79
    :catchall_35
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCoordinateSystem(I)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "coord"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 50
    return-object p0
.end method

.method public setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "endomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 56
    return-object p0
.end method

.method public setMultiplier(Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 2
    .param p1, "multiplier"    # Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 62
    return-object p0
.end method
