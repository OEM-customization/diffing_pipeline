.class public final Lcom/android/org/conscrypt/OpenSSLSignature$SHA256ECDSA;
.super Lcom/android/org/conscrypt/OpenSSLSignature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256ECDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 331
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;->EC:Lcom/android/org/conscrypt/OpenSSLSignature$EngineType;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLSignature;-><init>(JLcom/android/org/conscrypt/OpenSSLSignature$EngineType;Lcom/android/org/conscrypt/OpenSSLSignature;)V

    .line 332
    return-void
.end method