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
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum blacklist CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

.field public static final enum blacklist TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 43
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v1, "CERTIFICATE_TIMESTAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 44
    new-instance v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    const-string v3, "TREE_HASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->TREE_HASH:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    .line 42
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    .registers 1

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    return-object v0
.end method