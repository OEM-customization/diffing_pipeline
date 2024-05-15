.class public Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESEDE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE$CBC;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I = null

.field private static final DES_BLOCK_SIZE:I = 0x8


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@15
    nop

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 3
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 853
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 854
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .registers 4
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 893
    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x18

    if-eq p1, v0, :cond_11

    .line 894
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key size must be 128 or 192 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_11
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 5
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 900
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_22

    .line 901
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported mode "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@7
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_22
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 5
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;->-getcom-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues()[I

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@15
    nop

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 912
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported padding "

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    .line 913
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@7
    nop

    move-result-object v2

    .line 912
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :pswitch_2b
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 907
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method getBaseCipherName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 876
    const-string/jumbo v0, "DESede"

    return-object v0
.end method

.method getCipherBlockSize()I
    .registers 2

    .prologue
    .line 919
    const/16 v0, 0x8

    return v0
.end method

.method getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .registers 7
    .param p1, "keySize"    # I
    .param p2, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .prologue
    .line 882
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2a

    .line 883
    const-string/jumbo v0, "des-ede"

    .line 888
    .local v0, "baseCipherName":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v0}, vtable@77
    nop

    move-result-object v1

    const-string/jumbo v2, "-"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {p2}, vtable@7
    nop

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@59
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@77
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    return-object v1

    .line 885
    .end local v0    # "baseCipherName":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v0, "des-ede3"

    .restart local v0    # "baseCipherName":Ljava/lang/String;
    goto :goto_7
.end method
