.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 701
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist core-platform-api test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 706
    const-string v0, "AES IV"

    return-object v0
.end method
