.class final enum Lsun/security/provider/certpath/RevocationChecker$Mode;
.super Ljava/lang/Enum;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/security/provider/certpath/RevocationChecker$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum blacklist ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum blacklist ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum blacklist PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field public static final enum blacklist PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 75
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string v1, "PREFER_OCSP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string v1, "PREFER_CRLS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string v1, "ONLY_CRLS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    const-string v1, "ONLY_OCSP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lsun/security/provider/certpath/RevocationChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    const/4 v1, 0x4

    new-array v1, v1, [Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v6, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v6, v1, v2

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v2, v1, v3

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/security/provider/certpath/RevocationChecker$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-object v0
.end method

.method public static blacklist values()[Lsun/security/provider/certpath/RevocationChecker$Mode;
    .registers 1

    .line 75
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->$VALUES:[Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v0}, [Lsun/security/provider/certpath/RevocationChecker$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/provider/certpath/RevocationChecker$Mode;

    return-object v0
.end method
