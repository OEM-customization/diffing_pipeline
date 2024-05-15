.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string/jumbo v1, "CERTIFICATE_TIMESTAMP"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 38
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string/jumbo v1, "TREE_HASH"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method
