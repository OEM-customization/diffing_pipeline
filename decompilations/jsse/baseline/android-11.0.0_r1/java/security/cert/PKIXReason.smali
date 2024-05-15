.class public final enum Ljava/security/cert/PKIXReason;
.super Ljava/lang/Enum;
.source "PKIXReason.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorException$Reason;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/security/cert/PKIXReason;",
        ">;",
        "Ljava/security/cert/CertPathValidatorException$Reason;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api INVALID_NAME:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api INVALID_POLICY:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api NAME_CHAINING:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api NOT_CA_CERT:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist core-platform-api test-api UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 40
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NAME_CHAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    .line 45
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_KEY_USAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    .line 50
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_POLICY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    .line 55
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NO_TRUST_ANCHOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    .line 61
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "UNRECOGNIZED_CRIT_EXT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 66
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NOT_CA_CERT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    .line 71
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "PATH_TOO_LONG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    .line 76
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "INVALID_NAME"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    .line 36
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/security/cert/PKIXReason;

    sget-object v10, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    aput-object v10, v1, v2

    sget-object v2, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v3

    sget-object v2, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v4

    sget-object v2, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v5

    sget-object v2, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v6

    sget-object v2, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v7

    sget-object v2, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Ljava/security/cert/PKIXReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXReason;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/security/cert/PKIXReason;
    .registers 1

    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    invoke-virtual {v0}, [Ljava/security/cert/PKIXReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/PKIXReason;

    return-object v0
.end method
