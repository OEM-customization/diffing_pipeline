.class final enum Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
.super Ljava/lang/Enum;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/OpenSSLCipher$Padding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum blacklist NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum blacklist PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

.field public static final enum blacklist PKCS7PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 83
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "NOPADDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 84
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v3, "PKCS5PADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 85
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    const-string v5, "PKCS7PADDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 82
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 89
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    .line 90
    .local v0, "p":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v0, v1, :cond_11

    .line 91
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v1

    .line 93
    :cond_11
    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 1

    .line 82
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method
