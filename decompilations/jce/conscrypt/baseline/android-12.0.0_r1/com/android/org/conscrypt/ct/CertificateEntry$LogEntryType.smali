.class public final enum Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
.super Ljava/lang/Enum;
.source "CertificateEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/CertificateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum blacklist PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum blacklist X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 50
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string v1, "X509_ENTRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 51
    new-instance v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string v3, "PRECERT_ENTRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 49
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method
