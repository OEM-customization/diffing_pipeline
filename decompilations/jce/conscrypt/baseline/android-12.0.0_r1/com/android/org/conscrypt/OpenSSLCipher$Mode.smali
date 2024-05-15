.class final enum Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
.super Ljava/lang/Enum;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/OpenSSLCipher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist GCM_SIV:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist NONE:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum blacklist POLY1305:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 56
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->NONE:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 57
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v3, "CBC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 58
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v5, "CTR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 59
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v7, "ECB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 60
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v9, "GCM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 61
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v11, "GCM_SIV"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 62
    new-instance v11, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string v13, "POLY1305"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 55
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .registers 3
    .param p0, "modeString"    # Ljava/lang/String;

    .line 66
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v0, "GCM-SIV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0

    .line 71
    :cond_11
    const-string v0, "GCM_SIV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 74
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v0

    return-object v0

    .line 72
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method
