.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Std;
.super Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1068
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 1069
    return-void
.end method