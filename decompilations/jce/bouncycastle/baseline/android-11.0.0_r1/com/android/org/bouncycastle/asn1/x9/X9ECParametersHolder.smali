.class public abstract Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private blacklist params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public declared-synchronized blacklist getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_b

    .line 16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 19
    .end local p0    # "this":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 13
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
