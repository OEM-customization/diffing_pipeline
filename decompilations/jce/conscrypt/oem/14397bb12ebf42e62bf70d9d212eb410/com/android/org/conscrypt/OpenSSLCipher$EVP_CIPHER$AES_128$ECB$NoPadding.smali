.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128$ECB$NoPadding;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128$ECB;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128$ECB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 775
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128$ECB;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 776
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method