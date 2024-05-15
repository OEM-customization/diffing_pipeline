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

.field public static final enum whitelist test-api INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api INVALID_NAME:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api INVALID_POLICY:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NAME_CHAINING:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NOT_CA_CERT:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

.field public static final enum whitelist test-api UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 40
    new-instance v0, Ljava/security/cert/PKIXReason;

    const-string v1, "NAME_CHAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    .line 45
    new-instance v1, Ljava/security/cert/PKIXReason;

    const-string v3, "INVALID_KEY_USAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    .line 50
    new-instance v3, Ljava/security/cert/PKIXReason;

    const-string v5, "INVALID_POLICY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    .line 55
    new-instance v5, Ljava/security/cert/PKIXReason;

    const-string v7, "NO_TRUST_ANCHOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/security/cert/PKIXReason;->NO_TRUST_ANCHOR:Ljava/security/cert/PKIXReason;

    .line 61
    new-instance v7, Ljava/security/cert/PKIXReason;

    const-string v9, "UNRECOGNIZED_CRIT_EXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 66
    new-instance v9, Ljava/security/cert/PKIXReason;

    const-string v11, "NOT_CA_CERT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    .line 71
    new-instance v11, Ljava/security/cert/PKIXReason;

    const-string v13, "PATH_TOO_LONG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    .line 76
    new-instance v13, Ljava/security/cert/PKIXReason;

    const-string v15, "INVALID_NAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/security/cert/PKIXReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    .line 36
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/security/cert/PKIXReason;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/security/cert/PKIXReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Ljava/security/cert/PKIXReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXReason;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/security/cert/PKIXReason;
    .registers 1

    .line 36
    sget-object v0, Ljava/security/cert/PKIXReason;->$VALUES:[Ljava/security/cert/PKIXReason;

    invoke-virtual {v0}, [Ljava/security/cert/PKIXReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/PKIXReason;

    return-object v0
.end method
