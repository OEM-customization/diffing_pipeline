.class public final Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;
.super Lcom/android/org/conscrypt/OpenSSLMac$Hmac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA1"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 204
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLMac$Hmac;-><init>(JI)V

    .line 205
    return-void
.end method