.class public final Lcom/android/org/conscrypt/OpenSSLMac$HmacSHA1;
.super Lcom/android/org/conscrypt/OpenSSLMac;
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
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 168
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JILcom/android/org/conscrypt/OpenSSLMac;)V

    .line 169
    return-void
.end method
