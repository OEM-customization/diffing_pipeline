.class public Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .param p1, "userKeyingMaterial"    # [B

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    .line 15
    return-void
.end method


# virtual methods
.method public getUserKeyingMaterial()[B
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method