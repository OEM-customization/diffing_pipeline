.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM$AES_256;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    .line 1364
    const/16 v0, 0x20

    if-eq p1, v0, :cond_25

    .line 1365
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key size: "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1, p1}, vtable@72
    nop

    move-result-object v1

    const-string/jumbo v2, " bytes (must be 32)"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    .line 1365
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method