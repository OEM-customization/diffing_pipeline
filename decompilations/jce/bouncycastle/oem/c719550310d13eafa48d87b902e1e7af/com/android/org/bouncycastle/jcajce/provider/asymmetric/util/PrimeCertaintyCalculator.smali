.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;
.super Ljava/lang/Object;
.source "PrimeCertaintyCalculator.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getDefaultCertainty(I)I
    .registers 2
    .param p0, "keySizeInBits"    # I

    .prologue
    .line 19
    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 v0, 0x50

    :goto_6
    return v0

    :cond_7
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x60

    goto :goto_6
.end method
