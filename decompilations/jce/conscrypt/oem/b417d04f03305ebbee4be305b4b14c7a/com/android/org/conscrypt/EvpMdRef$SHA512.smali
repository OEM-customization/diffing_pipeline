.class final Lcom/android/org/conscrypt/EvpMdRef$SHA512;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/EvpMdRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHA512"
.end annotation


# static fields
.field static final blacklist EVP_MD:J

.field static final blacklist JCA_NAME:Ljava/lang/String; = "SHA-512"

.field static final blacklist OID:Ljava/lang/String; = "2.16.840.1.101.3.4.2.3"

.field static final blacklist SIZE_BYTES:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 152
    const-string v0, "sha512"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    .line 153
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method