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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLCipher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string/jumbo v1, "CBC"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string/jumbo v1, "CTR"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string/jumbo v1, "ECB"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 63
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    const-string/jumbo v1, "GCM"

    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method
