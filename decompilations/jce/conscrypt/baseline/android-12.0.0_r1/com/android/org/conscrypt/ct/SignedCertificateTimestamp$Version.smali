.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

.field public static final enum blacklist V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    .line 35
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-object v0
.end method
