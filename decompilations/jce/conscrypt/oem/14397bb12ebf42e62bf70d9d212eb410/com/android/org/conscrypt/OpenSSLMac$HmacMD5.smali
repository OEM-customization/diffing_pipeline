.class public final Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacMD5"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 162
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    sget v2, Lcom/android/org/conscrypt/EvpMdRef$MD5;->SIZE_BYTES:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JILcom/android/org/conscrypt/OpenSSLMac;)V

    .line 163
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method