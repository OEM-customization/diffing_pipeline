.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Blowfish$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const-string/jumbo v0, "Blowfish IV"

    return-object v0
.end method