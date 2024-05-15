.class final enum Lcom/android/org/conscrypt/SSLUtils$SessionType;
.super Ljava/lang/Enum;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/SSLUtils$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 65
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string/jumbo v1, "OPEN_SSL"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    .line 68
    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 70
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string/jumbo v1, "OPEN_SSL_WITH_OCSP"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    .line 73
    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 75
    new-instance v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    const-string/jumbo v1, "OPEN_SSL_WITH_TLS_SCT"

    invoke-direct {v0, v1, v3, v5}, Lcom/android/org/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    .line 78
    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    .line 64
    new-array v0, v5, [Lcom/android/org/conscrypt/SSLUtils$SessionType;

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->$VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    .line 82
    return-void
.end method

.method static final isSupportedType(I)Z
    .registers 3
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 85
    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v1, v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v1, :cond_d

    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v1, v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-ne p0, v1, :cond_e

    :cond_d
    :goto_d
    return v0

    .line 86
    :cond_e
    sget-object v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lcom/android/org/conscrypt/SSLUtils$SessionType;

    iget v1, v1, Lcom/android/org/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/SSLUtils$SessionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/SSLUtils$SessionType;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/org/conscrypt/SSLUtils$SessionType;->$VALUES:[Lcom/android/org/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method
