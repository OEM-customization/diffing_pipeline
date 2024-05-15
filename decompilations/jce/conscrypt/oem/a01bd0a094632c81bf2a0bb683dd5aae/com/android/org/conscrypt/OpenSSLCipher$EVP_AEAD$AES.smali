.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 2
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 1213
    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .registers 5
    .param p1, "keyLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1217
    sparse-switch p1, :sswitch_data_26

    .line 1222
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1223
    const-string/jumbo v2, " bytes (must be 16 or 32)"

    .line 1222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :sswitch_24
    return-void

    .line 1217
    nop

    :sswitch_data_26
    .sparse-switch
        0x10 -> :sswitch_24
        0x20 -> :sswitch_24
    .end sparse-switch
.end method

.method getBaseCipherName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1229
    const-string/jumbo v0, "AES"

    return-object v0
.end method

.method getCipherBlockSize()I
    .registers 2

    .prologue
    .line 1234
    const/16 v0, 0x10

    return v0
.end method

.method getOutputSizeForUpdate(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method
