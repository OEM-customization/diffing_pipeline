.class synthetic Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;
.super Ljava/lang/Object;
.source "OpenSSLEvpCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEvpCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

.field static final synthetic blacklist $SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 50
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    .line 38
    :goto_21
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    :try_start_2a
    sget-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    :try_start_34
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEvpCipherAES$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLCipher$Mode:[I

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    return-void
.end method
