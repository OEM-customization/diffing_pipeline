.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field blacklist params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor blacklist <init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .registers 3
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
