.class final Lcom/android/org/conscrypt/EvpMdRef$SHA224;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/EvpMdRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHA224"
.end annotation


# static fields
.field static final EVP_MD:J

.field static final JCA_NAME:Ljava/lang/String; = "SHA-224"

.field static final OID:Ljava/lang/String; = "2.16.840.1.101.3.4.2.4"

.field static final SIZE_BYTES:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 127
    const-string/jumbo v0, "sha224"

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    .line 128
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    .line 124
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method