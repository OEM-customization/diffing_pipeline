.class public final Lcom/android/org/conscrypt/OpenSSLSignature$MD5RSA;
.super Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MD5RSA"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 293
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/OpenSSLSignature$RSAPKCS1Padding;-><init>(J)V

    .line 294
    return-void
.end method