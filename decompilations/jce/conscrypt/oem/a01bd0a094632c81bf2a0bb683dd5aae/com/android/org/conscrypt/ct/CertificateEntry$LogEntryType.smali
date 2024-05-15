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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

.field public static final enum X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string/jumbo v1, "X509_ENTRY"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 48
    new-instance v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    const-string/jumbo v1, "PRECERT_ENTRY"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;->$VALUES:[Lcom/android/org/conscrypt/ct/CertificateEntry$LogEntryType;

    return-object v0
.end method
