.class public final enum Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
.super Ljava/lang/Enum;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSP$RevocationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum blacklist GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum blacklist REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field public static final enum blacklist UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 342
    new-instance v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string v1, "GOOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    new-instance v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string v3, "REVOKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    new-instance v3, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 342
    const-class v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public static blacklist values()[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .registers 1

    .line 342
    sget-object v0, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->$VALUES:[Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-virtual {v0}, [Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method
